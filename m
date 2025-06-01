Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB4C86344
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748754594; cv=none; b=JvIo1gQwOfSG64k0gLwzX4PqXC8qO6f3KhLavAlcyXRwNHeqqsmQHpv7bdX0GiQIJp4rfcXx67LmCOZmXhOLnx5LlhwKj/6dNXfylqBPkT27mTJahKmRzTGDbFHVI0g0MXyGDKYLJtQtlaFtbCC8gE3TyJ3F6CTNPVvOHbdKJ6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748754594; c=relaxed/simple;
	bh=PGlVKwrJNEBFvwi9GzDw41/GJjDfpgp/3QkauOxUK0Y=;
	h=To:Subject:From:Message-Id:Date; b=bIypDnDkH5RYexMRuLFOCU/2O+ypQIukohBfFaMB5PJ1EqfgekNrliFvrqgR1P5zXrfXuMlb+uJsc8zVWYctKE1bDnQmiocG2Mkjva0hHJC3qDhIkAsms5hAXlztWS+l44cEQfMfLt1FLr8zEF6FSuxt4Cz0tuu6hR2AKSy6DYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kcZpWmUp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kcZpWmUp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79B2C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748754593;
	bh=PGlVKwrJNEBFvwi9GzDw41/GJjDfpgp/3QkauOxUK0Y=;
	h=To:Subject:From:Date:From;
	b=kcZpWmUpiRDupLz2xf2BXrzNUDqI/zJrITndXU8PKVm1vP6wwlNUY1xiXyHx8kTtz
	 qgQxpUi5k5A3x744iQfxGVR1XciVLZw5SAE2SIcr4zuIdcuPEJcE0nFU3Y+4xlAZM2
	 6goAvIdGBY2MpU1fL4pBs48WT5GEnJswjJufbDaRKc5D830hHhf3E4kpr+u+wfGGcT
	 fraWa59RYIsglCjP5b2eMzqdYy/Uzs/3D2sfq4eYTDgjZJUVUXQYDW/XB2vdWO7VfJ
	 lzPEvktstw31xCITJpdvLn3yDYw9RSN0bF8w/jXxJ51AmOBu6L7yZpw/dxBSc9bzBI
	 ZBmpNu+1AVWqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9288AC54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174875459357.27909.15824098016082301021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2d5178cc50a27eef90c9adcb7391e73b7c5358dc9c522a5c7a4da2fbe91bd67
Date: Sun, 01 Jun 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748754593
