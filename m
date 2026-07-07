Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BAC3EF67D
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 13:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783432114; cv=none; b=qZjvJ0klpB9I7OhzTpSOqxGl194b5I+sDjDHmYOYHML97tku78yg+y5Td8muDV0nLVmN+hfqMqqLKocnA589YkPNNql4l8SKSycby0nPixhiqsGE8atEuKjZoO2l9uTs22e7SF9/bFASoeZjckNOZrbwrBgrMZy0TVWFQnIO4yM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783432114; c=relaxed/simple;
	bh=27W2WUQujfN2dN3SyaCqZ1y6eOPWM/fDV2JvoHCryII=;
	h=To:Subject:From:Message-Id:Date; b=C5f0xXTAnMc9xyTgHMxha+FJ30VKeI+68tRiGctDsCOFWOpLPxzLNTOHe26TK1TWVr3l7aTBI83LIWx7CzAeFWG4SagC4+5JrGpkeIJZQPz6p8aRcyexhpdhmNIcSAdpM/OycrXkJ2Fck+KaMHEZQabIqtsjzvtNttt9U6Qohmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YeWMPt/m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YeWMPt/m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA60BC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 13:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783432113;
	bh=27W2WUQujfN2dN3SyaCqZ1y6eOPWM/fDV2JvoHCryII=;
	h=To:Subject:From:Date:From;
	b=YeWMPt/mbgXugyjnsP5HqMDh7D+obV6RvbI2+nML3z9eD7YOMcaC71Th2VcmuuZgU
	 vJ8FI5Yi+qe6Jis8Sn7D74AwN3owjRtC5ENHySjHNOBL4mKMmEctDW5tV/ipEvjOHR
	 bKUcTxkvNE/X+bXMkmweKWHczRcd5toGdbHQcIfk5jjDKaYXAV5jTYH5r0O/WVeHsx
	 aH2wQwNIkRlhtb9OFnxDhuUJ5n3/eftAIHuKEqL5AqKCe9DYaoNrngfeM13ZRufrpc
	 rllqPtwRMJBXEAjOhtCPzykdizOaiTygNX7WPNksqnpt3kd1clkqCgjYO0EBQ1k5c5
	 0dA40WhgbqRUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A907DC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 13:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178343211368.6860.15008626008562997419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeb27daf1bf42e4aa55443c307d23181b1539c2c8dfb45fa3152c87bbe7bb9e9
Date: Tue, 07 Jul 2026 13:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783432113
