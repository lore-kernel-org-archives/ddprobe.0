Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C0027A47F
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791010834; cv=none; b=kF1u4ST7rygB/L4wTVjpvITwg1W/rDE10EOf2+NOOmRsS6Nm5xDoSUBi/sPyBB4gS2RxjAFeL8zJzDrv5shz5rxsJ898/QqyE9REL2YeF0JeNK3Nr1tDPUobhtuBMO2wJENOWRX+6/sVuwjaqRrhBqnrEYbSa/+79KYGjhHA9Ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791010834; c=relaxed/simple;
	bh=bo9lOMFHK3FjA87XcQIqXiwG+jbj0jP7e27QE2iz688=;
	h=To:Subject:From:Message-Id:Date; b=HXDqWNW7pDicABJ0VL8dCw8hK7tf+wi6lmG9rHy4u2vIUNGeozwfOSpTSIBuWuBwI2YS63MPPd95GJHMJojo2j4VvlVg1cJ6IShtlFUBpFAKOTK+e3gELGYqvtfJSGEKQKhwAOKC+dQJQacujPm2J43yu3yK5ticCeUD9p7eopg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gV+lqsdo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gV+lqsdo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10D8C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791010833;
	bh=bo9lOMFHK3FjA87XcQIqXiwG+jbj0jP7e27QE2iz688=;
	h=To:Subject:From:Date:From;
	b=gV+lqsdoGmcVszCRt074wzO+1fXG/FqDuhtSVpTEgOPe7cjqeGSLrqayecuhaOOd2
	 w7btFk8iUgZg334I19vvMu6BmUjclSoNSVlYi2uEw8BYV7B3dZlxDV0bhHmYtIDhSS
	 /NJliTQXuz8v7lObnXYyCrMQHFDh0n7IZvDcqp5oOHJbO2PGuySepbhGQgIa/NK1SN
	 kAsv6VnQpj5VN9iqfCd8OhTIjdC2k6AO0NTLX4Aduywu2Hq5gaA5YMLCQJVT+kEt0N
	 XEwlt6t7nFZuIg1rupbZ2lEdDhLad9eTFQdIkGau3sQ29md4j8CF5w7G5MLNA8Uy1W
	 TiZM4YUaK6HHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBAECA5FE3
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179101083368.16072.15179878157649522150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c649ffaa265bce45809a10f25da5b78dcf2afb3c51da0a009dd74110c4c97cf5
Date: Sat, 03 Oct 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791010833
