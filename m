Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0920420B33
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 11:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713007163; cv=none; b=aeG6bpvOxyyKHmtU2QxXVOSpvNDXBCb9CJtqL6Ft89M1dJkETOOdOWh+sSYU6agqxiIQgB/FjyZeDg88iVn1M3p8Saj8s16Oj7NuyIyJ0xKBlxNxEB6q4DPXHFB9nZUHrPXInW3EPv8eQzHcthL65m/70FFHiUgRbeMEMpI99WU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713007163; c=relaxed/simple;
	bh=Q0pj15JD4KZmE4hil/8VXhBnsEuiOn6cnhGqKLBVuLY=;
	h=To:Subject:From:Message-Id:Date; b=Bw8UKUxKV+8gQhrEx4l5+ufGuCxVahPLBBJQkUSXki4W8yTIK6pfegw7kwXJsoLq3n+yafw/i/P0XgBUmr8XYoZ8dg1A+Ktjtn0Y2gfUG0+pvXmszI0xqiVHR3rdRHXBp/65n01dR0m6DA06dzXBawMIpAGDwxUEdG3Ayldx2K0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YqNuewXG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YqNuewXG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAA70C2BD11
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 11:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713007162;
	bh=Q0pj15JD4KZmE4hil/8VXhBnsEuiOn6cnhGqKLBVuLY=;
	h=To:Subject:From:Date:From;
	b=YqNuewXG2cLT707CiC8+xoKBkupdkRb9iWFyCx213IQCm/+plN8Ym0DcmoBP/fWoJ
	 bqJiSAGQ6MsmL7NdkByiQGarO0fDnCCas28DYsYXg3Io5xcuCJMQw+z51vT5fM059V
	 4V6YOUJISq4qQ7R9nPgFY+BxDTWEm3PhCZwso2y+U9Atnwd8H0NPgWFpJMDJRTi5Rd
	 9Sqo/rEiAbz3d8zNH6LTszVEFgjHdT6UVK9/fxUOfviZxsSGglI4mDjmoxn4YLQoHX
	 lTA7KcBda9Hn2ej3WqhwlsrWfBrgQksN9DJhkCx+9uHswzVsopspG8Q3kjDror5Zm7
	 Q9wW8hiEsTv3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C12C0C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 11:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171300716276.28085.2250982857412418004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85fcbb27831d22e71ca0715271282151975f109c551ae3f06942b0c4ebb15b0b
Date: Sat, 13 Apr 2024 11:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713007162
