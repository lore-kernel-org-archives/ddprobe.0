Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306DD2BB1D
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759589994; cv=none; b=U/mt2ArxqInNBOBZote6wwID3aqB6G48zxIN+9WSwAFJDg0vovGGIsaLFGrJ28O646YeZV3n8rYrQmTJNtlZr3LK3Q7+WYt+s/efStDYLkaeIORF/2kvGfFTlnWrP4k/+mP7PO3tMkVzr2MqMYsqthfmOyUg+sMMSSKmjx4EDuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759589994; c=relaxed/simple;
	bh=s8of6f++OKA9V6UEuB8xg4uvutA+iy/ZdMfI3AqGXXQ=;
	h=To:Subject:From:Message-Id:Date; b=Q2jophz2ugTo+yphz4+08s6xDusOxCGjiIp2SCzuAW7bu6H8p+ZY6D18bQ7SMef9ijf8xvFkzc9pFYv74sZh98SUPk6gkVUy1xT9+HEa/tMcb3Dh4QSM20VpA/QeydpXimVoeOtOnu16d9yGR5pum4INB428FWaahQ7E3QWdxGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CjlesdYn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CjlesdYn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A98C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759589993;
	bh=s8of6f++OKA9V6UEuB8xg4uvutA+iy/ZdMfI3AqGXXQ=;
	h=To:Subject:From:Date:From;
	b=CjlesdYnixdUA60Gd/ALeTAS6q0qbFR2jTQ7PnNNY1dJVSPlLQYTnE5Q//LnqITMw
	 6KjB5pZ4UI01ZyYsWleBVF9tFNc4HkNMlGIGFaQ6XhfSNGFPI7wL25iZEFm3S9BbxY
	 rz+UA5zY06SpIwHoOAG+eNxS6ZXR5g2wO7qgGL4vNZA5UC9y238dEGPcsOmB+kbZCT
	 O2B3mciWk8FLgt2YSz8dP4/9zufyZYTjPaiC7BPNrerNk+OqnFBnzy/mNN3XsFxsxh
	 73+ERZIilokIQnbo3mi7gKQsr9XutB4pOTCUB7wYwBR9W9bSdFOlXV541BoUCdC3dc
	 0+febgEwM2XYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9400CCAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175958999357.6211.2004647623757144974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76272bcb7492142c8c003e9bb1f1cd306a7165301c930e1f95ad54ed0f466d3a
Date: Sat, 04 Oct 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759589993
