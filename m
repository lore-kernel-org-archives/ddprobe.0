Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255D53EF0CC
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 12:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779971554; cv=none; b=t4UCgg2+9kcAUNZG+QpRBxFdXoL26b8RofRyh+LuBcyplBQcwu73X9nfM0exknV/Drh3R+MZ7B/sCw0Z1L/x3qKuKSOnV++sEE46aaW15u21qPDJaZM39u6rHSsrV9Gqfz7i9SIYzRJRkp6tv95jPnU/CZ2Fi1n0wDbJ3H/sfu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779971554; c=relaxed/simple;
	bh=FE96chTew/Ce49xyiPdFivuM26LSHus+zqvVkNP9stA=;
	h=To:Subject:From:Message-Id:Date; b=BkxtZZmrp1++i/7dH15+Gdl2JfK1IfHhjEdUnjzoBqBv6j/9YrDrSFcoUNGl6DyAGlUyyRjJK9CAhD3lTeycFifQrPXWByAYCHN0XC7yevjoNYozAbmTp8krAHyioR/wHAQtlQohhs2+r0ezgivVUihU/barVvYc9XRzjcaLg4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=csJ/0EC2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="csJ/0EC2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3AEDC2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 12:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779971553;
	bh=FE96chTew/Ce49xyiPdFivuM26LSHus+zqvVkNP9stA=;
	h=To:Subject:From:Date:From;
	b=csJ/0EC2sXAWyV3KUoRpHtwxO1u3lTdcn6bWdUPYi/U44K95IcC46R/8MbTWmWjUo
	 CJCFFGNIxf4uMRs8qEidtqeHXH6WkcOobRYchpX62UNqK45GhaZpU08knGXswmoI9G
	 GoWTsalquYJ8ahyeIrdyU1nnCboJGc5OB9ZuNrnTCgK+SBPiynDvjjxdsUvC0vj9AV
	 hsZTek8PiXh6sNIXlpCME0YR0r7k1KfpO+DUNAfyL5sCdNpL5KPbuK/ozOBPbkIOj2
	 tWoU8r0R/vnNGuJ6ycSaq0ORA11MpZh2+9OODjmIqhRAy8gc2K26jXlq/qVIsFx/wK
	 JNfsKuD75UkEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAD8CD6E44
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 12:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177997155369.32348.11501474829777987216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92f0bcbcca3bc55fff74138cf83a81d2065b20c48a17dbd6a70b83fef39cd80f
Date: Thu, 28 May 2026 12:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779971553
