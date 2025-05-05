Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33CC31EA73
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746445794; cv=none; b=p4Sm+fMJGGjQme9ra8wKf/097hpu2T8ZkqKESj4pCY1A1pVu9EkiiGzqWj6W63v7IWdrPXa1et7FnwDk9S8PBI2rWPkl/S3nw1KaHEsOVTVONXkg5C00ngOKMBn5m79jMhYaTn6RiqXkiEV3r2Whm3BAoeVDI3B3n4BRd0hEwZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746445794; c=relaxed/simple;
	bh=LQ2eF0Gz45l1pI8ijmPybA6uxziv/cH6kisPkd5PrDA=;
	h=To:Subject:From:Message-Id:Date; b=R5aNVkPak3Y08GXBPXzvoqvr5/PVkBJYobwn+4OR19bBU7sqVOCmie0h42pl69uwRxskKoIQIRTyMRHBnccWw24XdoTl9tzVBrLMqfEDLsf1wk4tlndUuyLUOCsiAgFiZX8Mg9/Srhx3M3jSs0qSKhkv4Lrw2CyBWiTRlGKpyM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p/351VWx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p/351VWx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4240C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746445793;
	bh=LQ2eF0Gz45l1pI8ijmPybA6uxziv/cH6kisPkd5PrDA=;
	h=To:Subject:From:Date:From;
	b=p/351VWxiIR/4Bn1VEZDsbVaLP8v9d8SJdcAXPluLgKROnjwIorO2ZOmMnn2yZhHi
	 sDOYxtSKPzs1adYxHEgpebZ12XXjlJEKeIWu4Z5ZPP4Y2HQRXtUkoX5hbMzkLqsGGX
	 J/E/qqxDfJidsIUufXaK4p8n9yqzZsCE7IKd2DDCXh5NHXgz0NECtO5axUkc62rqEq
	 5KhGBZPBossmbvJpywDrT5KbQYPY5JvRthSQYXm2I7oTFBtripKvIi8O10hSa9wICz
	 fgeUKGZbg422AlGAr6u1ulh1HB4stE80eVtJoKdg0vefhIK/5jG3WnEn5wNg3zrFdL
	 Fj2uz6iBR/z9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93401C3ABB6
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174644579357.5450.984049783196942714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58e46fc3d0040d955a05ada16ffd7385cc7c721662daea095a62b52ab304a276
Date: Mon, 05 May 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746445793
