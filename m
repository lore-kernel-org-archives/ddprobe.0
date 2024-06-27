Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D3C5249F9
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 21:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719524663; cv=none; b=GTTeSHjkQuMEbh49UP10DwgiXmh8rpAeAWg8uPsCP6FEA9wUvTBzyWoOhzaWLIxWyzZ+4ZEnWDw0wfb0lua/QxB5JnYp5NLfUGVnfBQ888mM1tpHw4WOE4dVJ9TdjIqozEhIJrYI4h60xkylpklo/mxTm01fAIZXxptwZw7FNaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719524663; c=relaxed/simple;
	bh=wOhUJyqq7kewkUKxaM4Hr1CH7g8xUVg7rtqGcHsPB3E=;
	h=To:Subject:From:Message-Id:Date; b=dye0er80YFQEO2m/QsRGnVhw1QnsJQAmYa2o1JraJW0SwRczZe5NObH88+B6mrLnpMP72UwTHlKP1amu2M17WzmeRJBZQBOIEbocBSVDRMLVpgCAQNgv+x66lX+6/DGARpByT/4meEjfgDJGrr6l7Bx6bg4a6CRWsr+V3HUdPOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LWmlSKQR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LWmlSKQR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5EB5C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 21:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719524662;
	bh=wOhUJyqq7kewkUKxaM4Hr1CH7g8xUVg7rtqGcHsPB3E=;
	h=To:Subject:From:Date:From;
	b=LWmlSKQRzdUqYA/70qN4nttaNuu7h2lNIeGlckvkRbudtI/Nda2kq2zmDWWuH6CZ8
	 9ObzzSm8C48v5b4BlMWYHPy44PtddmWZ2pisBu1CLR++Pz28tHf3g0QBGwHEholGjh
	 k77E1KpTTl4Z5y1NHBGba4sRs5c4xkiTsz3vOfCQNKyNyMJ5RackXG4Y8L9CiSDdh4
	 PLqYGuLeZXPxQt+Ftwv/EouJRgFB3i+j5Jd+te+xtGMk59IGzsYIYB0uqqkp3WaTfM
	 RJ/RSwoRqWLAJsLiOf8g8su4+8+UKuwne5znT1YeVxGGCsU4HKgEqPe33h2VcF2Jpp
	 XeG4YM1zK1kYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEFB7C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 21:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171952466276.23663.8363430318679562965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd5ab6e06c79116272fe15ef5ca3e8d106d2dd2b05b4c7df2eae3dc026421684
Date: Thu, 27 Jun 2024 21:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719524662
