Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3BA1376
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 19:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705778297; cv=none; b=RzYwL2UO8UfRa5mTfa4A+mdWT1ABmGVkEHn+a/vwgAA8IEJ14Dvg1RWc4q/fBKwtsekTBr/V8SaZ4Rtq88oL5TkJ3hK3XIq7HS6/+jkO9SaI9USPVsKzOsQuWSkwyksvfuKBmfqQ5ZaZA88joxZmdY9CpBglQp13XeUAm8SjuAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705778297; c=relaxed/simple;
	bh=9oe56/UIdY1gdXg4w6nKMr93AfKFCCi3JlnmXgdYUAk=;
	h=To:Subject:From:Message-Id:Date; b=kIGZYm3hy76ADYcLyeCMkdIvrd90BjelRzEVfnSmCm7frPvDmye5/tq2CnmdMOWfQkIpvIdr3cWzesj4IpUepHeniWbI7VOVXK66s568k3bMwGq7b4q8JZiuV7H3met4vfZnaluXeJCFjUmLQQhu08a+5aSbIHu9D5n9ud+aBfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bIe/asR7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bIe/asR7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C952C433F1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 19:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705778296;
	bh=9oe56/UIdY1gdXg4w6nKMr93AfKFCCi3JlnmXgdYUAk=;
	h=To:Subject:From:Date:From;
	b=bIe/asR74rLM26gRN39l0y3OF7Nbav0EW8Cb1x6XseDtxOKDmxHS88Ch79Atr4Lel
	 gdDQaxlteyX2atLVuq2tw2xyWHQPt7F7E4oNNrYqsl+/D7qHxPUkfA9NEIV8xQoyvV
	 DOqr52eoN6ZygAThBMAoOvUTFXgaxbZ16mMeJaF/BGrtMJg5UERa+vUQAezmjd9NNw
	 wd0vqfNZp5gQPkteQko/LLoGzX+i9C59qvDihYAxDfbM/xxIiUBpTsdQRnwWDou7xy
	 yGNT3o8h+5GyjMygFj4FUq79EiE93x0gtgqhLZRt0VdwnpST0yNpwTajD4RmRgzRI+
	 AkWynBSmbjfNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E6ECC47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 19:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170577829636.6412.15264530362621858443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0307d7568cdcf7559514162e6e0b18d59c0e7d85d5b35c61dc0a53cd1a3ca11e
Date: Sat, 20 Jan 2024 19:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705778296
