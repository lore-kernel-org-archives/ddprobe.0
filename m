Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5844F74E09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 20:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719606263; cv=none; b=dhbjpjAkNvZzD8JLIZMUXKSKEBp73pUDKgJsjvRfV1qz+oTtyZPUE3rWeoQlH/1aFM/L9Q3SFPpLatMLcoP4MVRPLGzYpV5XdzdmjtsP3SjnUhFUbVLH/V99qTmS6cHtXU9p3Gf01sO9F6kZPc7V0Q1vv+P6Volc5Ldf/5R98JY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719606263; c=relaxed/simple;
	bh=bMHFXZbR80GgBU2T30yRYd8kUxPuPccKxvQm9Dg25LA=;
	h=To:Subject:From:Message-Id:Date; b=WCVlkd+glnepXTpzGiQj8XInisneRsxBBRlUN1ldx8+JBNoofzNwpWxPWbiTxK6Zrc6XnJYnTCOt9cH7opRn2x70t3l24ieZmMRT/pThjaVQlu5iLMi9bwNjUax6nQDpBcR+UApmTa4zmsRzKeizS7T7U7G3jYyJa5IM9A65MQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CvH7IxOL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CvH7IxOL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8DEAC116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 20:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719606262;
	bh=bMHFXZbR80GgBU2T30yRYd8kUxPuPccKxvQm9Dg25LA=;
	h=To:Subject:From:Date:From;
	b=CvH7IxOLbM4WxFz0B3V1Ja4yoGpaWuX9H28f4kiPuKGR+Mxb1yq6qw3mlEIznM4/H
	 uYPkBpxPR+xd40oyyg36nykDWe5hr75/sASWKZMWW6h7LN/h1i/Tex8500pvM1/5y8
	 6MEc1V+czbySHXTzNoOs4p7ITVGKIOlv9TCg9APdcU8oLpMmeafWwq/oZ6wSAlxaj8
	 WkWfCKAvxfogwifV480h2z5eoQSSpc7Rfeat6cUBMLC7/95RNXjpryhrFdPzG0mKBI
	 jx+lZENoXmnGnx67eEh3sqs27Gzrhb2ZGJBmMXrN22FwSaeACeyiQd37LCYq9ABTS1
	 wJ1X9MOpuOSwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4493C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 20:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171960626279.20361.9639421649383678354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf594e19145f12db8b89b01fbddfcfa9ec5801af1b3a8e10eb08a7d421fe74b1
Date: Fri, 28 Jun 2024 20:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719606262
