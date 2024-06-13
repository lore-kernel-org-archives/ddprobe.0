Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA2F14534A
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 11:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718279303; cv=none; b=JinrLYegmU7bqiSobKaE6CKv+IxhQ5/+6gLo4OS8econhBQCe7/duqaZUL+cP/OgGevRuEu1bVE0YpL8QkD29QbOCMlDme5TKv3riPYm8fQYK6fl5fijfmquhCZrHtqEbhD5ZtFMPE4v+h8zERySBHIyXRfixYVocce9J/uQMlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718279303; c=relaxed/simple;
	bh=zD3IO3xsdPolnbJ9gagV64+AZmva5At8iF90hw2SEgE=;
	h=To:Subject:From:Message-Id:Date; b=adXec9FaOhO1XE+ybNqXWpdl/tmrpEIEi2YOE43P6wGWubjytRmtquXGziJOAcbepFfHBRhQT0aRPoyJ8jrEcg07ocVvJpca+OfPIErhPET//N6GjT0SNlKORYlBFzsc6AJSIn7TewDLCZGODUX9mpCbSsKXQHsZBc3qhK03H/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AtdGPicp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AtdGPicp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D15A0C4AF1A
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 11:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718279302;
	bh=zD3IO3xsdPolnbJ9gagV64+AZmva5At8iF90hw2SEgE=;
	h=To:Subject:From:Date:From;
	b=AtdGPicpcDyU3KncJ/TtcZLNtoYtuFn5WYgJ9/queeGJJUoXvgzy+sQ5aUk09d4rP
	 lL2oCbe1jjHgZKwF1cydYrR4w3Yt78c1n0FwNt6nHQ+3X7U0NW/SBIXblAEM7IyzkQ
	 rWolyJRmZyR++jGctYNWk+5HSTnyK4spV6055kNoaD0j18Ej1hFpgM6nkIT5UC9NNA
	 62n4f06WO4g5QeHYYQpejPLzxsTAokaOjCmNKcYcWGDAwJ//TlCJ6sN2Oz8FFLaEvq
	 0a/L6ITngg14dtsage71IjZG6M9G9PXKep8jit1owpqeQJfIPaOeA0jyzvCCg1p3fk
	 yU/7ieqjZ9/Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C72F2C27C75
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 11:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171827930280.27986.301168551548199441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e572291d8926890b55902fc1c63f7e94f0735e021eb0a090d3242f88430dd4c0
Date: Thu, 13 Jun 2024 11:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718279302
