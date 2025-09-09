Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C35C72634
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757381994; cv=none; b=A0FOhfsSWFGjuTgmoKZC7WRXplwJV74vGn08taFPNRbsJy01Q4QDt5GL3xpvV4gW39rRT40on5CQ3flJMMZ07Z7vbBNcwOJFF6ydOqwElVYMDcfjWtKWduC8iD2KotFkJC3WoiwM4b/3Wn4wUbFFfZyLtZzK+cwOHBwcWXb7LwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757381994; c=relaxed/simple;
	bh=lNcbMhGXtCVoxZ2wdcjrU4uUQDAj/7J2G2Cfhhi6ohc=;
	h=To:Subject:From:Message-Id:Date; b=RYfflefHmMs9qEtjhlkw0BLE/pG5wbeqkoNI53xp7fUoVEitHGptB4xH1a2KQ8YQTI62grzYnmhuFqLh7mKLIM+4FEfJwoZCM6aqOjsxormNOwG4b5ztw3TZARs7g4r/JFNwms05/NWeb4q38HLOtck2JiDAirq+9RBFfo9gBwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bc7tUo2S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bc7tUo2S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3909C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757381993;
	bh=lNcbMhGXtCVoxZ2wdcjrU4uUQDAj/7J2G2Cfhhi6ohc=;
	h=To:Subject:From:Date:From;
	b=bc7tUo2SNooLd6i04xUaLU98fkb5+dx9/81BbuQj6gjbnBiG95CMV33qnXrJx3+PR
	 TKchk/qzqDEsBPzR+3wAJT7hDTtRGydC8W+deVXzKaJc9hKyKpxBadtTnJRRxBg2v1
	 Lg3rMee7gMUkzhgIoGqi3XWnSkYV9ftC7cXBa9yG+5B/wdPYvfh9yfgdOzQKg8p39L
	 R3u8PreiAHWoeny8AirmLirf3k6BwWB8uAnXguNZU33LcSrksuM7OA9oLEgsu9lBqZ
	 ClfqInJGHw53kY187/uzp0CV+kkQXo+Akdq0tPDA3XclilUZPOYA3Zz2695cXKdKvQ
	 c9kFbwcbSqP3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EA2CA1016
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175738199357.10353.4521738222811200481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0b953dfb265ee3add361a98ef91f1d72193870d667885d6f70304aeade69bce
Date: Tue, 09 Sep 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757381993
