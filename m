Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EEF9200110
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751051995; cv=none; b=n4ef5mSCATW69z1IWxrYjTiCve6pY3dtlm5yRca74IQvN70egEHRT44/JqzD/LesWuAIjJyLhIyexEF5af8tyKdnCGPtxBMUBjlE+NiSJJCL34emrkxpAiLvg/0zfVXNWhAkgdfmdjBogXOCFWMC3N8gxphebUaj3hgVzQ+Spug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751051995; c=relaxed/simple;
	bh=Ffjm1v+MbRoIxIJEvN/5X+Wwd3EC7+lgfnh1c+F2cl8=;
	h=To:Subject:From:Message-Id:Date; b=Dp1GLUsRCSa0LOZq4WOnHq+3qziPasjZSs8GRUs+ayEfS91N3ovLBos11aK0qyUFCiOmXlhsF0dqfZATl6Qn8r0L6zXYh+wTaJtDCAjTOJbFjG3cHzpyDSDmDmC59gNhdG/bQw9d9lu3T19N7aapjwt4eRJb03+R55ZJlBgEGw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UAHN207i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UAHN207i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3577C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751051993;
	bh=Ffjm1v+MbRoIxIJEvN/5X+Wwd3EC7+lgfnh1c+F2cl8=;
	h=To:Subject:From:Date:From;
	b=UAHN207iEVE0zkVNMELsYK17nTILAdCl6uoTamfewzcZqTBi7kY6iuzB9RmF0xTfw
	 GvkKq3wyDGVpc9SgGuyiFfBuYuWOKiXrjacz/7TC8FhDHR2VcP2gbH/eMzHNWreXuP
	 ovuNTCv8dFcNP35wZldfQUGxLFjKHgsO+JWIKjzOgd4oZ6jnoLERejq+G0qoiFftfB
	 /5G+0s1KqEPS2uethDk35jeWLUSu+3ZgUFdxl/Ny0AGFfTJlec3lueXeSF9V1kYNFG
	 E+silvjy8+znGnGjYy/sbl9gDYhuImkurt6ofR5NdN4FK+YQq2btu3w3qkdWWC+vne
	 Drof1SAlo9BRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92752C7EE2A
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175105199358.1274.16115109196431035788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23283312c56999f3e6b0b92a796f906fdd12f0bb5aa064094dd340c5bde028dc
Date: Fri, 27 Jun 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751051993
