Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5294349EC55
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788528634; cv=none; b=jRiUlTBUmdAQjP9s88rdkxRjdOK1ZfVUbzSjeLo0L5nNvOYQRRw70qwD6oObhVGtGnsPy4Wg/8XJQaoKQmL8axIggi7EBKJP8SLPkJ6E9sqfGTdEtNjT3Us425LnTMDfN/82L3YVqiYquFRszxM9jCwcE5Aj5dFu2HzTo45mWpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788528634; c=relaxed/simple;
	bh=x9YPt/w8JoxyeNY/trxaOQW5OkhK5RetfOICUTcmxQE=;
	h=To:Subject:From:Message-Id:Date; b=sEeGKwL/SdiP/OsSl9ckxoOi+PwKIvhxqqURGAutG0VAM7kGoy87ni3kPiJPYVtqOiWKgw+sF9L2ECjAc7bF1TPDkWbHqY8Dfj/aQAglAiU8HmuVQqyHnbfxEIx8MBe4NLByEJNTHKqYf3NoKtLtn6cAcchU2DJAkLEavsSTe08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aa8PAHof; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aa8PAHof"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7947C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788528633;
	bh=x9YPt/w8JoxyeNY/trxaOQW5OkhK5RetfOICUTcmxQE=;
	h=To:Subject:From:Date:From;
	b=aa8PAHofL5a8tgVBrHhgftUniZzwRxBAt0L6/RaEsHMFQAxalj/LuObSo2sJvsDcD
	 dRzDVY4kqjI86c4ja3H9NfF8oIqPmmbAAD9khrIA+dgQ5UmBgFw+4UnFELjlaNUalk
	 BTx2ib01j4toafmnWHbfNVgFNbdtMmKoLFPeuEuW96G/QLe4UQGQ7puoPa8sIoh2UX
	 DiMWZO5nMzwlM25gTcFfmAqAWxx1X5tvmauqW9Vbi4oRxv6n3kY2Q2P/Phm7n/saFp
	 aR4dTwebCH7FEUVVoqsB/XT7x0w7e8qiVskGIjD2MHFb++yCE0fIv4PpoLuqjbpvQR
	 0Ob7mnW0I01UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB3BC624D3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178852863369.27466.16909877227642076113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 881cda46d3d86c6e40dbfd599c3d924c40f5b4ee3ee4e5f0e3d194140dc645ee
Date: Fri, 04 Sep 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788528633
