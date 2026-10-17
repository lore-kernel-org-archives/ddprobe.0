Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B6437A4AB
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792209634; cv=none; b=md9+lQyP9X9zacQmXOh+eeMgSQaPskTifbGjKhqZT0SM7uvrfV9UC2xTpAzg2WeqGDiJPuehGKzhGXZcahAJZqiHMf6uMIL8gUUk1YXDpw2AwgzVGAahCr8/7CyEDWKkzQObFgi33SqgijrI7yap8XzhlXgL0uLGA9uR16xRVa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792209634; c=relaxed/simple;
	bh=p80wrASHMKxaKJ7WEuNo3jjCIIWM/2PZtfS61Z9ums4=;
	h=To:Subject:From:Message-Id:Date; b=kldrfWUUUj4frSBRfT6+2zonHxq0rvtceQ7qzeE/0418GIsYn6kE1bh48xLpHyXL/A2CTpH0OdW6+PaijCezylc3vELCyjtxuXCV/GKX07omfJ8NHn/iRFHzaAoRk3LuY1vIuosp/u6/9140oBWZxKQxGPeHzWtma/LRxCsTZcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=koztxaBu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="koztxaBu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0497C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792209633;
	bh=p80wrASHMKxaKJ7WEuNo3jjCIIWM/2PZtfS61Z9ums4=;
	h=To:Subject:From:Date:From;
	b=koztxaBuOnUNPae7HaIuPn6mxBFocCjWqgegQloS16Pf+EVaCd/l0zokIqx5zXwff
	 iWLOto9WV3ue7tuzslA8suanHEpnbU1jafshycIn4Ijp4wqfaqYrAQg984BjviUuUK
	 BhHXxmKzlCj9ktfNoukjqI6Xi1jo6SSbNdWBdlKBNrwDPNjkjQ9Fm4M+mfjxotmSOQ
	 NkWliyK1+uL24VFDCssHfALTUpfHMKo6e2gpuwaFVUh3sGqX6XMacK4/dhwejif8sS
	 FalnLOrFfjlMOtKJRJbrDVJXE0cV+HOqXsyCGfGCfk3mXepv55W87Dzz9HlSgTEBpK
	 ngy/FgP6AYF0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA489CCA463
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179220963368.8623.15788362160516209016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc98cea563683c1d5c458d803136ff6f23205e3eac1b01151846425c0af29fac
Date: Sat, 17 Oct 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792209633
