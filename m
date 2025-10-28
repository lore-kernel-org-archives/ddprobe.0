Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B311EDA02
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761628794; cv=none; b=dzNIuvkm/OvKidF5rIjNZ0s++yhal93a16SbLu2/xUa47Az/jmD7Tn/aTGt1wgYtlCul12S8t6esX4psFNElUQsdD2i6IA8exbx28lnoPgm/YKvyAauQ67mTNIAUHYMfEc7EnRy+N/0ezbknABkJ9mIOjkz9KEflEGnwBNSJs74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761628794; c=relaxed/simple;
	bh=UGfBrXfHX1JF0iCpW2rD0APxuCgVZXT5UPDDEuL/VQ4=;
	h=To:Subject:From:Message-Id:Date; b=r90dPmqw6fh2ZL1VpDaQuhqf2ZqL1GGvw672bapLYGpL3o9lmL3h+hY+jvmbmSgllUvaX/64aBKsfVsw6nStawT07fT8hPSQkxE+6dYtuiXuoPkIaDhieILlVMlFIYs+VMCNf5QktghsOEkob/6E7DS02f0u3rU+FhiFtdKA0B4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d18DRAZB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d18DRAZB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03F9C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761628793;
	bh=UGfBrXfHX1JF0iCpW2rD0APxuCgVZXT5UPDDEuL/VQ4=;
	h=To:Subject:From:Date:From;
	b=d18DRAZBNGlqNcVN6Zk3nItzlMFE7fa1ZMDgeACQ7OXlSVyygQryc78vJ+axu/3E+
	 RJwUkz0yFbljMqXjHtMlr3SqXLUug/Wis3C35jpCsk2ALGqvPRdb6SXktXQRmmJvZD
	 NtLxlaaIddV8yVqAuIm1y+p41BawUd/e55LlpiHwq4TgUqGbJbo4q8Y2nmYzT9JzDd
	 xSM4TFwoqa7gfErN3GSGUxMTxl/LMA/mTnXpQ3ZsciCWGUGJULniakMswyhE55jB6D
	 C2GtNF0UDeYw2+7UNEv3Q/r5m6S+RkDZtvwx5DjGRY5plCS+fQ/28Ky0XL0hU2xNMo
	 xpzbKlsobYGcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90880CCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176162879358.19652.5734922440304157359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65af24a6ed28fa36abfa3b8cc8f7c85b2784bc8a3693508990cfb2f4d5b1f63f
Date: Tue, 28 Oct 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761628793
