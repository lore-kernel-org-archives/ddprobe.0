Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 463961DA21
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742518794; cv=none; b=DK7EdWj/pzLF4GPCmFGpnmtFqHUjykAzbaciW0bsFdGanrssEt2trrvsSZLvv5BmczFWDKGIIY2WOn9JBTStxp8JvJyHJWJE8qoPuTPQvgltnBnysRtJTV94ZulQFw1kp4DrYYX5S5co0JjDWZ4aGGKXd1OuAroeAWHyRROLoAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742518794; c=relaxed/simple;
	bh=lbnJ6bKshZgZv0SNbMiDTx+Fx0199BhOkiVr4IEcFho=;
	h=To:Subject:From:Message-Id:Date; b=nXHk65cSzPGoRsRjMleMe7sRkd9ZLZ4/tmED1gsPTMjPqBUYL4j12+/lBMS13QXY/l34Oc9aaRmPgUj1p9p+WIFO32ZuhWslONhhCB8uOAxb7m4PQbC23ERhlGcmgKhuNgbLg4Zdzo+HkIXPjhpJ9IpTXSEOtyOkZTnqEyl9Hco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eNkrz2pB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eNkrz2pB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA207C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742518793;
	bh=lbnJ6bKshZgZv0SNbMiDTx+Fx0199BhOkiVr4IEcFho=;
	h=To:Subject:From:Date:From;
	b=eNkrz2pBweGMNoJKmtj6gXeAXwLGj9hFrM8ENWhJN10jPYPUwPpWtmIEfDouQj7Os
	 txPLiCPvJvKzYRwZwH+l+rpw2LaGWhgPOzHllSacll5L6VI7JSkqeYaxAwAwx7F2+E
	 A2OqHJra7CUk4RCfLRQSxGiofbqYtQITfbRHqS04BlpWAAEQZbyLqIajRF+1kI8YO3
	 Ask4DH5/WfwyBqaQm5l66Aa7UVzt7qg1xUZJ6puEhl05bsZadgBGFnxaRDd6PLBV/q
	 I897Ah2y8vb8RVljDB/dzwiEJcmEzJWJAMS0oP7BErXBEBrKifloF9yap/WVnetwdY
	 q7vJ9HlfhrF5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96861C28B30
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174251879360.2037.804853140411294720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a83e0baed383180e49ef8bd6a819345c3f69c76761c9de82c0b35271b5b83573
Date: Fri, 21 Mar 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742518793
