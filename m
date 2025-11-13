Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE309271A7C
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763074793; cv=none; b=AXgu4fHyuem81ujqhZkLsJkaBsYwAlLg1w50dENB/yrv6vEP1BsvoNMslwHaouEElA7Svo4vw4ciBVYJdLM0PIU1emlgtyHPy8vn/xAnuxYiST2zq8O0JZfqn/eVXF56YnNLFxqZBAY0g2OnjoDPUW0tytLZ1otJIDV+H8LYnOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763074793; c=relaxed/simple;
	bh=gsKHHtEDNghK6svl9tLbLNOwaBfEEXLsB1P7Na3/kTM=;
	h=To:Subject:From:Message-Id:Date; b=iWqsjRDZssN6ULgQ1MfHRL6rBBOBj/dlHm0deeewykidLFRrlHtmsPHoYfTvhwEnE7tss5BV3C9cwoAZXJ8IAMKMuuf4VUB7FR+2kPuV8vqPlWB9vExIx6KJVlz1X7OX05y/jxEBYl4c5IgmDfQbJ/DXfMTZDEy69BGfzt36ieI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MkNhdpoI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MkNhdpoI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A43C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763074793;
	bh=gsKHHtEDNghK6svl9tLbLNOwaBfEEXLsB1P7Na3/kTM=;
	h=To:Subject:From:Date:From;
	b=MkNhdpoIGzIzrf+pvCCqwjtdSIG+9aTWiJOTDVNTied5dYkGRKRr87UjvvinnYYe9
	 VCRZAukl36dtLUlXeHUd5G5xQ9a2DU9HZCRumQK/xsiq3gKJwF7i4mEltBqpZppEu7
	 WveBz6m+P8YvXMs8IXtQSNltbi0v6H1g/eZ4e9DOTFx7l4w586qANk1alZ3Wefayx0
	 wQ5HEF3NT4qPmkItocfsP9QzfjXpQAJSLHOubcYVAVvIkSJ1aAEIBK2Uy+BNZ4cTIE
	 mcYcqOhfDWnqKhowd4RgdKojxCUAiyjHd9cNRnSATPIN5gkOQBVUigiKLzHUogd3u5
	 vr3p/gcjdaiqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92492CD98FD
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176307479359.29067.2217261881130935386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a338c377f12c82334f8e4a3546767fc9033396a61c94bf2bea74fd376839949
Date: Thu, 13 Nov 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763074793
