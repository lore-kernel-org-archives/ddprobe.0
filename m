Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CED21171C
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734260754; cv=none; b=mhAPdcn0rE8QeCJ4ApuP5Nn5jxVrwCDsX+zPWLVSPZ17UXeUR+53OFO7dYBzOCrspwlD92H+MrsdK/wSOsPKc3XFmdcr/wvlClM2jRwMU6MHArhpqQUWx2GLjpJAm1vNRhRCmNhH1JD6QYsnI9rBNPsCW1SdULxuGEDWggJQv2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734260754; c=relaxed/simple;
	bh=tL0DxirsypsaAQ8BdP/Fbzc1X0hajhpIxeOM6Lm9vco=;
	h=To:Subject:From:Message-Id:Date; b=dZ3NHQBeX5y7SU8UafNHIF+tAU9tYi66GGSBRv6UIjdKTpD+94Fs1xG91CvXViYO4e5/TFOdZQZcShd7ugkPUdnFeZ+jviFP3AgTaF0icsvg3mZjFq4zr16EIc1a3wyrr9p+vqkN/lecyFYM8/xlZ+PYXpTkzJF2lWjqN4MNoLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FaLaNXJB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FaLaNXJB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCE8AC4CECE
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734260753;
	bh=tL0DxirsypsaAQ8BdP/Fbzc1X0hajhpIxeOM6Lm9vco=;
	h=To:Subject:From:Date:From;
	b=FaLaNXJB4nudj9dbB/lOY8kbcNETR78Ivl/TFSMZLX0+foM5qKbguJ8S1Sa8tA+XO
	 fAlnR3+NiUF0dpvsgUQhbWHERhpRIqX3h7IL2r8eXRPn1WzixH7UgvOntY813UmqiS
	 L6cEyHPlTb9GqyDAmf5j6dByMtOQ3vWALhGlsy9sQEYOlREYKTuDVWJ1bDKmk959nM
	 wLF17tMSE22caq7Vjw4SzHeGHnLWk1X9syQmU9J8FYvOZmxDpF3gbRM7WSdzLYlr3A
	 2ehSXSI8rfsvzxM4AEqgnhkreLpqRCX4qafXu9u72DgvNWfaIU4MvrHFgcb5bnrg9M
	 kpSiHE+6JFe4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9070E7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173426075364.28818.6770486841143818842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50d4cd89d6cdaa48d9b141691770b473cec34eba159ca28f6b62c38a07fe2594
Date: Sun, 15 Dec 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734260753
