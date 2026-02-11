Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCD5E305E1F
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770786893; cv=none; b=RQmXGcCuFmie93oBD8Xt5pP0Lwow0GVEWj7OVM7qongaLWREZE9sfMJVvwjptxXZo+B0fTG7RWQJSsJ1YtOofSpglzE1AXipHG01DLOcWHa8kJj5Qt3QamHahkZ6sL8Fic9XDM96VInB79xKvf/h3f2sUVFCsxJrnkppn9pWfnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770786893; c=relaxed/simple;
	bh=jRXYBXV9yd9pZZkt/7qsfx1i6Iod8Z731KTZTS4fo9g=;
	h=To:Subject:From:Message-Id:Date; b=iCXWQAXIJnr5IVbaljilROIS5q/WsPMXEYbUt36TrmE8u7Ypy6orvvKqAYFl0wdESSazC1k75hvCZY4FeyEhmWSuxv/QFxqfoj46lpCRU7Lo6tFyumEl7Et0DtN6giMGNA2ymfWfahXm/Msoffok6qHelhw6eemvPA/ezO5idok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dyFmjZD/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dyFmjZD/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6BFC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770786893;
	bh=jRXYBXV9yd9pZZkt/7qsfx1i6Iod8Z731KTZTS4fo9g=;
	h=To:Subject:From:Date:From;
	b=dyFmjZD/ni4vw55+u9bzqsKJbFYK43jkMbnxmLwGaGY1gDYb02IgUJ0gvKozWEiOa
	 uFz9iRYMOZHD4db0c4JoomHgO+a0p6Lhrr4dJEcsOGHGhp1D9EYB80lDKeZh4KlQcO
	 97Ho3xoX7axbGrDcB0YUEWTRXuv2LWj1Uw2G+appOttxZBRhbrxfdJmzYmPFf60lRY
	 Pzb1i/CTL8DCktET1Dt2TN/ik0ReQFluTEYDhT+XO5gT4j1alhTPFjQulYYgWdZcGW
	 oSbY3z8CoIfsx/6pIA8WqH1Kuh5v8Hm/SJcN41Vx/H1eloUxIiHfnKEyzZMBNsJpoc
	 wMNzOc2RHwJTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9971EEB5961
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177078689359.15334.15713073280534898928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d74e6dc2173f42db12132f7cd6fff23f9b7d80aab37c5cdd8218cf66d017a780
Date: Wed, 11 Feb 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770786893
