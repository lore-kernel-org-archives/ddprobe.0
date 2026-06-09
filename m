Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB373749F9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 19:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781033734; cv=none; b=dAR2xUX8pLYTC+IJsV2/xy7rBOv8TqRYkAWyx4HCwHjrpY5agaMm3cgatH5mGO9hn9c+9avWD108gmKZ0zHplN1aO5i8xmjQGYqRfiS41y8Cp0mSh+kGZMPpHTzinPz3UeoH9vVymeireEI1TPZWduUfWfqlW3BUES/B3PnFjVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781033734; c=relaxed/simple;
	bh=bd8x7n/AJpM7J6UkXc6ga8WGdpeBpau3CDZYqbpgXCk=;
	h=To:Subject:From:Message-Id:Date; b=az7RwB+ur7WJ+zuzhKIvg5O6Bhds483WKmXbw1Pt9LwSzI0pluozjuAyTK89E3wcppwX2x2X4Z8kyuwG4hQ3udmGyu/GutVk81jZeHjp1ZVsvybBCHeschnQAw0aKJvfHbdT28GnCWdXtjm+0yLfCcvpX0JU8UBIv1bt7Q3AKRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WayNCzDJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WayNCzDJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF5B2C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 19:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781033733;
	bh=bd8x7n/AJpM7J6UkXc6ga8WGdpeBpau3CDZYqbpgXCk=;
	h=To:Subject:From:Date:From;
	b=WayNCzDJ6GLOAXc8iY+fAc08KlCs9yU1I92v0sroJ69x1s1oOR3IEhP7LYpEfVNUg
	 5k/Mjs+EW0lzQdTT5LWbWEmPyrSMfa8K3XQvtWZo50+kXlS+unPsHjEugwpHIO3Qqu
	 AGiZHlqgRNyanZ+WAgYgUcrQYQfQqtp4FvSOXgshV9toFuS/FRdNzqjHz202nlB7A3
	 E5KHH16M1W5ILGu2RG/aXVZ31ksZk/wLFlV5QqWQQ3+D76ukPoaizLZm0wW4cK3Ytz
	 MC19bkeTdv0GTx670ydDGOB4JUHxwqKtKmlGoS9NLkjm1oJEkA6epX0S0DoBmBW6R4
	 4jBkT/clcOziw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3E91CD8CA8
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 19:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178103373372.11482.10255263929582611495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b6373d02da8d1aeb8c8829202fda4e5f7fb15ec4412999084224f7deeab5a90
Date: Tue, 09 Jun 2026 19:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781033733
