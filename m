Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423B31527A8
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 18:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714500743; cv=none; b=pPtROZIgMN3pvKTuyq39eya/FN1popJ6Y/GgfmAvbU4Rze+485zhdudaM3O2F7T4VjnWhzMEkUEU8lXg+ceAz7YvXvV/CUmrwpi5gy/328SEYbL9i0Glgt7EvwWPmCSDeM7fh9M0Hjwyck74JvU+bDD0j/9hqNxr1UDdMWO07GQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714500743; c=relaxed/simple;
	bh=Pp/4VCEHnamQi33INPKG0t040eR6GflI5G5ZN8UO5Sg=;
	h=To:Subject:From:Message-Id:Date; b=trqtgiXziy9xpi+AlNBjzgN0UM6HPCx4i6kBt5IKy0CKumx91vU45/mFQ/aesRmXtWQA75f2fM5BKTiLWTFRcZ9b0mb8iXAgFpzRAGXn3W52gZYkVDGTpzKblk0EqDVGCa9DjnQrZRopXLgsapnBT5wfGgGDe2nA6bgWitIq0p4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nMP1P57w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nMP1P57w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A3BC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 18:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714500742;
	bh=Pp/4VCEHnamQi33INPKG0t040eR6GflI5G5ZN8UO5Sg=;
	h=To:Subject:From:Date:From;
	b=nMP1P57wRlfS/DdjX5arZP3arTsCAhx2rGQa8G+P8Q2OxMbZXEEshXIl90jpgb3WZ
	 QPW34r0vHOQOJKexSeijcfqrbicbl7h6iUCWXKRqFA3Ci3KYRV9hXkqYkKENLJUVXy
	 NrvPrvcyV9taY6f91TBzkArc2lAzXgkTe10nqCFzwNdZC7riJQ80xhoBRkpZiItw2W
	 uBpz9Hiy2tU3j1HGB5xohPjFnxvMbuodsSnffLyevN5dwOwt9hwFq9Qvnup+VdsgV3
	 SoLzpRl0xHUYFnn5ebQePnCr2iW4erJl3p9edGNlq2qV/3pys8XseReuNopcfWZeF0
	 jicdP/qzcltXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C18DBC4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 18:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171450074278.17463.9561813791794549641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23f765522175e2d2e3847521fcd3b71b5bed368964b3e07e762d2d5f3a076f11
Date: Tue, 30 Apr 2024 18:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714500742
