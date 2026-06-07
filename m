Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B1E36657D
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 22:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780871074; cv=none; b=piMnlvS3FJ6y1KMREFoky68f2Kvt5AgDD7TU3xruekuJ6ThI7T/xCBsAWT0TEJ/fUBxWrvpRDvVetuDcUtVOXqNu+QvXnGcbnRevvtUp6YCU8hxVXGnRhB/dgSrW98jypwGOsiDGYCk+Pe506nTFXZM8GvrdsZyl//rMwRGNAg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780871074; c=relaxed/simple;
	bh=MxfFiVd5F4R8rk1nrIkCIHJkI1uuqmqGorhWMbFmVFI=;
	h=To:Subject:From:Message-Id:Date; b=HugRHsF6seK+TpR0kyEgoVbZG4+3AU3e9CulrPgTDcG8bBTTaZW8XHJS5Oy6AKTrP8J2pa1QknpEe6RrUsuS5SLohjbxVvQFD7qiBQ1NVuaQNT/+w5DMozLUNj3pl+ob6hNwyYVDH4fj7APA7mkbNZ8yzG8zKxr5AS1zMe21Ye8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a7xDgiFZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a7xDgiFZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5409C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 22:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780871073;
	bh=MxfFiVd5F4R8rk1nrIkCIHJkI1uuqmqGorhWMbFmVFI=;
	h=To:Subject:From:Date:From;
	b=a7xDgiFZCAGhjsDuOAuaVDz/rJRhuL2U/yVxTtv7UixX3CX41xGdC2y+SI0ns4A8h
	 RN9REihErlMft44nWBVOLPXyfbO9K2ko9OFWbyKIKRwuvOo2eCRSOtZjySSo5gZ2Ln
	 UjQ+4WRMFKPe9TPwhgPOh6gX/aloaCkLmlDXkySssL669CQdMuTtm3cIYaye8luMZb
	 FPwIViMHDCBOATj6Divs4/CKYXDxVAhl+YO2ir/qs869x06nYBoGZwIXP+7FPKeEjc
	 B9kVmdTLNv4kp6+8pUwInm7+7iXLaOJ9fuky8htzm/PwM9n1IOivvt0532ghmQrROD
	 7gfjvpWl+amDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF91CD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 22:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178087107370.27996.4238128302289238058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00cdaa395c055d3fc9f6a0e3278ee7cbde82c4cae99c0a28f5ada3451005d89c
Date: Sun, 07 Jun 2026 22:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780871073
