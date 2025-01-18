Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341F45BAF0
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737206754; cv=none; b=pvpohyFZADTja5nyaMUwgjvacvkTzoDFA2ezEpmzW+XuG5XHTcDCzMtqiWM7WCTaJlY9OfRpbELXc99tU3LvLy0jlPjDgudPga14I9wEWiT9FJ8QuLLmBTm27lL9nbTmJhyEwPP+fNGILaoS1V9QL2lvVNxOImzFbg3ULfcB/NA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737206754; c=relaxed/simple;
	bh=7APu9joONCSPgp/6M/O/VgIhTbSqmwFfvvgPcqdfIC0=;
	h=To:Subject:From:Message-Id:Date; b=CbHCNNT0xhP39ONalZQXX/Ka5aRhhnRsYcjcOigMg4KGPR6uWA10z8fbD5c5JN0dqhTW3X55+OuiMRvHeqeqoIRGaRX3bFLfHJsVUJHo2AkLQzPACfj7tUXGyoLc4NWDQa14tLWZXzxY3QVFLv/RgN0qK1LtlR4MOej4QjGRQ00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Duebessm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Duebessm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49A7C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737206753;
	bh=7APu9joONCSPgp/6M/O/VgIhTbSqmwFfvvgPcqdfIC0=;
	h=To:Subject:From:Date:From;
	b=DuebessmK8JsA4w9Ed/FXqIcuCLZxcWwUMzUE0BAtNrvnKheXSvWbSdWhhTRYKOWY
	 UfgZpeB86vHTWykG6EomrDXABxNXeBHhS3IKFXuEmNoGJ81U7VBxwAeecefyO/QTh7
	 qqOWIpmUxFBjmIqQomPvlN2ICrgdyOlW/Y6gjXymJwV2wCLWge83bcIJD6ctrXFxZO
	 BiTLkb7l3VgkAsWDzz7L5vCPtywYirZVA3N5HeJIidfx5WaIS9nJiDxWsnQ1dddJMa
	 b8McAc1kz7F84v9Fg2IXGc2tGPqHxtC1yNfKcHD5/hXfya+vWZJC34PX9w5bfE6K/1
	 Xcng00fSEhsbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9192CC02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173720675357.8866.6792181269901849305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 158646e3b2451a8ae9288d82255b4565ee9780895b4ced6307741398c93f58a1
Date: Sat, 18 Jan 2025 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737206753
