Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C1636AB5A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785210634; cv=none; b=MJnYnnn1P6B7ehF2HyC4NvHtsOOExkZKpr+lTwcZcG8w3S3sD3YGYllbzVgBVZ0NoGTo/50g4OjnT7clQJTN9AVpfHZHA6Q09Fdhy/4yG8eBlRSwzq2/6odOr4r0nDdh6SvVQjDgr2TFmzXoSgpgBENFYIAjB9FLWa9+BE6v4ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785210634; c=relaxed/simple;
	bh=s1e8H0Z1bgwRWQ2ggXvy3PY6alF6oEJYFBFD1qiEDZM=;
	h=To:Subject:From:Message-Id:Date; b=FO7vnpvScwVjSPuy0fbqX0qqH4zpBH4kWWwY3cjvDv5ig2lUfzoxWL/86ETCJc2AovZo94p+qGh2w4hKenqs8SEmR1bgQYefotmmQWiWWLRfZ/MqUeh1jw35aydEqDTCfjGQR77Rd5lkfmOPz67d1exQxNGbb/PaklMNccF7cQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=trJRl2Xc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="trJRl2Xc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C8AC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785210633;
	bh=s1e8H0Z1bgwRWQ2ggXvy3PY6alF6oEJYFBFD1qiEDZM=;
	h=To:Subject:From:Date:From;
	b=trJRl2XcfhU80in3fHMTSeGwZx4pdX9mvCA6w9UQ+fW/s3/9M6Ccloo3kbKpBUjAP
	 tYnkeStD1NKvS++wEoG6R3S9OI607z8RWI4HWuKH2GSs1fQRySY1y35ogy0wSFPxeJ
	 c6AOr8YJWqvr4b8pI0x3MYADYmclERcgoZ2TiGKm9Xi1kc1EBxj5DnNQ9PSuXFi7Nj
	 u+12ys4fOx+RLdq4uVKXfH2XxWF4p+hiZX18Z9kpfnjTq3p7aL74aVDFP0zLqnHTP0
	 H/3lY+b1cPsMMWF2I4TVAip3sU6P5/ve6IhHneD/bC/IvH44O8FlBwgri5tnGKqfMW
	 aTB3HobF+6F4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1DD1C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178521063370.16178.3495544879829041444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c89765f075935a59d117681dc0561cc2fa45fb34abfcc32b7414dffd295f319f
Date: Tue, 28 Jul 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785210633
