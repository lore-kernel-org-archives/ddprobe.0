Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325721DFE1
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753081194; cv=none; b=CgJ9GZ2YJfTuUonlfT61p3qUzR9uPqtySHQcKCJOC21FMafA/GOejjh7Hju22KBAP3THERpaAghEcoZ/5K4x0s2zHUOjjJgl1yx1hBoOjOCDbK7wN1Wd9C0jRvLDW0yQ6wTNVNDlySEtADzlzsOcyLu6wrzp15GQaKwHIcUplOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753081194; c=relaxed/simple;
	bh=cS3peb0KMTLp5d6MyyZxwD0Q8aI04q4Hnj4VGOOhTKM=;
	h=To:Subject:From:Message-Id:Date; b=bhhYr4Tpi3AqBVuGL9P7cPlD6zXtL2JoznGz8sHkp/gcuJXNzURBL5cfPLrY6R9iIzQ/qKd7sWGsrzOpGiKv4CFyi7DBLE7bEOzTLPeXEimLe/m9nVYX68BIO06/tBVIojxRpBACb/DohnyB432kJlXIXZ99VVmkPPFUi2uKMJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Twr4uAAR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Twr4uAAR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F35CC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753081193;
	bh=cS3peb0KMTLp5d6MyyZxwD0Q8aI04q4Hnj4VGOOhTKM=;
	h=To:Subject:From:Date:From;
	b=Twr4uAAReE1qHXCMMmtdK91hV4ALQtDe3H7alvPL2gXDWVjvUFeNLqQkyRGTD3qpn
	 VaCBz7+5TxOpIEeeKI4nxBNcLEFKor7uH7/kbEbmeIu+rlQ/y1V4wjZLB+af7t9HJ5
	 NH/vK2is+ZBRtOjFqIo2eMSV8H68LaZEttwpbBbZWdsANepGGBpuTnba4QYeV1dumy
	 ixhsUEYdkkfowNltg4T2NzCqSO8pw2dqATFUUbY/qFOk/rEtaCvScwgQQPdayq36wJ
	 9GeESyiyXbBXdu9GSK3gwabiOVbd2qx/oNauEbrsY1pdoOVqzjkKGULGwB7wHDkkX5
	 lJTRoD4MFABcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AAFC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175308119358.16134.16598024228263177998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 293dff3457184a9d8b768757358c75b7a16c61e410b669108fc5bb55fcc0bc68
Date: Mon, 21 Jul 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753081193
