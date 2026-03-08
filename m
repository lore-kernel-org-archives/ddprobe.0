Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05209287511
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773004494; cv=none; b=UUyv3RFPJyaZT4OSstzZjWHFJXbChfIEg/+BBx5bJ9J8uopgIbj1Ma2RRRvjpyteiP8MNbpJvIgq74OZmM6KxPJDAB6UlYEPryeTPgwRa/Bnm4sEv+sCnMmwQskKvARKaazJzSZuCtFexvyCMBO9OOxsDofDpsb8FNMwfW0Cv2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773004494; c=relaxed/simple;
	bh=wN1pucK6MNarwkIQ2MBHSz/PV03zpHHypNG28ShhS74=;
	h=To:Subject:From:Message-Id:Date; b=D6hzvrys1xsuRBYyRhYsMNbRi/X9rMlt8IrzkQs67eH6qEOceltj9/Ta2v01o09SMZBLwat01CctmJ0KY7GX9IIQR99+Mrlw6ump5Z5N2WeMxWNbkn3mW6nhBqk9JTYHrcyctON38n4SDVUDcR5pKKhX8CUu34GLJzPklUI6yx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WldncIJh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WldncIJh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD8F9C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773004493;
	bh=wN1pucK6MNarwkIQ2MBHSz/PV03zpHHypNG28ShhS74=;
	h=To:Subject:From:Date:From;
	b=WldncIJhwaXrVmLH5Q+RISN8Bc0c/XFH42wdCv73bwZ3bpUxjTBmFSaBmR9HulK3Q
	 O/s+NQMMFuRXxKI5scATd/tl0fc1O6wonWIemV4e1zIaxu5RUHwsZn4MJCRDE2BALj
	 NZ2gRWmCp1ZutO3YqdPBm4b7VYQjs2NyCyxvUywBlZWAtVUusR/zUro6dhPWT/Worx
	 P0nSRudNGiMkOoSYo9TxBlVChTKedQ+S/QqxV1jF34QmUX/lPsBmTNxMNBiHDPR5zv
	 INxqcWQSFXJZdHQwnyPDR+nSaXtZpDgbSfAfE9QzHH4yPIcaSg9b9h/v/FX+6XSikU
	 V3UWqjVTneH9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A39CEA8546
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177300449360.26576.4638861629563942933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fa4e220295755cc95a783b1b94f953848813bdad932cbfa001e86745ad60c7a
Date: Sun, 08 Mar 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773004493
