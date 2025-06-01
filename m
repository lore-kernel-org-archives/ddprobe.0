Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67C762904
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748772594; cv=none; b=UkwxGue0yRQokq2WYH276BOt8anqVBtK334qqg+BOzxMy13VGK8FmutPcFjlNjZ5WGHJRAc+2HSWDA90Xx2ugM0lkSID5xi0ITsyNheJZ2ck4zQ1+QU7UBv2lRzKEHU+lQYvkg18ZS93J18XlA/U7jWcScyAJzJ4L3PioZcI+So=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748772594; c=relaxed/simple;
	bh=8KgXdkJ8WIMPUnHJ4jzG8YWeiG3rKF3387ZEggZIOCM=;
	h=To:Subject:From:Message-Id:Date; b=CAycIFBnrZ7cIeePnA+T9TcPEpe7iLys7QS/4sNM6yki4Z2tmLTrKn2PGBJiK70n1jb13TCMJImX3m6uebOgXOEBbY/VJceWX3cKIDKKmVRzy1eM+Aaz8FpokeObHsHMih/LNM8LKPd2uM8SNWE3TUBgwNfGCyrmTJrRqIUBY40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rwzNLdk7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rwzNLdk7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4192C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748772593;
	bh=8KgXdkJ8WIMPUnHJ4jzG8YWeiG3rKF3387ZEggZIOCM=;
	h=To:Subject:From:Date:From;
	b=rwzNLdk7cz75J2k17RG5CtRundsJEJksQHQ80hO2y1yAOqVlClsQYWPplmDi2fIwA
	 wPNdFu5MbzlHtK4s3Azvfw2rlO3HURpS+igoZmVwau1LJex+A4y/aNcEDODKZEm0tD
	 kYyeT1i7wZWcvOMBH06lXZAXiO57Q/tNvRWy33n3Q1mA02EkM/dVu5i6Dq7yC7ioMI
	 jU3RVzQuLZ7qtO/c+Pm3jf+5gEqgfNl/Xaqvx7xQdfL19Muqyq8Mk9L99KyQi0dPRJ
	 fruUKVUrtm+jpQs/RaW5RYac9a6ienLLW7T95ehCeJbCP9wGymutDw7Q/r9dd1MAOv
	 EXUfKJ7QF0xPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F666C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174877259358.10763.17223718904834020173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d09fa2ff109fd714041566c0d1fe84be5f8711660cb768db174bb3f601f16d1
Date: Sun, 01 Jun 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748772593
