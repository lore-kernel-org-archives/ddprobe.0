Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B9522094
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726952154; cv=none; b=FXWT9QdozQ0iRsW5Or9j6o9QrTqZkU0x7X+AJSNKOjP5Fybgr0g/6UbEgO4kmEOHdooGng88nMvBVgCw2Vo0yWJ78SvpnCd3IAduYGtiYeFmPywLMt2EqhvgOFqQUwjnv0SrQE8lzg4VroC+i09QH/oBga0/gjlPVe00ONvi4X0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726952154; c=relaxed/simple;
	bh=bCsX+n26Gsq5K92+Iq0EsdrSLdKPFIrOXRK1wiHKewQ=;
	h=To:Subject:From:Message-Id:Date; b=bmUnDvV7f9X+5CvjnE4voUWgntvaO+DRI24vdKH6J1RAQLVQ925pNTBhjCTYiy4XYTrwKYn3ogfjIqWbLrnegrTA+Pst2chrJ2LO6mi0Xm/Rn5rY32oLW6oqO8DFR7ucR8VCkmjW4+iws/c8zWOUIcZzsmcLeKEhhK0oU2Wxo+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SPK7/MWJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SPK7/MWJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22E6C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726952153;
	bh=bCsX+n26Gsq5K92+Iq0EsdrSLdKPFIrOXRK1wiHKewQ=;
	h=To:Subject:From:Date:From;
	b=SPK7/MWJ/Ldl/moIpmjZyzhA+6bVDwHLSqWCahQmDpyPjAgCx7IzgB7XHS58PIUku
	 qWu3eGtQ0v9JRVy1KX+97vWirHtkB1ENXW/qRDLfxnurSjEGqsE5pLm7zW43jIqPh3
	 H78fo3Ia3YgY5805oyBSdxqJ588SoZYbHLG6fefS5+wdpeDCfLIYg4IDX5v1yQtAJY
	 YBWJnfM6DHiu+G/VLvkng6iEhdGTRFbwmcRdWVf4a56SP+fqyOjB+0DEZDSEnu5i32
	 dZkxHY4vekeOKHJqwbdWj66iaD+l/fbjHqg/QZ2ROUHsQnfLiKWVfyjO//knHTjI4I
	 zS4XgqlhVmTDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1A3CF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172695215357.32422.6363309713898029243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef123fe4d3e279b6d0acd14cda09d87b47d86410406cca98af8edac0dc6ad08d
Date: Sat, 21 Sep 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726952153
