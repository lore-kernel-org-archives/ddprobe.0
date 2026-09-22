Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6642A381AFF
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790035234; cv=none; b=TDPytmDfCI8zrw9HbN7To+v7Qi2CWYZNqhWjhmzj1e0ZV8L3IoZPL/pICH+hxXzGFUC6XIhl6YF+H6w+fG9kXt5oR2F3/G5U68UJXNJZAkq+iNCju/zIDHam2sHDTSz7OonUqT2vwP0GxR+KpG3neYNb4njfIVP12qNqu9djPxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790035234; c=relaxed/simple;
	bh=r6/KXUltKPUl7p2J91p7ZWSjsxKhFUj2B3DOvo1Wngs=;
	h=To:Subject:From:Message-Id:Date; b=Jjj+kuuPrx2m0O9qAen7pb9Ca1r+oi88rX8lfPyr6Qray+izKL0iYhNyCrG4WL1j+7hR53vMHR/7miblioOXBZG7l8bPK4Ts1RnkTHnTfP6fy9pu/zJJpR6WZgFG6C7/EPnCXp7o3wHxlRKpq2rjASljXCbMXZqlryxGPAv2wxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X9g5dyH7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X9g5dyH7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBCCBC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790035234;
	bh=r6/KXUltKPUl7p2J91p7ZWSjsxKhFUj2B3DOvo1Wngs=;
	h=To:Subject:From:Date:From;
	b=X9g5dyH7MRzqk6uhrYw2ML7AVaktKG7z6OynsAh6rIqQq5GAICC19y8u7UROTBlN3
	 VyZAkdbzG0+wwB0jhY3uejFino6cjQTh9fQELKOYwtKhs2sO2DcdMYJup0uHPaOAXM
	 4djxy+QOOZfPIgk+M90SbMsoaKALNgjxTyOr/mKv1WVyvPAjJb3yCGdKuQKLwsaFcm
	 n5zZ71baS95WJUw4Tm4R3y5OrVWOLrW/3bpKOvYlUaYRLXA5eFcUug4tuooMKnWqo/
	 8Qd26GlMyj4Vf5/UsDRC5/o7mFsBkEdyd7jdIWLm0+hP8mqQbwVVniahbmPkiEPXtq
	 D9uULB68XdwhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFEE2C982E6
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179003523375.19619.8337478259466992890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf8eac0c612dde4e44ac80ab0506e1f73a0bdda6c054025ffce0ff5982b6e9b6
Date: Tue, 22 Sep 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790035233
