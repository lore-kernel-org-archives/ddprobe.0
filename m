Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E722701B6
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767812634; cv=none; b=Ar9oCPP05z7/HiXgibTG/6gJQnv224bB4SUZ4tY6WvrsFTjF8qSXT2nLGuy8MxqCdGyAl1QbYfCLrHeXcwjEdf9ZK9E1ha+UoxaonJnYIdh6RS39Y3kejW7gPyCnjpea3Iv2grihhmrVw/sjeiMAkQWE4eBhlhbKRRrHQyNnZRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767812634; c=relaxed/simple;
	bh=ggs1yTxa3SP4Kc7YqOs5j3DwyI0MFquDvi+0qfQn7tg=;
	h=To:Subject:From:Message-Id:Date; b=PKp+nKNfY70msAyNn1rKKWKnA/8pSft7TWHG+vY2aCx8b3q0PH9nxIZ+Nj68WBi7HIm5f/S7AT9/4oBaaF9IW/7IVxWJ+e8vin2eUO4ywRhvvjyGb0ZOHu8+FiObZm5G5EmUUkcW3a4eBN9IalW28RlX50f2Z8Pd7HL0p4YDOgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=koPsVqxU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="koPsVqxU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECD2C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767812633;
	bh=ggs1yTxa3SP4Kc7YqOs5j3DwyI0MFquDvi+0qfQn7tg=;
	h=To:Subject:From:Date:From;
	b=koPsVqxURn8Zaa9CYZYBguBnFJIUOG7Oys5C/GBnHHz6Dr+1HdRHgbNJtpWAbzTuH
	 f79cZE/f4CSwWHOkvp6tX72jpgwyRDuElFZDq8F11OFOuBifT2B1lfQmmaHX8+1pJr
	 SUY1x/5j9cuXcVn9HqWzobap8IppjlQPwLt4LtoKDfUzFBRYkIABTfDwLx8rYT2p4P
	 t8aZKZ7zIc+zukbVGvifZpTwEN19lZwaAPdN2ng5U6mv2aYCZLhiflc4ZvAfASHbIO
	 +elzPtD1ajzPwrsAr0VtlSQnZAfV41pw6GWDGOt50+0sd0I5/Y64zETg1LEBHgJGgP
	 es8EUskl+sX1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F46CD0D167
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176781263357.12447.6768924011128074050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 568225f2cd5025bc7b1255a1c6813a71cf153b97996e9dc1888e2e5f7a1c83bb
Date: Wed, 07 Jan 2026 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767812633
