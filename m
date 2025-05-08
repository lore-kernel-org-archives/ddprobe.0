Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CCC2101BD
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746747594; cv=none; b=OEznwsKhJT8DWL7TXHLsLExkxt5UDLQAvhIVIcwtUYZR91cGxZxFlVb6tbW46KgFiUgCj0FHm9gDex5i3mnOG9OfX9A62aDAbUka7UcLC6ehsvEdzQfrk34DpgwXlJlHAcdsgd07/72Kq/FF1k29Lczv6CxG6ZyT+hrZzbDt0Q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746747594; c=relaxed/simple;
	bh=WWMGVUTI1TMx+JZD6ypVduU7a3PyEieV7GwIJ9EYsBk=;
	h=To:Subject:From:Message-Id:Date; b=W4MuzaDMOy6y+ZIfmPxUXjGe5TKa8nFIoiBka68hiJQnGWR+aE952Q6SNxIMEtvPGX/pm64cg/5wQEXTGf0UiKrwb5iRMXW+Q6aikxcLYd+Va17D7OGQF6GEF6A/QJ7wEM3P0ECkvepMKO83JnPDtkEUpCtkWQ6aBl73IDnrLHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BKNhLeq5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BKNhLeq5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CC7C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746747593;
	bh=WWMGVUTI1TMx+JZD6ypVduU7a3PyEieV7GwIJ9EYsBk=;
	h=To:Subject:From:Date:From;
	b=BKNhLeq5FPE/vCt1i+UegtjKiKVGxwZyFqwprplurdaK3/mHlfYUhXlaKFKbWK8Qd
	 DnZZMlG2TI0nv79RLtURNBbWHELBU3HrlQpU8UXlncp/vUwNRsi9tX4l6B0olCbwMu
	 Vb+CUv0QfrwWVXpOCHQLuFi0HCuqqQbaZ9T2CThzbc+iEAcPrG0Lw/TesnlMTiaLWE
	 Qa/gJx76v8OJu9pDX4qGdJ6ybBxc4m+aI26xHssxZVwvr4KIl4/dR0NopMf/Gh+Xwg
	 DIsNpQuWkekqQLkUsd9sxQmgJk66XyS+f0q2FEtYbtcIDmkB65UZPGZc5/5vY1J086
	 oqZGG/ilBsOPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F59CC3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174674759357.7308.15054991542024083736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4f9ef5fea0e6a5a3c0b3a24040b5a929a8169f20698608bb9a3038795afebb9
Date: Thu, 08 May 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746747593
