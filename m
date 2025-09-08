Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E81E1B0437
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757309994; cv=none; b=I+rdOHbhH28Gz7zK8wteySB9UTySpNGxvx/qoNAgZaypEno6Xgy9VS/zs5LInJ97FSaLthsEC4dKxVQ7BUyp14kzfia7QKtRCmQ5y+QjjuoscdhvsOWz2hmbKTUk5WVCe4LcdGVTw5/RU/A+VPOf82CGmixwClR1YMtLHaLDFbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757309994; c=relaxed/simple;
	bh=21widE2asCoNePGsOdvBH2LmRczaoOwCdRUIhS+r0dw=;
	h=To:Subject:From:Message-Id:Date; b=Y4+bm6g/Ojesig9sxTAi9E+OIxIZs2qCGXutuAwMm+dCNn5YUIwE+N+710ongDG/iX5i/mr2JhDAmcu525YxkPk2rwsaaE425ixLlTEx4VgFfN9KQ8DaVBy2FQPzy5rgiZNcs8bjNCgAXMf/iDzwYinGzAouyh79OyZKpvCHTmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4PXlpLd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4PXlpLd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBFEC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757309993;
	bh=21widE2asCoNePGsOdvBH2LmRczaoOwCdRUIhS+r0dw=;
	h=To:Subject:From:Date:From;
	b=A4PXlpLdkvjnFk0OYZ4MTcUfggoGEu3bojlMT46TIQj2ZAVcBRhgdJfUTeJFBbmt/
	 A3cj9qZQTYOS9EWSHTV4XHeQOrf1Y5yaqLShPEU9xGPGUCcnkHPKZF7svyh/2Ex0Op
	 FRsFW+HD7dHJj+577olhB2I82WkZ4L7RTZ35ym4e/dKiLDtd9q1CGiAbnamTvJYQtf
	 lKvUgOZaoGKrbUQfbJ3kTxGyV2urn2YP9vBEPcnazBOnyvEfYiPVOjSAZOsf0PtTN9
	 yxZob6tS0cFELHXDZzjbYEOX6RXqF754lSuu1tPj8d9jkhzRhTbogxQFSa6YC2k4AP
	 hd8P7TQgwzmbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6CBCA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175730999357.29439.16364960401465661665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2eaee49bb3fa0657c1df7ac2ce03e2ea91700eab9c5446d82c20817574cace1
Date: Mon, 08 Sep 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757309993
