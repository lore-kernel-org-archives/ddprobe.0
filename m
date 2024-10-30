Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD471D0F74
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730315154; cv=none; b=h3IgJS76/hnmaqKWWX3cXMYulsyZG7nCT3SfiwyEo05x9kj0JJBPI6g8sMtAG241XD0kk2BHgrdh7cu2YPy8prqCvUqfMQHRLO6eTzn5Zyh6zoai/StooIakrlX8XYNwicjEvmQIzl497xoCFvnziHxaSIpb848NFqjCsS97DPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730315154; c=relaxed/simple;
	bh=IogyHbV0HxNed83BQD/qFur/24KVVswOekk104afRDw=;
	h=To:Subject:From:Message-Id:Date; b=IqLk/B/jL1U6VqT38QXiXFm4NbzZL13V9voZifhsS1zqGopXeY2eTuP1Fi4cb81/SDijNXwOXVAfRaEjVH5cYAKRsFcp9ZRInNhu4ZBOmi3GXMuQUrePib5X72et5wgZtq77R6pXhiVsJt+KgG/sNYzqx15M6ezqQVs42KvA1GU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MKjqtlDs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKjqtlDs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC548C4CECE
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730315153;
	bh=IogyHbV0HxNed83BQD/qFur/24KVVswOekk104afRDw=;
	h=To:Subject:From:Date:From;
	b=MKjqtlDs6c7jgq/rpFMOtMEl3WLjIadVNvApJH7txL8WY+wK0l/MluQMC96LdZ+sP
	 ZZ1Ve2RuyDK7TH2gFh4CwuXOCJ8w0HnEgQZW+tp4Af94LaKmnTeMzo8uy6I2kdtach
	 Im57UIs9pvGNeuMFpquxJkNE0qTYP6K8h3WDg/hYDF07RenLN4RATRjpefo9gBrwqW
	 MVqyalBPqOKKJYr5wFzJNVMd8KBZREPpYyPBYitCUsp7sOXXTO5R9BS7/lKJo4ixaI
	 ZtxxSRQHNW/Q9bMPeKuEzjO02TQ0oWVh5NSPdIaAm0U1CIV//2TsQbcUetPXdZR/c1
	 /+s6acU9c1F2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B2CD6B6C3
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173031515360.1018.13840076921240386670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc8d99e26b09f737e0605b8641ba903cacc8fbb594672577485e3d704f3ef0d4
Date: Wed, 30 Oct 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730315153
