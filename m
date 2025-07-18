Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5D61F91C8
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752872395; cv=none; b=RPD9Ap2Fgx+TZlHNghjJMB9JUOA3SOEsrPRryuLVhMRNeEd70qMDdRxOqdSXq3iHEh7uQVGVJnxTUI1+l+qAdlyEOdquA6x6weqzvYrTw5Lxql7kaaZ3xlPy52uPLGreA3KBWd3ULNGiXIro6/ZKh/f4jQPBhV9TkVfLSWnnRx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752872395; c=relaxed/simple;
	bh=XIsmnSgKSbVxprYtfPhEou2HgoCdhRuThsREZNX0f6o=;
	h=To:Subject:From:Message-Id:Date; b=Cy3iHncrj+8osHjfLRtfN/mQRnveWsWHo6QWJNMac+gd/xBCIP52Nr7yohMDwbQoLK+Y38JTL/t2zKAYTfbG80EN83dH0MCioz7f3i9JOXScBSQjanb7cZ7RAaBBO2qG9mUGNIKWjenlyI9woz6uKsTr0wF1bGTnrK4roLNtSqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UnyLZJv7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UnyLZJv7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D48C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752872393;
	bh=XIsmnSgKSbVxprYtfPhEou2HgoCdhRuThsREZNX0f6o=;
	h=To:Subject:From:Date:From;
	b=UnyLZJv7MuBOMALTviapusmar4Y3/88s03bkdezY/RDPQroZRpxuirBbPbJrVMNhI
	 zFbcgtKi7Ylh1CTY52meUa7Vj06YuDxGy+1pBoGl0z12BLJGQGLJpnx46/tbPT4ORR
	 mbGfz/bzh+AIVHn6MWYqDNZZAcAVRvVMouOYthD0nHi7biUq3ZJhv4JI6v8nkUkPUP
	 TNwb6AddlzY4zt2y0x8F4T7FPiBccrOsk1gwew34CzLsd4S746DAP9AV4Tr9PE1Oa0
	 Lt+CqbEQ+1oN19VXHz6Y0bbzH+CgyTzf8TQo43bdwneLyQnncLPb5gU8wEx50nn21S
	 vtvVqeZAdAtKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CD10C83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175287239360.8610.10200012747005904245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bebb5c1a98b01a5fdfdfc1ecda8e88b455b4f8cd3399f3110cb9d57c8ca131b
Date: Fri, 18 Jul 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752872393
