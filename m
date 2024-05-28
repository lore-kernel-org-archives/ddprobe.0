Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FA2B17E8FC
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 08:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716886463; cv=none; b=nuxjtVEW4jwQ9Z4BO2k+USCbuuIE88JlO/3bQpln8Y+eaoJ3Go/PvAjSOvJjKtRq7SV/j2Z5O8qd7MIhTq9YqZkgpKLXi3m6TQIBeI45IA6tWLu1LvEQVEWhxDz01crVOp5+CLuKs3JB2zDLqjN5vknZZY9Cox/vv2Ky1yCWGsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716886463; c=relaxed/simple;
	bh=3xurJbvhsjtj4s3jgU/u+0/04sBYalYrXlDAWe6zsFc=;
	h=To:Subject:From:Message-Id:Date; b=aaCewua7SLEPvynQAGPHNf03gM5DdQeh48ja6YQWkSKhUYV3lNQFItcPGO0a8yWZfhURIjwbbiCDC/4erwhFrD1oXuaWw7NzxVc8g/JYYe9yYy6a53BB+pohE9WtMjbXoxNbY9RVxSD/DjOHw7YM/eO/EUACXdiqbUR0IJGlZAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZuR3CpD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZuR3CpD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04185C32782
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 08:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716886463;
	bh=3xurJbvhsjtj4s3jgU/u+0/04sBYalYrXlDAWe6zsFc=;
	h=To:Subject:From:Date:From;
	b=XZuR3CpDD4c99PKMko0f15gysRkctGylwkqlC06AkXXwaK3sUJvs4wrowOSQ4xTh1
	 fiE3vMp9VGyd0P8/XVKWkp9GSbWeqMR6JYbyD9iJkiMCk2Q50GfksZC3AhEYieToE2
	 ygRK4LFOtjmh6DzLXJqeprG7uK16hK3J2U0+s4tpvk1y4n3GYZNlDQmpZtgGT0nurS
	 D+BTBXa0P8zWCAjA69kioP4rT3BdVqACg9UxYDXb61Mxix5KaDKquouuEGWedr/4zz
	 6335CaY2eXCkUYv0rCk9SaEYQO5LYrK2CNq9l89UCXzMjz8tdabwH2lcB7yK5P1yii
	 ewPn6LADgXCUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0B82C25B7E
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 08:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171688646282.6128.3395360722990861458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54239c37a56466cf92a0707e892e262ade1b96b9b875764d8eed21fb5fef73e9
Date: Tue, 28 May 2024 08:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716886462
