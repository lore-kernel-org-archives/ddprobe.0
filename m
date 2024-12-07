Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435A5335C0
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733613354; cv=none; b=jlUvXaB4V0KofOG0qKH9TF0Ll4mkqyrqLPyPD+vJ45LeG6wmsOYUEE70KYYFGdOt8wPY7c523O1t0S7xu9lveqSZ0f9YSda7Nb2xaZ65/PV4jREKrPSrKD5CaQw3v1w7SJFlxnpXl8heLodRBlivUrOFOavWoKuXi/Uap6g9xP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733613354; c=relaxed/simple;
	bh=W7WfcjIAG0IjSQfdG7gs2WIa3cCwCH+QRu5id9IOUoU=;
	h=To:Subject:From:Message-Id:Date; b=VU6DXVHaiU2Vae0hn311VAKV+QBNTlUfJbvGvqZQME25SIZXm6/GKy5aEt84yS3Bn2BRp39cOijueBZMvKd60K6D7zmUCDWHVN2KSTkxCgp5Y+Np0TEZiAPlDbwhevugkt2Zy4VkvCaEz20RdCDFRnuWBFGSer8PzVWnV+69Xgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a+vyv703; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a+vyv703"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB9F0C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733613353;
	bh=W7WfcjIAG0IjSQfdG7gs2WIa3cCwCH+QRu5id9IOUoU=;
	h=To:Subject:From:Date:From;
	b=a+vyv703pQRf7NiKO21YNnDyl2g/yi4pYriHxxGsFofIe+duRNZy6Ct+pYGSTWo+y
	 cCEGaXkltOfO3x7hHO5hUZPvZQY9YeZhb0WIAH3PgL+669kBo9qgzPek2t0qnw6KCj
	 9XEtADdOeqTHq6T3sAMLK1z0SpS3kG8jp619pfO4inq+M5S943g+NrsdNapDsS68rw
	 umoAi2Fm61pOFYzGDeXb1JFs6ANmfwZflbeKyPjsGogVW/r7fY7W0C3sw9Ut+5+n8v
	 9iRL4lzTfZiYtmonT8g211g2ZFWbFv0VS+1mihwiTCfCb6FaQgp9j/uuFPqCdhgA9L
	 JQnLKtDi9k1lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A18B5E7717D
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173361335363.7095.2936506918851100363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9570dca45225f7ce8c9cd74b34383f95e63d383eec63e59696dd66e2d6f77362
Date: Sat, 07 Dec 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733613353
