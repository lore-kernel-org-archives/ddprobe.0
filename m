Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 572C55A79B
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791689434; cv=none; b=gnkboZhh8Vw+diS9mnIIBprXfana8GXZ/QK0erit2YiMLxW92bHk08TvNlnSPl0SoCnQ6lFBXvY62bP0vbFJBl6tJXi04+BnYEFUhpL6JT3GxhmliGNPun/d59c67Lhi2QrLdtOxdN/QSUy/knlt0qIKf7gt7O+hhIsqzh72JRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791689434; c=relaxed/simple;
	bh=sZY7RqOZD7Qr92Dx3j7EVqmXNGSDSjE5/m48qUxR3os=;
	h=To:Subject:From:Message-Id:Date; b=OFydFvAVKiOjUBls6W1FrDMlcmIAN94kNBAr9DH0Ho0R879/jBe6DerhtZMYhub/vabRUf6mYTJvVIZg3w0qT8svIZsLWOOdPsIQ2tL/XCxe+i98u6liLsfeNeSyhCJeTGFcC9oafJf+SFcQXt4y+WNncF9HOxDOtU2Jw96CSXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rNCTqVv/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rNCTqVv/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D289DC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791689433;
	bh=sZY7RqOZD7Qr92Dx3j7EVqmXNGSDSjE5/m48qUxR3os=;
	h=To:Subject:From:Date:From;
	b=rNCTqVv/uIzOsyNAJbeKOiWke5e3rj6i6d/z+zYG9t/rj0YCpdd5+uIpLG7U6dWx7
	 5/jalsGFig/rFG2jLXX8XgvGnTAC8Dv6/aaWA54FVnXzIqIgdn4gRUugxz4RFI1kF/
	 pY+/RRyfaRqBnn2CYj5URA/mti6pCct0/cRd9keUwOfZnqUQ5jLtRJ5kT4z5SWj3Yk
	 ONf0B2I+Vp16ODeOWx+XaBfrZyrom/AGV6Xz4yhhevLityghdIhAhnRoiWlqmPRZto
	 z+1lAV2kIm8vluGh5koVcUiEMZtFl6YSLwfip5SIoXbaRg02zYpWPZakTMHNWekoIE
	 SIsF4AWJv0JEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0084CA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179168943368.4930.3732652463922707575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebed24cd1b30f4fb89b1cf6730e45ac6a890f6cfebdf30bfbc73c9ec11b304de
Date: Sun, 11 Oct 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791689433
