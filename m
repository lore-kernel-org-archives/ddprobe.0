Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246D73D76
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730511954; cv=none; b=MhgslfzcgQbzo/cssAsX6L2Odm5D9JE+ZGsKgztp7VDjkUYS2TP0Hsoxh041+5+s733zcH+NqfMp7CS9+4noFu2BagwuHvubTGRv0ePhGi1S2/AsRhW60AQzfnLPssF7VWRxJTLuEXZ2kX/IrHv6+/JsA1askVNQnZGn+c5aMnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730511954; c=relaxed/simple;
	bh=2ATWRLcxqxUINcxOVwdowjMXeRWQCwpsZNmZ6KdPp/o=;
	h=To:Subject:From:Message-Id:Date; b=IZzOsZ4BgzOsFmInX/uCQPTTXJoW5XVKgk1j3eiPPp8Hq/iNnWWkFL1LwCfBsauPtkxvXgs1pDYGhnGgHZ23jHsi4gt1W64ZZQFlyq1lb0KoK9IlwtkvVz3WkbeQJ5V85XcgSil8kvXhe9yZ292X83LrfGTL6WpeswiyfP9P7zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IYdyRimv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IYdyRimv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAEAEC4CECD
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730511953;
	bh=2ATWRLcxqxUINcxOVwdowjMXeRWQCwpsZNmZ6KdPp/o=;
	h=To:Subject:From:Date:From;
	b=IYdyRimv1QKZqn976HZFPrJS1C46s1MVn/oAsgoBTVhPaW5AeC+dXn34F75dqb9rL
	 9Sh84FtS9/3Q6lSOdrbTK1E2mF7dPbGU1LnClu3Wz2LsEaK1IE4n0VcoOED2xJRGW9
	 gvwPy5zyQSvDxL+qNR65akHcuCdzOmd8ekOoSBgZLmdmp92Z53oTk3365B3s01jxEc
	 vnBlx8vmWgWufBUBnprrHeZ4/pDq2yXhF8ZOAH7dJsBSWbmtutWbKFUE7MqAqvbCWH
	 lcBorTbgrI43n5ox2H/m77PN/znCCXUY6S2z0nUoBw4dsNclzkY/sKy+kaP7rxkcMc
	 0EGncQiqXQAsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D1B9E6F07E
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173051195361.14820.4434095553003179583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec6d2d77f6c8d831b6886399dba6358f7b144867e04a03f64b77f2c3beb63695
Date: Sat, 02 Nov 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730511953
