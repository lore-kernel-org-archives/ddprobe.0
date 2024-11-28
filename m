Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384EB219FC
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732772754; cv=none; b=EyQs/3zBSdGzCK6uC0XyqzY9slyDoyb1JrBGXev6fA1qScleL3LykQrW/XQE9WvNVwLaMMJ6h0SC+18xg/PZRBHRAsxwoHN2TUA32ydSqkvjPTSOh2/G4q60HMDZ1SGmAeQ5e42lp52CGMqTB/DYHMS8NdE6EWEOegQHONomkJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732772754; c=relaxed/simple;
	bh=V/PuEv9MHVOCjjixI7UTflWTZuG+wUFqF93vJmHwGKo=;
	h=To:Subject:From:Message-Id:Date; b=G66UyOuVIQRW1nHQqfgl9Q4HVnN41NCOVtLrPXbDQzvhGI7x44FAYQ5s+Mys7N7mM3TOOEya5ozkQJe0pxFvqGRQ963bVNUcAFTSD4wQUtpPao+sF8pMXKqwfr58XlMfPS+ECiWm+vKUerpUVbyPXj/d+bjsoWxzMv7zb6qaVdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X5vxoIc0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X5vxoIc0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD1CDC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732772753;
	bh=V/PuEv9MHVOCjjixI7UTflWTZuG+wUFqF93vJmHwGKo=;
	h=To:Subject:From:Date:From;
	b=X5vxoIc0XSLWH9bYtjeNJj5H6HGtcDUG2NR0JZF5m9hzHddFSnojFcei64Qzm7cxd
	 H4PqDiIrklVfUjbRtAnxicyGrALjAvzJtLNNj5q8uQZVw5sV3w8xa9QkamnieNpl2/
	 +/df1MmFBzPdBmnlee1FBgxLIYj6DL6B/ugF/1lQp0hAxsCbVPOBoeDTA32KUyHBDm
	 FlQt1k20j8mo6vlvkktVYShEl6RPm1LUmBxIsoCzbAqfMLpDvWcGcTxn6HyVkBBi2f
	 wnaRDYUrU/GsCF6bQmYAUDTztnHZf8hpm3iIFfdPOS6V7QrT52hBHPVls505FyTLRq
	 cUqTd4ths9JwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981CBD5E39F
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173277275360.5079.9646346821894348845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09d9313b6f39069d36a830e1eefce864d717487927e9efd894d9d3b3daca9bf7
Date: Thu, 28 Nov 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732772753
