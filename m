Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5004B3FD132
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786651834; cv=none; b=cowaX7KphxQgv+zG52dQpe92QN5pYB8twHRD/vDRaMKH0TWHifyIY9xrwAuGsy7M+v0M9DLTRsx9Rqt8ksZkEV6POSLQUZ/wFWInrQ7hjd4InqNJqAV5p+XZka85riiW6yorGwDfX8IComz+0BPnqpJTnjCqiY+PoiXvqhh6eEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786651834; c=relaxed/simple;
	bh=RN88Orh1K/AguAUIZaZT8jf/l79jrESeCvrGCZB761U=;
	h=To:Subject:From:Message-Id:Date; b=ae4/EuquS/ZFgxQByzqg1c5H7oHhG8amIltgB6x6M4qdYb/0O7CtS0JTLa1WyXX5f+cwAdQ5iZ7rMcgVKyot70asYfey6iJTZum20wLSOSmYiLG3lHPnVg9wPax1iz8i1LXNqDmEwBBFkOJ6AqE95zT1RMNWwmYFKLrpgpTB7a8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EKLto1PU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EKLto1PU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D995FC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786651833;
	bh=RN88Orh1K/AguAUIZaZT8jf/l79jrESeCvrGCZB761U=;
	h=To:Subject:From:Date:From;
	b=EKLto1PUENNdAP19NFkfpFAhB4Q1D2BmlhdVNR7RAYbf58EM+buVsNgaeb1h8pkmM
	 Xy58Xn+K0rgaMX7uece40Oew6mL9ocq4cRUeQ3El0tytHFIoM9zxSma6E9e+R3ODlS
	 MuxkcZ1+Xme8knrGE/kFXl2r7YRlylqghLQJEqo8l9Wq9PSKrtYEYNWDUCA5NNS41b
	 d5RIWxi5Q3uBAZpIdHOI5cX1+4KV0JsJc/BPDEq6IhmrglRzv+0gD+QOLSRpf3tfOo
	 LfRh1Qi60jfcSeKfOuLUW5XV8R2MxLShFbyi6/OmZJ08r1UUEBpznH+YpIQLKVWqjY
	 CHucl7QJa3QCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4F1BC5CFDB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178665183372.7066.9255730709652772211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92978b576c737ebb700157ac74773cb04855da481c377d18ee98f5d8a3115e51
Date: Thu, 13 Aug 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786651833
