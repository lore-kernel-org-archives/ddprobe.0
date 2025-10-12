Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E82634BA41
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760293194; cv=none; b=J4f6qSHee15RREMaDsF8h73t4cYMtQ+8n4g7+0yIvFiKi7zuhh8pP4+R1fUfUy+uOZltBx8j6MzYFGr5j0n5UF4BsuOECR3mQ5V+V+cuQMMKBuzq4lL9/hgqHlWG6fU8C7KG2+aOEDrHSgXoVeybhIKbuzQS+UEkKsKd4MBtlIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760293194; c=relaxed/simple;
	bh=alP2wEXn2F7DUNHY1In0Er0LOxFlYhx4SHlMCeqziWA=;
	h=To:Subject:From:Message-Id:Date; b=AY9K+xRb8wxd7NCCNjZDugyo3gUQEQ7WUM3uZZv5zW9KXpMKaeU9lvtwVIO077lzacqFy+YTDnrCoNHai7Y1UyVvr9sYamzjIoqtCYUaC20V9ducPrJv7T0zmDQw2SOPwViuvlMnx9Oq1kLP3hrx9n33cafI6fov3JPpvuIwyZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KU+Lm7cW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KU+Lm7cW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6036C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760293193;
	bh=alP2wEXn2F7DUNHY1In0Er0LOxFlYhx4SHlMCeqziWA=;
	h=To:Subject:From:Date:From;
	b=KU+Lm7cWYQdLukqyzYhxX2pal7XzGQVDteGcq7TqRXWUmitrSXmalRUpGZVO2FsnY
	 KHpuDDsJtfsfjCVPzFANHagjyWkTbpoAd+UKHga5adBK+xYNJhPRKqdxX8L78soH+2
	 tUe1W0FFEY7MhJou13LsDCT1wFjJfzIX+lr5F52S2NaPGzbcklTS7sn0fGP589bKSR
	 0JQK4B9N3HjLXmcTM/o8xMc1hzyzHcoCTkS0WVXbJAMD+zCkrVLHjbWVfvRvf5UI5D
	 yiCYeNfpmVXMv9Cmh/LXiYPIn6sx0dRgD1QMjWvpBhwhNKsYTO/wdDVLZ9hYlKA/0+
	 ajICJf2fMWKVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B9CCCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176029319357.9111.7561518225570168706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1201d1bba0c5bde4d6f0178124667f796e2d82a892f028855949449cf0415903
Date: Sun, 12 Oct 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760293193
