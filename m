Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84E052EBBA4
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 09:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765098774; cv=none; b=qU8s0h0wr8MKfcmSCbKjSI0BuWmcxxljfNrCV0oWr4NKiunCt42B5diElFFkz1pOdkF1o1IjgSPenUCiulI0IDnYv1N+bRaFFIuUhRYfigiUTBB0I+lU+Q6BwsOxJ8elfOvy7C99Lkm0dyN53SA/fC8RfrmXVO5a+YQr/OSRESk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765098774; c=relaxed/simple;
	bh=hSOizj8OeTTpp9Wr8KmgPk/6z5+a1NRd8fXpwOXiJMU=;
	h=To:Subject:From:Message-Id:Date; b=D1V8WjWpPGy12wdqFCGn638r7IqpWAlw/Gy10+fwj1JK676i/onk27tkW10QVh/DRJvcv77Oqyqpxl9Q0E0ZEzSCZC8ko8jhJKC3DBrGjqlesLhwCBK0K/68bcgTeB1+h6oyS+oJXmXE1ZjWCQ27hrg75YEem8nKkVHAxdvwGwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tq8viMPO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tq8viMPO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB35AC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 09:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765098773;
	bh=hSOizj8OeTTpp9Wr8KmgPk/6z5+a1NRd8fXpwOXiJMU=;
	h=To:Subject:From:Date:From;
	b=Tq8viMPOzzkC4/sQ1rIKN7U5uuDE/IXDSFdBN0LlGNSjAiAzCmpDAb+7xhv8E+FvS
	 GL/FhnKZSFzvugaGbE9nR1Ls/t8r8PYz5yieQL79bI3bGZP0wX8kpTfiXAWxzQnd6G
	 fEktvXcfz+M17fYSQ8Q+iXynhAbOcGVuH+5tR4TLr0iW83p4Wci7F18VxfjNYOiNO2
	 +zlbcNJdwM3xtS2/6xuLG/X9JdHIYgtz+Z4ILGDRKPJ7ZnFwnFCbJeW5MIkioRCwtG
	 RbV2iCZV0J4gyizjqm3qCBtlCeIIdxnBZeOz1grFOj871+9LEdx5HiHZuielfZFgqO
	 FGKEXvZ8y0m6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98904D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 09:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176509877358.6052.11066414464804669092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c1b3277db260aa659f2d4550de08a98a31c71741967b599f0ee431b4f79fa1c
Date: Sun, 07 Dec 2025 09:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765098773
