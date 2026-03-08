Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26203336894
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772941494; cv=none; b=RkTmlwd0g4DnXGyY87aXqGGSwfHtumryPbkSZdQoTSFs2YCjxK0ZQFGKrB97xrQ9ddwIxdAjw17dHOlWjuZ3ol8ebcStgTfVybwwL1t95vvS6+Vfs7BW2YXKuhywFk1NzmNpPAw5D4XMlU9f/zkzgJiYJlFWv8icKQMEf6nxHj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772941494; c=relaxed/simple;
	bh=SkCSV4n6XWNQWYhbPAJR0Qf0LJbNtvYTeQTgwN/hiN8=;
	h=To:Subject:From:Message-Id:Date; b=nA+PE+K6pT1CCveaNWKgdeEReE9hCROmTNaqnrwZtarWqjVO2jYK243Kps3BK4mS8bpHQlbGZYUn08aHPZUY9/z/C+m18oKG+KAAlEEaqul/MoIYAOha0RVAN/nyLH/e5ZdUnYwjF/JKgiH4x7Exgk7+xHeRNDLU6HN0WkqkKoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZPnixa1g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZPnixa1g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A697BC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772941493;
	bh=SkCSV4n6XWNQWYhbPAJR0Qf0LJbNtvYTeQTgwN/hiN8=;
	h=To:Subject:From:Date:From;
	b=ZPnixa1gM+ypJ4PXKK3YFWd+O8dUcARVhfpdF6kibGtaen2sy+f2HW8q1OmjxoIAn
	 wlfuGmqLL9h5hx4Hi9Yq5NlMcSxh8B8cbjNYk11X6by6ZWVeEtrZ3PJVTOEeDsLc8X
	 ZgY6uj/4qFvg//Xz/bROqQhpe3H1GVxnYGbTzfKpGGlRaXaUndiywpa0NW69q1ZZUc
	 zahXlhplxQ6rmfujb3NVoxYbsYES6hGPXo7Ueib5v8lyseJFTVZ7+vdxxIV++nbr0Y
	 1/0WcdUs/LbknEF0zvGiTMYdSahtXudUN877mEVvcR84wLQai4TN2UxVgxcMK4KkId
	 EA+oisNRRuX0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C14F55106
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177294149357.27582.12474363707860673857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efee2b0582926611d4560967782ff0b39fe07d3fa5664ae31885efb17cb052b1
Date: Sun, 08 Mar 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772941493
