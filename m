Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346642AF00
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758631195; cv=none; b=aOLeF6eRDbR51MvIN6CzvcPHa3yhfSw1PhgqXIAo81Gd30BdGi1b5lpdxJ6E/rVTGw99ixlIZbObj73K2y3ipxT49SZImtgcAW4v2B5fQBkmrvju6uE1TGMBuSLV7gg4OpdZhIv+zmt6jfAxzLSnMn7mL5dpA7qdxH+KoY3I6Fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758631195; c=relaxed/simple;
	bh=Wry6kyyPuu+5srGIczJ5s7t+d4d60QvC6Taa3T1P4bE=;
	h=To:Subject:From:Message-Id:Date; b=szps23N5mBrcOGLKt/Hc4z/giGyTntXWdQGdmqhqq8+f0ELHk8eNx8A3tXfH5kw97NnIA1C2rLOHy+S0+yHaqy7c8V3XcYRjVmAwUbSfAkr4U46bC/vW+hgNIyaJ51bHY8vCSReO8f6uk/7Q0fPUGMeQCCaOwwKHMSitfgep+JY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iO1PH1cW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iO1PH1cW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2ECC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758631193;
	bh=Wry6kyyPuu+5srGIczJ5s7t+d4d60QvC6Taa3T1P4bE=;
	h=To:Subject:From:Date:From;
	b=iO1PH1cWKgtXPBzOR1PBUVCw+rMU01Qglbe8GVaij9oVviXEe9tDnCihpxHwPo5Hn
	 GowycUO9J8HfN4cL9BjTfKqKUeV0b1cgaI08S9M7tU/oeVx3V/QlRqmegIWZ5N3cRr
	 rLxANkRLNRvzKMSa9i3QmA+fjt2qNt7Dolm7uPXfQ3KYgj3U5DOBY/AGDZORPyWVxi
	 9iuTAucTDXCORDebbsODQbCBpx1ru9nFFVw1pUXtyVmoXf712jvYXkD08ioiqqbe0+
	 W+54Ipsck4z/O7uWTKLP3jK5nhtJHbPl6mftTvPhbp9G2BQKIisyDcbOmRX4VWzLUb
	 S5GdM2+frG7/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977CDCAC5B0
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175863119358.19269.4626201103464604886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25b3102cc8939205f2a6be726c15ba566dc43f1946ad5cd5b57becdda4ac3cf7
Date: Tue, 23 Sep 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758631193
