Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3D42236FA
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 01:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779930754; cv=none; b=MdmjNaToYpRk6A39fjsyWv48ejuC3h/pCZJtZo3iSTGtBQdVqfQsFlKSwKz5u737g3WKkscYvlAN85ku1/ECC27gW0+SfBswZpnvVNS0kL3bZh3VL+VP2Fqqyh82h//FywxoFqlweugphYoPOfryP+9e3I2iQ/rgIZHoaDZw744=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779930754; c=relaxed/simple;
	bh=JSQ7s+I0+7SoG9BBHukh8gCqo13A1aUqiM1dfN6Ozj8=;
	h=To:Subject:From:Message-Id:Date; b=WFen4uJNyCL+bws0WmtYjmV717Dik2XMRVkfTMyUC5NciyGvNsp3oxtDZqNMMvJOeR1/8ii6XTqcWVXqVMwUtdX1Uclzghn6ap1AKfTbrjFXImouJAN6r3uaTgMzWD+gpbi1eLHvmHr5la2xaRqus5/c5+dljcQQ0dvMzMPjXIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mhUA3MgX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mhUA3MgX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB1A0C19425
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 01:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779930753;
	bh=JSQ7s+I0+7SoG9BBHukh8gCqo13A1aUqiM1dfN6Ozj8=;
	h=To:Subject:From:Date:From;
	b=mhUA3MgXGIruUx0+TJsxyRnT0osCV4gyjm/AjzpoV/QXjF3VYhTtuuHx7zC9RgWt8
	 k8TFwrmQTGwrnkMFJTinkVYkYN5Hlq4qejWHTaceeBybqeeGB5JRUJ909XIoYZcCHS
	 f9BAiZI8t02BIv89zVcJhJsutVGobNkYGU6DLKHFrDiGUKeriOYLKxHtKAkEhtZWgr
	 J883bmmGH0iEloqLayTY3mMDVa64modfD822rQiD3VDKaRvyLWXbrq57rSNHq0Iqrn
	 TD5b+HsknJllARr774HA4M58EF3aqhyUJuHt0FwsBV5yVVC/JnL5iMOClD1Y+PeUbm
	 J8T4L8APcsE9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B516DCD5BC9
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 01:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177993075370.26590.14261502410805925104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a245068d9919bb5436f5d3dc8f13c8a8c9223b195ec3550c88a3d2155db2ac7b
Date: Thu, 28 May 2026 01:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779930753
