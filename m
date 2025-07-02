Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 536FB1531C1
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751429995; cv=none; b=ipposLhV/8WahHs3Zj3I1mU4Mnc+EjEzTDmNZ+dVUIa2VllzOqruIt7aSYDygK34u37iLhgx8H3OksTXfGLWuZU+v136P4YJrT5DqP0BYXxqI8Zb3M0Wv6LjOpD6klbbNlt9ysEddRBmWivOo+8HVeZpi54OFVa0XOdfZ0Dg3hQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751429995; c=relaxed/simple;
	bh=CCJgtRI4Mqssd7usAEXjVY8M1gG4rDPWHcqA6QbXcYQ=;
	h=To:Subject:From:Message-Id:Date; b=jusRcBRb6h53uVS2lXD1TgZfEf9fwtbC10viEK1DET7VR288fHf2BCeWOmrZGepIDpxp6xm1wTXXndSZ4HKNLTF4mwZk0YVzj04TMs9z1cwAy2bAJpEycpshoJiK68m5DhH/m8MksOCuXm2g2qy6aDiEg/+H0DiKu/Csx0uyxhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IUBk9EsI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IUBk9EsI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A909AC4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751429993;
	bh=CCJgtRI4Mqssd7usAEXjVY8M1gG4rDPWHcqA6QbXcYQ=;
	h=To:Subject:From:Date:From;
	b=IUBk9EsIj41sZSxJu66zmmSRVb05NVDGS5/7iSC6zGvpCBCuO8bDO8Dt5ZY7AfUSj
	 kxqxJ0xF35Cf2CtHDa/ufMsN1W6KU8Lgw6kNlE15u8BLGjkrR0y4mrsqex88OpO8Y8
	 H1ffcZ4AO3OTrP8fbcx34ycLbo6DczupYgfcHD9kHwLNzR/mLzdbUkDJs2Q34x8OSK
	 Zu5H/R2WmXw7IOl8GJ/oQy8Lky1O1GAghUdsoSmxarsLO/CKFmP0GG1xKUelbF29G9
	 g/yo02QL3yiEposoKfvyVA/+4FBF9uS6KgvhgQ9V+GprJlzxutYmWru8z6HgbJHRLi
	 +/Yoj/y/rCphg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968B4C83013
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175142999359.29891.912279046594755441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c3adab973bd28f5884a68a981639576315cf3b8b5c574bbcfcde9e3bce7e077
Date: Wed, 02 Jul 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751429993
