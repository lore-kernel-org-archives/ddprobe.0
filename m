Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4888F3A1DB
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 01:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783818514; cv=none; b=C0VsmHWWJ7ncO2eL69hPmybP5TfnGkU5OXOoSttwJpo/O5QGWrJNID0Ptn+GV0c6Upf6RCGo8GK4b/GOqk4+Brb7nor1pluO4i66UJRCMOjzBw74ltjg/1IrKBbGw0ERb+aBGxNwYEkuoF6SA9qIcKyUvegZl6jgtlNYZ2QSiJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783818514; c=relaxed/simple;
	bh=FAIVONxS0umUv3HFm9Xo/30p5qG1X8aTbHnqXf03Zlo=;
	h=To:Subject:From:Message-Id:Date; b=Pp21RlR1HtWex23WPWK6QivNfv5DhOw0w1Xn83iXJuaG7Rt3BPSKXWnGKgkr+E/eO6D5zNMQWRsEeRNkX3Grf2T2EfiS+y104EHaM30XjGcJl+8H08ujxxJvPrvaKn4p0HtPsvMwjh0Yw5Iqaydyo+RgoNfTRwf9HNBh3hZBB50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L0fcEEFg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L0fcEEFg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4E3C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 01:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783818513;
	bh=FAIVONxS0umUv3HFm9Xo/30p5qG1X8aTbHnqXf03Zlo=;
	h=To:Subject:From:Date:From;
	b=L0fcEEFg89zrQtzHcN4l3edb/Wxa/ClR/KrVVq73Z2lAKluD+HHibL/OtsLp7D1yA
	 Jv5ZiFJOKW38/Cr4Uhwp97G9/KLYodUcRweNytvLKAT9HhNtHdzNqT0M5hxEJbLvud
	 OAjVaait2KBa/k/UqvAMLEyHaXIR8VFXFdc/s61HhRx5xThzbOWBgCVJ7hVYC/0IQT
	 Bqut/yIQ+WrKVBEqGHgBJtWpDdzbR9M5EvMy87bgd1kTHy4ORz4KRJ8byUIUhfNdjd
	 ysvKiBg1b8dyw99kMoDj0T5vfxl9PRsWqje2JJ9se09yd9jjjBISjRxs/WYp9rBL5j
	 YK3kZT2n7PR4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFD8C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 01:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178381851368.1091.13338794031549890147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdbfedaaf0835815918157215b03a5224a5a2941ebdfdb69426aeac62217422e
Date: Sun, 12 Jul 2026 01:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783818513
