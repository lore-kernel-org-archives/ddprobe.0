Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA962147F1
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743080994; cv=none; b=COqFUZyv1eQJE4u6RmMAKdgUjISF5sXMBZHw6FLyySkqY/EPea2lmna7zgZwi1RJ9e81Qf1o3Mt4BFLroMMIGS489gUZ/yYXgoKjpmAdIcSuX+Uf3ZF2DM6CkRZLEo4A/705J4oXDnMHUCuC4ECsssPKoBQ970ZqqR+UvqqrdCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743080994; c=relaxed/simple;
	bh=lLoTeB99t2y3fMY6uv+WHg8WbLEhRCGHDjjmfDcIya0=;
	h=To:Subject:From:Message-Id:Date; b=CMyh7TVDd2ILHbyNd+oEwMJQRGhrntde5ZPCHJyHYsJXUh4kVDBwOZ4q64rvK+ANrzABe+pGhjA6C2akhqv1+PAZAD+XM3a+AK8luzTfADd7F/4Ynzcx01NDb1IY3qF7nOJrGVokNda1471k1NI65RksOCvwv6Rs6xYngkxmgjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L1Dup7y0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L1Dup7y0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6F27C4CEE8
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743080993;
	bh=lLoTeB99t2y3fMY6uv+WHg8WbLEhRCGHDjjmfDcIya0=;
	h=To:Subject:From:Date:From;
	b=L1Dup7y0pKWLA7qyTuJ0SEG6OAIepPr6X8jyoqYorzQG8xPi0GZrovVVp/H35nuwl
	 egvHciRREjYFwBTXQkT3tJlYsPYmhQoH1L31SAE435Ou0pYFigSdPOJhL4tERnWuEc
	 zx8pLQDDPAwOJVGZRysbFbW9wBWOkKsk0NgK4vvne9edPDN71wsM26r5jsZxXRWE0p
	 iCY4b/fXB5PqFyabMws8rt0SRLrSwLFqyh14Uncef6XG3uzugg1g3wOusXGM4APCeO
	 wR3haLoc+Llq9hiMMk4a97C4/4IrZHdCUEQNyqZmaNBU1BMWswGkPthQOkfulTQtiU
	 0XhSJmWwPKM8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6ABC3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174308099370.11285.3231213801662768045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fefc3958c920640c2737d17b9402e8cad306760598af13c4d3f71f05df599548
Date: Thu, 27 Mar 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743080993
