Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75C5F23A9
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 05:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721021603; cv=none; b=V4WULUs3BTmZ2zarlidy3dZiKW36VhlotsFJSePvTWcA+Db61c46i4R9dBHmZNbY41bNJNNUT6+84ETmL1H6pxCsQ+DzW1OJJn4OlW7ToLYjnNzw+v7vbB6sDsPgZBhfUDlurtDvf6eWsszZXE3z3duOL46DaBRkLhMdNGFjobY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721021603; c=relaxed/simple;
	bh=cMonLPedJstokBt8MCv7wWl0dnzqAiojl8cSj7TYY+o=;
	h=To:Subject:From:Message-Id:Date; b=hdD10Ey1fjv7e7HRXW00lxLGZ3eDxFC58poQa4AG2W2n3t6YYDrOATM3UbPoRMVvg8xJlTop0fIftcznSU/IW1AcccUqKkm5BmumEYuFibVtLp/xwfJOX/alxka84+bfxKh8HKALqobmmwkwDyJnJZwKUjPCeItp7ctD1n4vh3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dUzYlRse; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dUzYlRse"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E54A6C4AF0A
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 05:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721021602;
	bh=cMonLPedJstokBt8MCv7wWl0dnzqAiojl8cSj7TYY+o=;
	h=To:Subject:From:Date:From;
	b=dUzYlRse0CtFm9ZskVdGcZJBXnnTNR58zlsM5pgvo4Jq2iFwmK98NQYPGRF+n8RV4
	 SOm1+q7gJ+LMK/YIqRQ8byt26JIpm31deoFPbTV6UQ6WA8jzPs6PaTOC36TmInynuu
	 fhVDXdKuHhm/aSaeEk8cVKzi9wCsBLs7xjgrVyeWwGsWgiwyoLMmI1Ftxmo3h0kx7q
	 HSDQms6mVD17nRJ4Y9UTOyADqdxXcq5MnsVuhzI1Z2dINnTnfrvWqdpZS8EHYgY9W0
	 zUzFv4N75p2IoLqULoBFg8vds63ga4zSxze0ilIXr4+mdzAXmMT22MqJOWukELmFXk
	 LmH+/yN/AnwMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE715C2BD09
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 05:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172102160280.10184.1620638809107564722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44474fbeb8709f1f72d74b772499dacf251e755d8d3ebe55e3f30a32f583bedf
Date: Mon, 15 Jul 2024 05:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721021602
