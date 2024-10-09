Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44AC12F46
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728448554; cv=none; b=XZakKw3vj3cMokk7VChaPOmAD/o0kUguiSMY9DVCcWEK4vzIslkgeKx68OunK9rD2EKnS8AF64EVsH/bRu2TSPRjQb/lIurR1u3oLud1G8BFzhmviQjUusrv4BR5RvutVi8+SuB14aT4SQhYntSEzYill4A3VPKBIOhX2X7oIsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728448554; c=relaxed/simple;
	bh=PjnJue2aBmOjMLWFhgKXP2PpR0+cnPw7pydbmPEnW34=;
	h=To:Subject:From:Message-Id:Date; b=uS1IL8K1O8CL9SQoKI37+x69LCyG5ReZrS70VPArBRZHnhnD1IMo5J+uCzlbK/Cfkc52JLlI7ZnrOg8K59h/kOf1Ew4IxVFwtLRL9bOQ3IsLb1nkuIohT7eWBqrFjXpjCAYJov3SgDThNku859FyzdBMaz386vmFQBOiu9swWSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l8AW07tG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l8AW07tG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2082C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728448553;
	bh=PjnJue2aBmOjMLWFhgKXP2PpR0+cnPw7pydbmPEnW34=;
	h=To:Subject:From:Date:From;
	b=l8AW07tGstIOLI9zFBqSryG8n0Y45VJG+sC65pFb03Dyc4wyTbvlUUsFqhywCApoh
	 2hKSv6tdULW+L2RHQAVsdxRklqlQLFXS2pJ07PzDXCCMA6cLPbzFFhNL6g2bLROXQR
	 Sq6/bQzAkMkJ1qw9Uuy0omH998rhASJk93vppFZTSlf2o4uUDXxZGynEXuzbT9DGYK
	 AVGjc5q0EA4DKsy6O2X8se2AtDg3Fvi4nZSRUbehKuCqKQGpjI6SFvfclh8IjYu/TT
	 IX99kNT3Tu80lAijGc+2mhrb86Pj09HqZzRyYqa03yoMK7x+Y/qJ08UmOiRvW4IIiA
	 Uayqc0wUZHwGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C435CF043F
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172844855360.4687.18388145814343443180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e495643bae0b52970c7adfc89803488979c223e60f83e9bdf08514972996e6c
Date: Wed, 09 Oct 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728448553
