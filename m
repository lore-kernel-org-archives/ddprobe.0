Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 087B72877CB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 07:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764748374; cv=none; b=pqq6MBu1yBWsci8pZuXkWrHb/7PNEBp4KhXTOlvcXPMsfCjP97BIqQRsvqRzqhjBIsy0YkUvAGLNMv5UTkOfr6dHpWva9oUo1tLkYbiJ0iZe2JditmlYDx4CApPHQphnoM2dn/QnANUoHnkzXPLQ/5tWWUgjQz+FR6t7PnM4nTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764748374; c=relaxed/simple;
	bh=HG/wGRStyonYe31ajHVyIsFUZY9qGey0MAy66omRFiU=;
	h=To:Subject:From:Message-Id:Date; b=XzMFnftj1+VCt6121gz5UaASu8W0wvOhVVcBFYpDHXMpHtoMAn+Jd+523srr0Tfm9uxzTpxrmqTg5PoKfpHsYLvkcnDPJhAJdJjPLzNT+LP4c25OeTVj6Ino3pof/yQdxiimNVPlFJob7TvKoaMxzYJnkYN+fTMkElOEKE6hX0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kbh6O1JV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kbh6O1JV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A5EC4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 07:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764748373;
	bh=HG/wGRStyonYe31ajHVyIsFUZY9qGey0MAy66omRFiU=;
	h=To:Subject:From:Date:From;
	b=Kbh6O1JVgDh21Ka7TC9hhah+O7btmksQI0AeaSdqv6D+nFE6pfQLiJ1lnSb3wJYMZ
	 THFhalwYfxtl9eSKIzCOvCmDkwjYccIUhnWEezJX9diHkoHd14J1AXkTxe8Fn0k2zO
	 Ag7xpGij4rF8n6qejvN9dvbitIpmEbG6teTVUq5wBf1UUjk9phr1GWluhcsY8KEu4a
	 x5dL8QYJQOz6dkiuUE3Dds7KgQn5i2NOjn8lWluCM46G4KG+2WTOA1HIQVTme7ky8H
	 zkNDqnyvWbwHg553k/1lvn7SZnqifWNuQWLhd2YXerIYnA7BZUSgv+Wl/sg4FK4npM
	 BUw3wAdWyabew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962D0D116F3
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 07:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176474837360.29730.6054321048260172164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a166d3563e6fa2d050f363172435dd9142246fe7ddf57bbedc8791e0246cfb5
Date: Wed, 03 Dec 2025 07:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764748373
