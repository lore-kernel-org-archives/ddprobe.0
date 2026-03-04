Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AEA838836C
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772611494; cv=none; b=EBezsFTDzQU42O8k+TJP2C5WU/ugToVEZeWow6DxBT0wPtZVoVSAkecKAA8wZg2bJiN7ubjwSCWUKPg+irMfnUh2GT2/kfwOGTqgksyiVuVG6EHJHxKZiFLB4Zfg8s2BNd3v8BMHGACsi9h8de4IXZOCgfqOj/rfxyYsI6ttBNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772611494; c=relaxed/simple;
	bh=elZeYFr5lqe7rnVnOK+eDZ4PF3d8zVgupFT0yQmrclY=;
	h=To:Subject:From:Message-Id:Date; b=I9kUCD3lZOH8o2dKrTmXi3/0a1lROdL6QWS1dyxSRtvzt9vq0c6a1zdVUIz41CfEE2k3ByOimrri+Vj6ZTjZ4La0p3kZnDcc6k1QJO7YVKJzoYfZJT+Lzc49jZyvcAfVZ28qYY3Jd/gIXnCxz3Hl23ICeW0gdvbUQoqbyVF510s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lnUWVB+A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lnUWVB+A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF507C19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772611493;
	bh=elZeYFr5lqe7rnVnOK+eDZ4PF3d8zVgupFT0yQmrclY=;
	h=To:Subject:From:Date:From;
	b=lnUWVB+AgU0V+KKOpeSzLsCnKU+RgkIfSEA/vFZHMWjfzN86lIAoLmBugeChLc1Ev
	 PnKVaXnWT9Bqr3c/MUveojt8XKSgZjQKZfbLMaBmBOqgyIIRmGmkCNkwfeBBVbEEhK
	 kIvhKw5YL4vfZj/dNAJbE9sc5YTVS1x1n8fzu8JUZJNCiGbKgV8EaDbLv3JA5LwUFA
	 CrVo2zVVwAINQCuQ2j7HwLW9aZadkM6dzeSdpNxql/XOEwZM6y+4O4+wEmckg/qvQj
	 5au7KyIbVCAhcbd6CH2OhpcHx5ksoFaVNttUuLRtUX5pyJKiKj6g3rDFa8Z2YJ6fkZ
	 u0lFSUIi04ZUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993D5EA4E27
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177261149361.6238.6970328380208569643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79a915f8d0cb63bdfdcade2f9f74c5b30302fa2258e1e0f4321cbe23f710c623
Date: Wed, 04 Mar 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772611493
