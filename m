Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9B2CA4E
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757898594; cv=none; b=RmAR69i9AafpjSgAVCHXD6t2UymN9+9hDjSVJgDI9DE9Rf5Rb/eaQnytnwqhxX5YcNb9t+gFBAITl48dAf0QqGQzQpiCbJUmiiLEb5o8jS1yptNsZvrRY3CsxtkxOnl+AoHy8119S9m0IihFIPYcjoheaI+AnY9elNEdhSmCpCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757898594; c=relaxed/simple;
	bh=ssXYylMcGUiALWn3Fj1L5MJ+hHtpw1bBepRqgZielQo=;
	h=To:Subject:From:Message-Id:Date; b=HCYPVomIBrUTyirXTH1kikEN62zgITbyP8QG5bGFtZDtPm+GPNWPjROsfh+LwQ2Ieul2GOCSiERobsn2qlfopykdGZkeKHzjVcG7ZkXKJuUMYTBvmXigvtQ+do2+SuScGbkUuGpRfAXQK0gZIjuJRQP9wmnjZYxDpptWWSuM4hE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WJFgOCHm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WJFgOCHm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BB3C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757898593;
	bh=ssXYylMcGUiALWn3Fj1L5MJ+hHtpw1bBepRqgZielQo=;
	h=To:Subject:From:Date:From;
	b=WJFgOCHm6JFQWfnXAggwN+7FkB01DwBe9cdUXjTKPxM7//jqTdLJ7goWUnQp6/duD
	 0ckFThyg5zNRN0DXttvUsnjYSThHp5ok4Q1GVHKrbbaKnbiG/ScvVCe2dUUbkQ/Qza
	 31K51RiZK+VngXEbT8AuIMn7XHioRgxsO2mtkDoH+ookW4MG9Huo8cD8c1maQW3rpp
	 bskqezlVZdkcb6666atyCcOa35QB1Zq4aBjBOcrEK1I0brb4xThGcN4AgL+sNJa9a5
	 Hkon8ldQ7fb9Bh3WWdui+Q/0bgf9qFAFAh4ErY8pG+0t/Wfx5a/I6CB3HsR4tOMELK
	 F9glhbwVN0wiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918F9CAC587
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175789859357.3929.16123681810350156513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dd2dd89b1c2ca1b211badd46b42107cda563d12c31dea098c83c12900b57f41
Date: Mon, 15 Sep 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757898593
