Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2638323815F
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752675594; cv=none; b=VACDeha8Y8di5kqBXm2NYxaOLc9TqrFsogB9CbhyW55G3fBCye5GeLpRLIgdqjmW24ljC/eD9IO8YX6GzRDE7sP4qLL3PfBGwILwV2VE3LPKvD8zgGcjJhVjhyFodRtFA0GZwGF0OI8/a1L5l6IkSXM73DuUFk/LbC1lzvF8Yts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752675594; c=relaxed/simple;
	bh=yKxoin54SW6bm2pBw71CuZkFG0/rmS8j6pgMeI8Q7co=;
	h=To:Subject:From:Message-Id:Date; b=nOSZrDz7ueHBz5WClN8AYV3fDq8dLDyIwRg5nGBxfI16EllO5OIToQeofd3E0qdUg75JTrae9yc9Bf6ri3o8seeyx5NUpj7vDheP2Ls41WE6H56iONNahx65HKE4FOhGFXl0CTDlDX1pA4wkswBCqcJMMl6HIivDAghsg2oyTEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G+jEqMVB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G+jEqMVB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2568C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752675593;
	bh=yKxoin54SW6bm2pBw71CuZkFG0/rmS8j6pgMeI8Q7co=;
	h=To:Subject:From:Date:From;
	b=G+jEqMVBwm8L/QmNhXOUwB6ZhrXljLF9dZq2V+pk56zoptin4s4XJLIFfO1GUzvDw
	 HJKaET9LgzmxlpvBoCLTnaouaI7/Mp3RDImXR/NAyGXtjozCj5UO3TbNDrm8MLQuta
	 2R7CoH9rEYhmbj2MWj3wC1hHzPsMYTG4x87UWGM+tN/RTbwVVIYdBiFKUsrJcei0rq
	 SKdXq/0l1ebuKrSd3POpC/gOcj30xkLTZ56hjLcj5n5G5XDRixGmHKGogBGsSUezdZ
	 9Hg4Q1Qp8xPEypg65B+PjoULuu0rt47uLLg8PnquyTdA/gblut9gl64QLO9Cb6tL8s
	 WlwlEzgNa9f7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F611C83F27
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175267559357.11148.2521246669318065088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3ab66cec8a059118ad3ccf13eead587a8e96f8df9ed6c07b4c7ad8f749754a5
Date: Wed, 16 Jul 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752675593
