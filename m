Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DAE21F3BA4
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 12:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765281774; cv=none; b=ncm8Hkl8n4FeOFF8FPnNvIUjkR8dJgcL3BBgH2T6CV7QR2zb8bAl3KEHkOD1D1SSl3xlWGk/uCGYvRUrD2iyuw5l0hXTsJbwnrVrsUN7bSwKipCFXbiHJEkU3E172w86X+yK4es4TtbM/d/mIKaShlwc7a0w15xoxM0klcT1Z6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765281774; c=relaxed/simple;
	bh=xlDTxvq6ta6egy9MbVxmEZAlXyqAyy04z4TrOXc0EDg=;
	h=To:Subject:From:Message-Id:Date; b=iU1hxhurjscGLQBSdyYoKO3okaTdjGLslzkli3qApPdt29MECoFrX5eaMhVVh9d4wQLhMtptNLlIeiCvdxKDDtXa5t66lUzVHbcYONVQskBPl2h57Aey1U4Az/+ZTNwn33xr6jiMS9cIRdEUk/UuuyLyoLo48rXwfX9P8ITNIHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=USTGXX5j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="USTGXX5j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A29C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 12:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765281773;
	bh=xlDTxvq6ta6egy9MbVxmEZAlXyqAyy04z4TrOXc0EDg=;
	h=To:Subject:From:Date:From;
	b=USTGXX5jQ9O5rZaAmzQzXHr+N9zTUB9ForFaVv3fK0Tt/LfX8qBX2r7/IFmHnwi59
	 jAa9cJdiDWvoVtL/YijOCxAbJTj3eLJtAPT5Q0+R6Jz3Dwm0vXqKstabDPxQ8WM+5p
	 E5sFA16ECpCYYy2APn4lyw1RDszANxvYbOIwNIMUVzLSsg9TfEfqfZSaw4qajJNi6/
	 m0Vk8wWf189V15eAJ0R9bOeb2I0AuehAXomqMsY2LRizKSyweHWK9yXip2WLKpHjHi
	 H0lr/1LC/BYOvfb0+t2vIalw3jiLSvM0mOBQbFhpECC/4Ff1veRb6R1WwjVqzcyFaV
	 sXGDoR8XyOzJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9286ED1CDC6
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 12:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176528177359.10516.11297562205303878404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74932e537017a60a659df8ccaed8163a045d9cab2413cb31fe0e79dc231ec2ff
Date: Tue, 09 Dec 2025 12:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765281773
