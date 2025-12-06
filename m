Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3646F3BB40
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 17:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765041774; cv=none; b=KEW56K24tOdEYizM9+t8j76diLNUwph33Q/IZi22izDwR0ZMqOFmE7grCG+7C60ObikDBB477p9/AaRoJ45/xxw0pU5VmuUMGXKBK4H8s42Qr+WR1oeFxxl2OoS5HxI52IC/+8aLcBxiEFI0JiMphIt0wtEJG54TIcYgE6DlCaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765041774; c=relaxed/simple;
	bh=1RuFLGUxhRjuBrvRBG0+X7p2nvds3YfU2TSd9YbzzdM=;
	h=To:Subject:From:Message-Id:Date; b=aXAymrOL2hwTzKjQrEpbaQrT5KiwrfeYOFokrCMuL0fi8s21pQ9ZMZgpGG0+ol3OgvodUu11AkQHKXaJC2lsbdkiuk/bzskyRGf26PhGaTX0agWo3DWg5xFmtNNON/4CDH5BJNN2/r/RWY8QJhAU2ASeP/qWHmAiZ4Snnz/3Tyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lFxK4292; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lFxK4292"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF2AC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 17:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765041773;
	bh=1RuFLGUxhRjuBrvRBG0+X7p2nvds3YfU2TSd9YbzzdM=;
	h=To:Subject:From:Date:From;
	b=lFxK4292r9Nz6RgnqHGh7QIsjThYXMWxkSwZ6pb2ro2MCyP9D+mdsOWmhblcfhHcT
	 X5rL7U1DEAihkkLBoujue57DQ3bcxRhiV50VNWxSanLvBEJqKDaClptmDgcFuWPNQp
	 6SqA9HFQi+moYUqLCaRDo7Q5SgBbAFeOwX+kj4NINx35VsKtAJ0Tju+XaGvu+Wv/Ky
	 fQKaMJ6VnoE/e5qQm2ejM6O37xa6bcO5gscSlssTi3+eNovmMFq+Fv0AM2prZKclD9
	 lJdR5T9QMKQIounNHZ52e0N9s8xXOdtqf2ePhfe1BX60uN761FEYh2fWOoiDmuo6CW
	 YZbKb13YslbWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B93D3B7D1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 17:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176504177358.8501.17147723319059948232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b16fe64dd16fbca2cc72c762db0ad13e97d2ec0cd062a6705e679f9db48950f1
Date: Sat, 06 Dec 2025 17:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765041773
