Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A6531691F
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760698194; cv=none; b=HsZzfS3Dbkk7T48mGsxyq5NxrUmrUXFqLvL6IHyPqyY02YyjyvskwMvV7foeISG0Hnsuhvp6kdInDql4UerEPIIZmZC+lEbtmxIfi1KajTH44TYKXF4LiXheGH4QGty06mNFEzDBjyQUKMwABhbuzmLFiGJ24vVdV0LeeDl+9GY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760698194; c=relaxed/simple;
	bh=ydoyJh+32VKhyUI2CtJAlI9u4RySmJ6UB5EQLi9IuLg=;
	h=To:Subject:From:Message-Id:Date; b=fR01sDNmz5Fnqe5aFvrQwx1VFNzRMRi1ksKiTS/MrbO+TN2/f4h1ICpJTHFW9FqeRybcF+vWkki0JjthGpcPnNZbZXmb2O2vcaFtqno2Vb3eWs326MsL7aRYQXARH9oBSCM6yZo+xXMQXB0mBXjGXazCayOfi/dHjfkKKEHA4PY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CBy28oUo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CBy28oUo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1475C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760698193;
	bh=ydoyJh+32VKhyUI2CtJAlI9u4RySmJ6UB5EQLi9IuLg=;
	h=To:Subject:From:Date:From;
	b=CBy28oUodHaNIoyx9VrWkBHIomF/KhX3DVr4lLD4QxACx2paasiv9MLkJ56HNDQvp
	 2huIG1x5mmCuvLOzVLp0JbEOpUl53Yt9s4n91sxZDJuoshcN98NTYejjN+x9td6Din
	 yuYnViGFuIYX1Hlo0KaAkQ070Q3VhWspiMyZGgHo49exUpVGjaW9P37AlG7y9gDKik
	 34fRR1MwOufJXgmHZxqC+JKq8Nf7QTyMeGutj4WzUrwoFOTroZnFLGpz7wNxSm9aP1
	 LyYo8bHUMCseLNU2QkIB6tzZ/6ulhuNxvz8INlMtQ2tNtGrvs6Y/TpnXfmmKRddGh2
	 fiJnukKl26UdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921AACCD19A
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176069819357.19100.17413898704101824791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46b373fb6d5caed79aac7e73d9df751341502a5dcfbb58d2c429d6d54ba4377e
Date: Fri, 17 Oct 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760698193
