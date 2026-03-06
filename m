Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07BD915B971
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772769294; cv=none; b=AMXTfZQ3lj+eBBIvHgeNvqJL6JXyKVH/cYiiOWt4u3Vy3Qx2ujtpjL6h0tJEXqehgp5aGk37iXIKpxaq5DFqaJJalf+iVkwVaUbdIIBGIrIv0WPAFRcAURHpZaRcUeGeJp6KxfWH/GdNo5jQTmMqBHrDFRgrj+mD008PZl0JcWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772769294; c=relaxed/simple;
	bh=6KskaexRfUerDKdET1s46lCi/g/AHR3/JygFB5DDbys=;
	h=To:Subject:From:Message-Id:Date; b=HS5/7tTCXxdI4C1DVMhXJQwJpDw1L2+bYrkvtmLLXNggQWWKpbFl2FLMPVz3ViopXDwNzI3x//alCLmgeNVKJS1ZOV4WN+E4lzDBNhYztQ5SQ/ciczYXv8pvt8I6/s2BBeLRpvMGQJtEOmhE2OSg/cUxhef/Az28Y3Ph1v/OcDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jKSygiP0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jKSygiP0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E36C2BC86
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772769293;
	bh=6KskaexRfUerDKdET1s46lCi/g/AHR3/JygFB5DDbys=;
	h=To:Subject:From:Date:From;
	b=jKSygiP0YJbF6IYYkdOshY14ycqqDeyWsKoyRKY7n3adBw8Nj1kFJ4bMYkL5HzcKO
	 i6oNaIzLiDDTQO1OizUY5Td+oaKFT3d3igMCPhBUYlU62dML+a1b1PwnG2vqm7cLRk
	 CessQQIWgTB+5BVMrvG8Did1cvihCdh2Oca2M89bZ8rum64I6/t9ik0DW2cCEsD5zg
	 H2W5nwGsD3plDbHF8pXzgmECvdvqAOhgzKq75X94xPfnHbgGDygUF221ehiQp+xEh6
	 bqiLyR6y1ImK7eye+U7XyvRGcaaqzOnZBpt1ntpMyzbYz8OfPHXHYR22gokmqcEkqg
	 3WXRtseTob0NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B83F513EE
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177276929358.26087.1349243604526842249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95fca3a15b2c06ae277ff55066530ccef295b7e26322d0063a022096b70846d8
Date: Fri, 06 Mar 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772769293
