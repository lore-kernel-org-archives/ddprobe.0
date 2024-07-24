Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A92813B58B
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721813154; cv=none; b=DJIaxca67TbK2C3slEwXkp+9vytvZWLyFgonhH6tyXqXMqdFNHbNCnvi9gtaARqdHyLFonuN+D1Ucmn+/AZMHCbGbabZG2r7RmTVshPWToJ67VlpMoYX838BXQrXNfHIGtMF6w0VJRtxmXpHUpeBk8HDdNkxD6axUNxWEeJF0tA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721813154; c=relaxed/simple;
	bh=EHmZJb4m5DbWf6KAvy9/YT9M7kxknvGk7zNxZZrsi9w=;
	h=To:Subject:From:Message-Id:Date; b=h6D2r30391uvUqXjaaiDuTT4WwxO/TOy5NnJcBjFAJWmfvQrACmzrBk/n0NhNuArG4yuNQq2HLOrAPQLcATgJb+1fyi704Wm4hixiTPBcA5NhQQiG89spsMqERZIEn3Tn1keCOIBgI2KFriqyKnspT59HqdhAYuUx8Fo/L89t1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b/G7GqLU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b/G7GqLU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B844EC4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721813153;
	bh=EHmZJb4m5DbWf6KAvy9/YT9M7kxknvGk7zNxZZrsi9w=;
	h=To:Subject:From:Date:From;
	b=b/G7GqLUDblao/nNQliVxzvFiUUUk1jc6X2F274ak6QMerUN24u74lSxGzJaxembE
	 Ej2u1Dv3+kIpTEL7xc90xYyGdYVX19TZ6b1c89yrrhvRqW6k2v+Yvwe+79B66IKrV+
	 gXjFkWvMrbDxxsq1Lu8rxYwRyBoB9fsoKHhwAY7m4jRoftlZuQdcvGVRKLY9ZacFsi
	 BqBdamRqRcsJJljMITKqk+cV64Xf6qxEnUBWzChfIzmA1PY6TVE29kTRWDEgw3wH9j
	 8Tk+zBtd6XgeSBVBZd19/psr8WvTcL0ScRzWaHbkWESoqfLyo+XWLhM9m+nnQk9L0J
	 P8X1+wLP+U18A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A249DC3DA63
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172181315365.9512.10633260013482798071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b588c91f59de8e4742f37666de422b8537b41b8418684e4eb2ebed7daff01eb7
Date: Wed, 24 Jul 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721813153
