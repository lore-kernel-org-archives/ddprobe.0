Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1247A1C1AB4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754906394; cv=none; b=NRLTMYToPdvJxoMRH5i6PuSgu1duhU8/2n93fzEn+BPSEszAX1tHQLEgAF2/OIaRbyxHzioQxH+QL/zDGUz8JL6Ky9i/pIG7XNKBwN8K3SrPzxZQ1P2H9EwnEhB7tT5glApg3MRyc7zm8t2HL3scOcACCn3uS0PKuZYiPzuHRMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754906394; c=relaxed/simple;
	bh=iCRCasTj6/cpLKsIss3rW8RsfDLL4d4XmFcHfMKEuV4=;
	h=To:Subject:From:Message-Id:Date; b=ggCthUn6oTFLpAxTEuaozfADyJ4diQCvVzwpVDgnMXENlsH6rDKHaO71/PD7RjIxD9QtnpsbmEA/0PJeKTHmbo0BFGWilf4Vk9LalNw11PS/7bnXx8gDxDHAqTlHQmMPpkFajq3kPLZNyc++4dB8RMc5He2GU2C6oclpyrDvkVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jkg9WKjV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jkg9WKjV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E64C4CEF6
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754906393;
	bh=iCRCasTj6/cpLKsIss3rW8RsfDLL4d4XmFcHfMKEuV4=;
	h=To:Subject:From:Date:From;
	b=jkg9WKjVyIgWeMITZYwim8fqb1eDTjf86002kdv84w1v9tbgYVeCru2tW2Kndwldq
	 UXZbDDSZ/Y8RanP4PjRx/iR1iaZ5y0kwaoJfxhnNy2K6tIVcnk5qiSPxhmTpXmi7/K
	 zkwfjlzr7Iv2JrVafrTTW78BLXtNCA/6giqLUji/r0Ee7WYqx6pCriO+2pLnQIbsyP
	 djIYbzkkxEE80UuWHaIkt9+6zSblnv0iiACSGLrbOqUa+GfFWZ03jQS0F8dV2asTm8
	 pdHObx8lOctJPLk3ohwZ/QsN3wW963YlAtuJfwoy0nNmYnRxGhpw1j/MKxF/YH6/Xg
	 ySWbswT85fCVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E59C87FD2
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175490639359.11237.7150685830444023915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eab234cf21b5c72b5c3c90bec7fe6fd669df91d2b4253e6fdee464ecc1dd8683
Date: Mon, 11 Aug 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754906393
