Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 705BE86344
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753683594; cv=none; b=dc0HT+XxXOecpFixhh+j8VqXZwAAkqMy119V7oSmVSLtOY/v0Naa3u/CKZb8PFhkkd0eshrmD6K3D89c+6v00O5csymho71NR5vzShp0ZXHHfCZSfiMJHdNqP0I9lZ17uIDGClR3tS1yzqDBI7c9GUMlohc2CGhmGs5JMZnTPXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753683594; c=relaxed/simple;
	bh=24cwGSxu0DEVxwZMq4Q2J055XRFw+1HXZqjNndXpXu0=;
	h=To:Subject:From:Message-Id:Date; b=ureRQjSeiygXHQO/0+120MTLTodBogeWNZIGbNUOw3GVD7AlAinRJBuvn4F+hOU523B70mEvKlYD74WRfs3Rh6sFXVBPrGmUai4FEhzAikKWhVsI54TLq2AML4nXRaAHyWHk/j8R52LENpWotwcovS+faR7Jhg10A8X4oyaHINk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B6Zgk3gv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B6Zgk3gv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4E8C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753683593;
	bh=24cwGSxu0DEVxwZMq4Q2J055XRFw+1HXZqjNndXpXu0=;
	h=To:Subject:From:Date:From;
	b=B6Zgk3gv/7yO+DbOBRTe0cr2ZzgnpU8XEO31Z+ruRocwR9rhqL6LW4uAgBzZoEL1y
	 19U73LtzIIdRGS5pXv2jsnJX4c1f1eCHAOziynZiJ8jUIcnHv8zluQbzzE4B0J1gik
	 mlbg27BhWkg4iBzDiojP7KNUFVU1vEsK82y96OuFshD6LRTqNC+hLfyyDzxVX/hnFg
	 0/6c0F05kj9Md4DPy04V9vEZjGv2KgWUZtFIJ3QYZDGi/VNOkC1f67LQuTQUYk8oLY
	 ME3IVWMGk2/cJvYXlWIilk7D5OL31zjl+Mjw3IQbKOgR+L20Z4nHJSIhI3ms3KMTcr
	 prkovzsu4+DKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF20C87FCE
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175368359357.17849.1123593253090180875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 821584511984ae01e2d0b285b7277acad682792ed87bd03d1120dea8663f1068
Date: Mon, 28 Jul 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753683593
