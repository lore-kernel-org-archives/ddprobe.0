Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12BB92D7DD4
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771559694; cv=none; b=da4ed55bGifHxS31qaFuPQeLZ+vCft08+inN3n4dauDLs2VL8VqEEmP+OtdUE6TPcGBJ6hAXqeNKTF8alSh5NJUtXcWol6GodJ4ZToNZOhlqTEKKLPyhnNST/ypM3Itz/RpNGD6Ewug9RkneRfmp3RjAK0MAFOMGi8i7B1Qf0Tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771559694; c=relaxed/simple;
	bh=x6QIpmN/HaQxuHhX/aGCgZKvt2xsyxb0LonZdzeeyoA=;
	h=To:Subject:From:Message-Id:Date; b=izhpHQEAtn2PkU2rAc0SNYZwMnsQdHpfyuBvj0kCoAu3kSjd2cORz9+UStWs9l7/tdhkZN5Rv182zDRf1oO8YQ+b++G9kkJLmTFYjeHI+c2x4ymgfQRSxYMmR9m+qhluKxQS7+RaTvt8QS3PaMEASdqln5emdYqQgTotPP82PPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0TBegtt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0TBegtt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A836AC19421
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771559693;
	bh=x6QIpmN/HaQxuHhX/aGCgZKvt2xsyxb0LonZdzeeyoA=;
	h=To:Subject:From:Date:From;
	b=e0TBegttr2g7OTzNBv54RgbWE/JfjJuniiAm/Ig4TqDfYcdhI6AjH++7ea4j4/DVa
	 8KKo2IoH/a1FuwIdbRbJhvs3Os1OzjGgXQMoEjjpWJKwzPInMfvKTiMxnQsIueO1xb
	 OxYYyv5YedFehi6mkN1ek9ShUaOBt8zObOq9nRknWQ45QUYwmVpihr3pw3Rf/r1JUc
	 FLe1zZQgP36F/T7Oc/RfCWoTBW2/Hx49NJBXkyfw1Th3WCIiOhHlTw0BmkNmbdv/vh
	 bo/ooHCdp5pMKx0QJnMKzfKSGQ/EZY3aOztyhjjExKTwLpF6QYXSJgL23jiG7b5DK6
	 1QnXbyprv9cdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CE3C531F8
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177155969358.19727.7792232387207637833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4188703195c10557c4e6e4e4bd080a0aeda5002d007a136099ee5e7a980e3f6f
Date: Fri, 20 Feb 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771559693
