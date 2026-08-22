Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577852BE057
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787365234; cv=none; b=Y4xH/pW3+z/SavLCXYH8XyO9rXuF1MociY18+mLMdRX4POOBxcEHKlQiGW8OKlYBfrwzEM3yD9+x+YhYkyroOP/fyUobPtAb5oq0hKac0Fe9bfCTpInxrwOP5/ogr2MQxZlb8sBDtomoSKXH/bTL29H5mEf2wZizrzCF/IK9hUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787365234; c=relaxed/simple;
	bh=FmG+/jMpIFDbZMKRMhjYy4jOor7P/kDmOP3WjecuznA=;
	h=To:Subject:From:Message-Id:Date; b=ciqKm13Sa4GSQuwZVC1B/xw/H9aAB+AxRBDFhYl0UjBAJvIHlhdy2WVIe9uPrW9WLOtryx4haEcwECDxL2ABlNSqcFYlyFTO41fdF6N8rx2lFPSzQP58p+tZWykvcV9GSi9/thEEZwTZSS+xgkUEP6iM0dpDCP8qjHSkDZ/8p+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GXTN9V+Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GXTN9V+Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD84FC19425
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787365233;
	bh=FmG+/jMpIFDbZMKRMhjYy4jOor7P/kDmOP3WjecuznA=;
	h=To:Subject:From:Date:From;
	b=GXTN9V+YVFc/AonA6iRKopPM85qbOdK/WQEO/V/WSBD1yZhDbMm2BAK2cu8Bf7lom
	 a561/DZAsi/t4sOuRshoTIy/HwL2rWAtPvK6lLGqqTR3PJI8aQBMUk/8qmCGO6csHy
	 Or+tqeUGwcSBBzE0rkUTJbknHMq44Cx8L4GZqHYsDc4ohDB08hFXlCIHrBrEm/i+cV
	 hnjrPQvJPbpDG5UOTNad4pWIs3ihd68B9/P4rHvkgqH8j0z16wRDfpliQWu4RmClb/
	 iukFriOJEViwNDnecGpZLU/33YzEmXv/xogo/I59ufMXcfMhAHGvIgmwef14gf0mnf
	 7NBq3KpIdMXZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6ECAC5DF94
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178736523370.24756.7035367942721186973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43566105562c028dce6a061e4b3dbbd85a2ee6b845da52e6a3e8f66333262b25
Date: Sat, 22 Aug 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787365233
