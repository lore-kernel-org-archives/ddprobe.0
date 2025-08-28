Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6ED1F1932
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756393794; cv=none; b=klfe4rua/GNfz+mgv201JS2nYq/BWOeG3gK2K7MNFO9khUvrRSJGpOqy0hCcbOWJ7zlVLJJmt610MWYfW92iVlDfvqRFZV6vxVG97b7KaxIvY3uZfA+9bXzr342/dx1k2D7HMhb73xmbtvSjgIhxptkUnLxAxW/ahdt+qIyilZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756393794; c=relaxed/simple;
	bh=GEi1DAbblq5DcG02wsaap3n3oLopu1f0ZQWEkXKl10o=;
	h=To:Subject:From:Message-Id:Date; b=FgS/1CIVG6eFV9qHww6kFR2laKlD4dQG+6nhbMA17r7EpHTOb3xA8KZd5Ruh5WuUW91zQnP4FPM67d6XrLzluU+KhppR4k/xi/T4jPJ1Wrb3xf0F+nAt/ajgWqyD77N+PieS1By4ALtQ65z8q8MM3nUXiXERStKcQbDOG4GtIlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u9nLYBMJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u9nLYBMJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E459C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756393793;
	bh=GEi1DAbblq5DcG02wsaap3n3oLopu1f0ZQWEkXKl10o=;
	h=To:Subject:From:Date:From;
	b=u9nLYBMJHoTCprRvwwsnWn9Kl9L3rrKf8sgVGfpqHklF94VunTaXX1Ou0g4OE53tk
	 U3aurQZY+W+ZOvz0W1j0Mz00GeqYfAYgv43RvtBOvV4w5h1xG41IYCFteW3cj5SQrm
	 OPW/9peINoE5BjCAPgyl87H//2ljruqNS1J/ZIrKd89GaYgMNyN0PpbJttBUDg0zqT
	 laF3Hg3TrPgUD9wlTKBq/5Vl+5TdiuFbmR/JHodUWJOGZif+hwszJS+QoFXAzpxFb5
	 WP/aialt2taBFSBN1T028Y3Yx8cUMooF+DIBqLVlWDJOOyY68bPTNZd8Vd/JgyVQd3
	 ymi1iBhiykM0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB03CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175639379357.32155.8875858670033055065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cc1a7b72f9f1250399a5e4e32677a82475881343452a1525621a2a4d353ddfc
Date: Thu, 28 Aug 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756393793
