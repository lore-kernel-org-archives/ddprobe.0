Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B5C82F6560
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766096634; cv=none; b=AvtUl30CYGWUCsuOznQUTgVpGP+KOLyHjjCjnAuZxbEx518aBW/qrDbf6MfAl/0SqA6FsVTCo1fpltaJiDJzNZFmuWb3nak5r06OYrph7lBDcC6HxfWFku9I/4FUaV54d+Kt+MjcOLE5dY01GtEfNA/hz/iGS6KbiGLZj0VjhCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766096634; c=relaxed/simple;
	bh=lAymCWwZukTz8xwBBa+7uybiymznUHbXU3hzCMWoetE=;
	h=To:Subject:From:Message-Id:Date; b=QGh3r55+ljE7dmZPoQQdEIIp6fkRnwGNcgeMU5p92XMOqMAfAUd00CnyNy98Hjt5WwkWcI1MxVH9USpPo4OlCPiOu8iZNJj5YkN8WFupZ2zrovt42A427leXAI8G4cPm3kv1qgGQbKLd58S8JpBkcEQxAAqy0T+bg4JSDWCEIeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eTO8i2Ez; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eTO8i2Ez"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97040C113D0
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766096633;
	bh=lAymCWwZukTz8xwBBa+7uybiymznUHbXU3hzCMWoetE=;
	h=To:Subject:From:Date:From;
	b=eTO8i2EzTDpHdfIOe0mV7z7uRwSH/2inOE1UzIJkj+8UiXHcR5mqs4kuQvqoMeCQC
	 B1lqKD1wCoSf8VznG38NV7QapmbAjWRiFJuGNn3nZdi9/5p6YttjMXjSv607nPy6kD
	 P/oyTLCgvK8i7vqg1k8JPmWAOh8hApxGmr45Psedy1teGvhaDuZdiC2R9uEl5G97A+
	 aarZWB2FaZWits73O3J54cd44RDgCbLOvXHuiT9qo+GPoZ6JoZBuxv3dO0kPGmZYVW
	 nugHKhG2xorQEFCaobTYP6oAQ80ZCrbDVKV1aQnoot3oAFU8tsdlpq3u0rEItIzBcp
	 /8ApWgWVM9Idg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E82D711C8
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176609663358.1551.11941607015305675022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80c20b614ed84a1f2a2769834618b882328424be5acd25d23f39da8eeb6c831a
Date: Thu, 18 Dec 2025 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766096633
