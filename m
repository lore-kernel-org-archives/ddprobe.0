Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C2334BA29
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759232394; cv=none; b=PMuiS35ROZFeekfawSykdsNIw2xWajqzFIIvL0CXjVPB9IK897zEJ59Vf6hyymD3xXVoNBGcpBdBU6KLlQ0Hd1ezc7m1Ih6uWF6wANldneJDLz/+QYf7NYmbLgvbvqFvGlE2sl+4OzwH83/SYeAR4jfBskf3GLiPn5lz5IdCxi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759232394; c=relaxed/simple;
	bh=uoW0JspUFX/pFQOUj8AaAmDuPR9iaKz+5BsLOHSQ+vg=;
	h=To:Subject:From:Message-Id:Date; b=tDBfuGTAWt1/0WTI8d62yKNCP4UqHHpqcR1BQ9gllwnFEFG0vEAryGVeOyB8fcuswFC+DJAP3s1ZVRLZ3iLnDoWO2hj/QfBP5hn4yO4im296ermJHFaily7NamnSnDcyB60B/8MSV0lGJw2w7OCf5qmraQlUkcMuB0DOQBVAatY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SCGpKB86; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SCGpKB86"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1B8C113CF
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759232393;
	bh=uoW0JspUFX/pFQOUj8AaAmDuPR9iaKz+5BsLOHSQ+vg=;
	h=To:Subject:From:Date:From;
	b=SCGpKB86X/k5TY1Ipc5XrDlOe+jiIRSw6fy2WCWdi+c920ID6JBgicZ8PRCvRXpnq
	 /gzE6FJMenvHI3udLIjjEoG606xupf4gM8pRjlBEwcBkI4CgUpN4rybWjOWFirkrV6
	 KuHpGIjd+/FDIjxcx4gkgVL2/zZomj7e+W1uiycuv94tQQgZ0/POw1LfyX3wlydoAS
	 ZFOGyx/tQBY06U2Et0a0zK5SsA0vMHyciDTQAoHRDFTb7iNH8rG2IR4wuVwEHCXj4B
	 JatPa4uoj2YReSvp5PCU7Wy53VzqjvBHRJBOZAzL/dCyQnNbxNBOnW9XHnG7bCDv5s
	 +2zTfQITB39OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEEBCCA468
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175923239358.5421.163687693131040631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16de31c0ac255f030afda79a32a2b0975411f05e3e2d360c1403670e67f6e8c2
Date: Tue, 30 Sep 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759232393
