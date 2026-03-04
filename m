Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC523AE1BF
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772625294; cv=none; b=TiWHnOqI+0WBEtemlO0JCx19smLO/wnNDMkxBl0wScd3qtskWpv45EGtDyzqqA9wSzt7OOjL9QbsNgxolsSCS2/gZn/YXJ6WV4Vk5/b3qSkWJR9ZLx1N9nTeUU1B3vd5iwEYmDxXH9qeq19iJtkJfF2HQhlIRaiwiBFo37/TQ5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772625294; c=relaxed/simple;
	bh=ma5KAb0Qy6+ZFxxVoVnQfr2DVsQRrL/oiNFJ4g/GotQ=;
	h=To:Subject:From:Message-Id:Date; b=fGhwP45WmZYBR0AHnm+w89ET23k/TgGDigGPhPJAUjeyO2swcZrfysS0KaKVOTxfqgfHaE7VZCzTDtOt44JKSqj2wPT//GupKkEIvDpdNvANA4cqXWzvwQX+qoCt0vBCwC+jAE3t2woK4d39E8USGsgRG8xvqOVDHnI2MvgtMuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CipO8JaU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CipO8JaU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D41C19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772625293;
	bh=ma5KAb0Qy6+ZFxxVoVnQfr2DVsQRrL/oiNFJ4g/GotQ=;
	h=To:Subject:From:Date:From;
	b=CipO8JaU5RICE+MRShITQfuFFUeIQ3q6h2fh5kyfr3DqBFsZ7M0lPwzztyStwY4NF
	 Hwv5lOOlKZEvEegbZjSuO73v4omhv6Jq5YUlsIpf15jygidlVdLITBTuszfdQLCxnF
	 Xl9r8BWJoGAd1ifLu8beGbnDyIDmULa4zAXgfijeskrh1biqyPTfPVZv0c1PmON/Mi
	 lmAVWSYeK43yBAyQRVbVJV1w0TdUJTJd5yjQTmwQ1xB/FTV9UH258Hrir6ybi4FsNO
	 4woGJeq7dKKAN9qtgW5zlwIpkS21Fe4rq+30CxbSAB4VAIoedj5KnlNnNG2xxbayzX
	 7sdhySR07GK4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EB6EB7ED8
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177262529360.24524.13772515279974117985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71b8810e7381d959071da1c61b4786e45a25aa8b960d8ee9e2f8f00768712dd8
Date: Wed, 04 Mar 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772625293
