Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3711EB489
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722537954; cv=none; b=lB7imR3IHebl5Yf37OcpbEv1xPZEzLXeorlhrUpE7bPPkBuHnDBUT39XydBSg913dLG3vxsqex+9m4DEQI5tWfp55cakybeARrTYcQqnPljjh2gXT2ud/y2PYVzA2nBNzJxezAaswNwH4Vt1VKBdu9ZHOYwHvs8aMnW1Y1YzIgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722537954; c=relaxed/simple;
	bh=ep565beYddywZE3XWSEbsfbJ0ajY9pNAgAA0/hJWTqA=;
	h=To:Subject:From:Message-Id:Date; b=UA2odNLef+rUPVLdX9IS0kpgd0WgH7JW20ZNJAFf1wIe8v24FrGEOH4wJFMfDUKM09Y31fkTLwS0cs8A/DjctljEkaNGn0nCf2rziqFUT8XlJIcE+TciOfZfebgVSMyQri5U271mFmcTZJxnpOI7l1Cik1Uno7wLAtUo/C1jbrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cOLff2aa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cOLff2aa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCD01C32786
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722537953;
	bh=ep565beYddywZE3XWSEbsfbJ0ajY9pNAgAA0/hJWTqA=;
	h=To:Subject:From:Date:From;
	b=cOLff2aa36M52+t1CGaQAUCpju4RgpTSNgI58GYwgPujQtw+KCiKlUW+OU/DcB55X
	 3no0Q/QkU0lF7w8/Met+704fdhPdvWqYg6e/WyIjsR9wfbBzCmH8EGmnkSom6k7AQ8
	 BwTJ6Zt7ofEtoQYd0nRbpJEeoi12F95epFXIiS4x0ME85lZsj3IHutIUj+HB0Sus+x
	 MPmlsrXUZCW/s7zo1wewbO9lFieiMUussKOT2w4EVeIvsGrAdu6Zw7bxxVQtpvmNvV
	 n+WXk15BumYA5p2V/ahd0B48zL+oRcLhepn/mZCQo6CRfFbEU81SAmA8jjIiiDX8SH
	 0ec9gYHGcy9FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4A09C3DA64
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172253795362.5465.16857404909575447525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89d556a6d86901646ddd1ae9455e752577fa870756060df22538c85916ba4308
Date: Thu, 01 Aug 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722537953
