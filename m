Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D4A38AC79
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786871434; cv=none; b=e3mJS2jxswyU6eW1o93DimZT4cOpsRNl6So5CXTWLQOXdHCnsMzAJSAaYE5DTa8bE2SSAjlnZQ4CZGYopxqG7c31oJj2YStgwzF69aam07oZAMowC4PsfsEWK7DqlXH6BTBFvoWJANcXREbwRJG+5r3oVCBTLW7RE8QUTyWpvxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786871434; c=relaxed/simple;
	bh=yKBBQyp5Vo8Mz63USX7oCSo8dxKXiu9tbb7IhVeyZUY=;
	h=To:Subject:From:Message-Id:Date; b=T/fXVcxlA0hUa62jpc+l3xvSxYDJv52VFWXE6P3e2drTw6TNj/cVuGyF7uADadl/JfzYJu02S3rCAxNgBi9Cjz1M2OcYjyaulQRZyIZT+Ba7fgJke5l3j+BK4Oxd17rkDrujMY5GDcZcR9idXOgG8F/8u3l3J50ZcK8nCKwI+Ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=njvJiYdv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="njvJiYdv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D000CC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786871433;
	bh=yKBBQyp5Vo8Mz63USX7oCSo8dxKXiu9tbb7IhVeyZUY=;
	h=To:Subject:From:Date:From;
	b=njvJiYdvnqzCeYXQ1ZqFMPArP7RrPrkV+eGhHul6Ph/jfc8opWCoakQgIIjmEs0is
	 v8ATaiX4VC3B6OK5Vf/+dzAzZ+9/weWZfNjvynAY6z5uMbbEVxSZ5+hNOD3Lv41AR5
	 jto5P0zTtEfrYUD6d1WVKj02kNAKfhAlQkgAFrluNJ5gGiGgi3Ltt5aR29pGNaQfby
	 ZBsOUQ7Wq/TvR/bp76mXHoU4l1YTpeZCGurrXecg9iCBOid1EOABQu896GzUCK8RIr
	 f+sNsTSpdhYkKkAsaWmkyEr023jEKAtTiKZeuHz7thfH8HgevwJmGHi/EPMMbkJI6c
	 qqocHeL8zg9iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB03EC5DF66
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178687143369.14884.5177909087328181407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f4b51403abea08519ceb79cf6551c6a17110ba72fc8553d1e90bdfb8606aaad
Date: Sun, 16 Aug 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786871433
