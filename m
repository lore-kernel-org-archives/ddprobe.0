Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57CD72D5925
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 20:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780952074; cv=none; b=qoXYszSxqO59QvZF7G+QXhq4sv4nTzsxQjSsxy5X7qVK0RQU2zVjqAEty/yt2HgXjjXMaDzPg/hGalJo3Vj329MeEV0KmVDTaKYvqtb7wU+Z/bwq5aqClbfQ2VKhcW4oJRZrPA4BqieQe1VZac64xqLVGDNeaJ1cVXVZOisLid8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780952074; c=relaxed/simple;
	bh=QwsW0PX/loCDEhq5xYqV4ct+8RVzgMw2I97UpY7G9pg=;
	h=To:Subject:From:Message-Id:Date; b=c2MgQ7IR7NMAcU7MaFO4VXiYsI2eBkWg32zevHeaFQvOXdLH86VfkgSbTUr0eOxtHJmopJPEsefy8fqa/B7udER0oJQiXlFOTmL+Qa9nSMJO5OWWGMVtaKP+bAaFOgWQhSxHqVMrNhzhEr8gI+4SpgUqNJKAYxdX/sUSWLc+8KQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k2CZUizs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k2CZUizs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7426C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 20:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780952073;
	bh=QwsW0PX/loCDEhq5xYqV4ct+8RVzgMw2I97UpY7G9pg=;
	h=To:Subject:From:Date:From;
	b=k2CZUizsusyLrYYb7RvZqpEXIsSXHa/WDlMYtNoOi0ylTNuHintBrvI+5pQ8Wn3Oq
	 oTw+dO/mbqGZwHAsRgVdY1XSMaDv8EfgQO/aoPHHF72Z/bPVFyyyWEy8/L9+fW4cD+
	 +kZuPpm5lY6MtCwr4U6Q/UPtYzqVInmtcvsAdcNyNp6+5tMD6gFrniTe+gkq/v7wyu
	 zF/VFXCOzKR0Z5SOp44KfCEoP6GdNA25cThqjwHN4xX+w8mRZ8qQQpP8z5sPkPOcWM
	 681V//ZtIUzZGgM96JpYLiMOcI3WrPmZ0vsYgpTCAwsAliCQG0iR6gustsRd9+obty
	 D7qgSwPnj7CuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B790ACD6E79
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 20:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178095207373.16660.830185057973166702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 812a26d0568e7808f9d336fea6bfce32bad7e876dbd302276dd00a77c8f0e740
Date: Mon, 08 Jun 2026 20:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780952073
