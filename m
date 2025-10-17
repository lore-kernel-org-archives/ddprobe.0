Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199C819D082
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760668794; cv=none; b=VkPNb89GcmHF75DVq3jDFoQwdm+jbLHOfBjNiSMM0EC8xmHM3JB8pIqN8KVBoxpKz8qGiUDybK92BxN/YvoNOn0djDGB8WHw4urACppbtpVLxFZ8zdE+qwdM6vhk7BmvhJXNxFM7//ooCE0aJ0nQmpFeh2trsxeluBJ5LfUr2xQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760668794; c=relaxed/simple;
	bh=cEUExetH1fESl/8o/exO66CszxfMDjBW1QQ7VU6G4+Q=;
	h=To:Subject:From:Message-Id:Date; b=uc2nrsw9aojE6SIorbHPOwTEKfINhqLxkulHlM1JVPQb4VhNNF80ItSN8kp5fYZbmSQpD3VlOglrzFRwkeTxSceIsNZ+PQsdxkDJ3ca3uaSLEFIqe1tjBN7ED6DDDFe1QvJAgNIEssqx8nxV96T1Iya7546+SjX0j010TuviT54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IyNWUoBn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IyNWUoBn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F58C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760668793;
	bh=cEUExetH1fESl/8o/exO66CszxfMDjBW1QQ7VU6G4+Q=;
	h=To:Subject:From:Date:From;
	b=IyNWUoBnHgAB70a6ukEHpJDRcR4UCgVTPkIsZ+1E33vlCThGxfVbd5ZwMmPFbt75W
	 mqTsxVIwgk5nM/zxYWn0fIPOzx0bi4W/uIsehjKWMUiOadUWLWRVzSzpuOfZWGirZg
	 gzsBD3EAS4eDEmfglJ175KYKiaENiCgyE37yvJXT0rCkZ1vFiHnqMoImnRzKbwx1fw
	 7PEslXqj3fm/9YFsTEc0/Sc5K3kHX7nxG2+w6VIOUO1tYn2sZehmQjPAyI04Jm/bOV
	 I+cZU3NQtMLCjB+xzvQvNM3Omr15WrZswhuhpLWmPNAkM0Ka/B8HusHPHih/JF0JoA
	 GOUtHBj2G7cnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA6CCCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176066879357.5808.317646423175184373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46ff870c562266b5f13c071edd8bc158b412b5267f35e1d18a60f0f76f7f89fe
Date: Fri, 17 Oct 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760668793
