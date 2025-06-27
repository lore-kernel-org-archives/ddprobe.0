Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7A22D9EFD
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751030395; cv=none; b=QmSXYNY71xL6fFm0gGNidIgJLSU4a4vavU5xCf7ppw1K4b6LCDRz7x/XqpubFaAXwr4h9NY18EiQyHoVFM60pdHVOsc51FRl2vkzHx6ARw106tmwF8DRvY4/B32FYiGLuUNauYzhyfTm1+CfncaQ+aJZeuuNaVMANovm6VQwZhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751030395; c=relaxed/simple;
	bh=IZ7u799h9O8nyI/1TMX5crBfeUrFXe/c3m0fPhQ7gXY=;
	h=To:Subject:From:Message-Id:Date; b=ky1Gzx19rrF1+984yBm9czmrdoMJTcWOn9mHlGWcUbuvKcnrUZDJnsSDciAYoGAZ6Y/c1UUqXnHR2OiVj7NriukseCy/jTttBx/8To6rRCmo5H+JydGeu+8u9OC7eKuJJDCAFmB4N84xgB2mb2TQR572sQ4QOdxX9TlrAwmg1ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YxJbl8sc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YxJbl8sc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4159C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751030393;
	bh=IZ7u799h9O8nyI/1TMX5crBfeUrFXe/c3m0fPhQ7gXY=;
	h=To:Subject:From:Date:From;
	b=YxJbl8scuqVqWkaGCEoKBVcS6UHqmg6thJHJF1cjjPy4AYXm9wTmn8wpqTMu1sP0S
	 TSUh9tx76XIu+d/USHr+n/mm2krYw13KMCEAGLB7i+/2NveM2IKZiUqO+wG4SJREH8
	 2IjkC7HuAn3hNFqtaL5+AbNxyXMrs605qUGMVQg54F70voJiHdFUsvMk1wDMxlN8rn
	 qVrmmRkKsZ3KhdfKI/d4QI3So5bre+0Z1VF0c4ap5TBUrrgsFpksy43so4fZPyx6l1
	 Ql/B42dLNpR32M1LuG4TIG/Y2FWA5PwsIxAxIL8NyQMKNJdQO66JA78I8li6bNkQNK
	 FweTHDfS2DgfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901F4C7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175103039358.20733.16806334523683743145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90d7f4693ae2e6a68b98eae1d6963388429ef4c4e0ad7283eb98d5f654148350
Date: Fri, 27 Jun 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751030393
