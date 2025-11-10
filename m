Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C39BE1DDA24
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762787993; cv=none; b=c81IhXSfhopaRIaJzXxrKJ2fJYhEeDgnBVo28hw1mb2PKeg6g4x59Vb1GBDpCrzUQbDNXTPhwwmC0iJ/0Ea4sMrk0MlyoHbTjWXgqIR9qbI6YW3CE/3+/OJ2ZmVOXIV8sSZjdUoJSDuUUxlTvo40XRmjzdYqO8VuG4YT2pq9o5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762787993; c=relaxed/simple;
	bh=9OfgSbQn9HbOpM5gPyIa3yFuvxsOugrFc5fn86Ho9EY=;
	h=To:Subject:From:Message-Id:Date; b=PjRslitXHUgm0RGAcfWWBdS2ZgkoLDQJXrMi8pKIjPSVFm3vZavKCAD3trPNPmw6YRu4mDklm+3PcHjpPqtcWeTy/lpOqRNvfDA+T2xYYVFDZ65dHZa7DAt5FrYwH6A+pgA5oXhcp0ySOeQ31oLbD6E+iIoOHdPUv9jUry5fKMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ojmflfmf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ojmflfmf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD26C116D0
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762787993;
	bh=9OfgSbQn9HbOpM5gPyIa3yFuvxsOugrFc5fn86Ho9EY=;
	h=To:Subject:From:Date:From;
	b=ojmflfmf9RqPuIJZU/+2I2RSzT5ak1ANSHHeh+SEVB81TRjQMN/k/MI4Mggj/ctfC
	 oSYVHR8+Lsdd1utsBszFWOpaJrBy35OQt0wR965TRFGnO4bmjYrDrxPSthmLiLLcZo
	 2wAgeVzw5zSFbefPCcFydt38JXGYW3U7xld7SbWEqxdUkkkPgBEsB4rOqT78bxywpK
	 CSTaS+OOqHs/rQ/2LAkDZlFDklOktCuh4fusZXBYwA5Z+mdT5ojW0vd6abiHfMDaI3
	 r0DPnYgPlx2yhCimP2un+0Qs4uvYV/LQEfQqETA2VFTM6Ddq98Zj0iagEjwoCsefNQ
	 nX4i0eWgsQjcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F81ACCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176278799357.20118.3013110053408118243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bd4e31e803cb16c2cf0fa5efc821987550e836bfd1fe874f4feda3d56f2aefb
Date: Mon, 10 Nov 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762787993
