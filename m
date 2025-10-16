Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5863043B6
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760603394; cv=none; b=SabYt1F17QaHaD/CMLF6mJAwBTZgusRq7hXcV3ngZYIN76HEx4jPjxR/MlIlpo08diWobWneu7cTOY7KZQwpKmKk/2JWBzSruQxAqwmMnHHvR/1XrH5wpgSZZAc/lpFLEKZ7rjjtawNxh/L9ZpMsPr4i0jVTesYJdbJB9VLx77M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760603394; c=relaxed/simple;
	bh=ISFScVEB5tdr6+xmJH8q1Qml91trhKDgFprphBsH5w8=;
	h=To:Subject:From:Message-Id:Date; b=peaxtrkrYVJQZD5aDJlvkkwPvnxJF8xu7GvxtubIxXlQQAEMt5IIrF+K2kG/Eu51fVPr2QHX+yEjWWw0R5ZU+nKEd4Muz8RyJJ7cXsTWzCWATSB1yef+VBLzdCfy8Qqn58C2j/gOP6lZuwL/JO0oU4UdPnJ4fC4enQ+FkZhrEBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I2SO7f5f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I2SO7f5f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34BFC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760603393;
	bh=ISFScVEB5tdr6+xmJH8q1Qml91trhKDgFprphBsH5w8=;
	h=To:Subject:From:Date:From;
	b=I2SO7f5f7Mn9oIyY4nlE8ChtPT9eZVatfYfyRLbhRt84vkD3zvv0T6jm27fzeKIyU
	 CBA1TLh7KwxSEsLFBxXBL2pB200IRDvnq85DDb/yzOCrj6B8VIo4XDRmnDNIf8Rwg9
	 DOgpvke6LtgS0bYft8jAw1mddW72GKqAcGFl0dNfBtEvVmm6L3XAyJK6U4O+i/X9g6
	 2UkGagd48xda/XjsJgmLX+/AHtzIp+26l4rICbE3oLbOlJULLWC5Nq746CodTrEPWh
	 e/jFEOlwn/Og56e+sF4YayFpw1Jwy3grAWMs/6f3BcOkAgwtlGnxYH5aGT8+uDklac
	 Ou4NvooUgR+Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90190CCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176060339358.1464.3198595896143919912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2546dbda952a9a5f0a02ad88da579c57120123d03af1196bc3b4f43958a181de
Date: Thu, 16 Oct 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760603393
