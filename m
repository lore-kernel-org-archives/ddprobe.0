Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CEE03644C3
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 09:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781862394; cv=none; b=AJ7dmvIgcu5Z1IiMhv+Ne4Fubv7g3EFrj3AFzqdXGlCnl6JBk1orWooLGjfOYmFN7IZJ3wwbl6Q5OxYSuNKX7oBEuNKkSGcI3cfFPXiUePaDn4kXLmZC4DIzEY9ux0CoTL77+h7m+KJMyXrdnjaRg144xqpqI02uBVFt4kQoljk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781862394; c=relaxed/simple;
	bh=umW+9VWQ5Y8mbuU4q8y8Hz4D0TP7nKJBYJXGD8ivQuE=;
	h=To:Subject:From:Message-Id:Date; b=OfOmoldplEthCdroYTS4zCSLIFmfW75+hlT3qNeKBPNl5BhGcRGdBstts1hbkS893s3mGGvuiDQxVqrAImzIIpaW6ByL9AEKlR9xoKlDLWGrFE9tmDmvOxI0LTZ3tsAECTb0i/DG++ikZ+7USswFDt9e1n4uA5Qy3aSjjnEqFro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aFLHZLWq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aFLHZLWq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C573AC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 09:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781862393;
	bh=umW+9VWQ5Y8mbuU4q8y8Hz4D0TP7nKJBYJXGD8ivQuE=;
	h=To:Subject:From:Date:From;
	b=aFLHZLWq9QLdtmbvp2iYIJdcLymRHfZ0Aq//SErCVLQ4/3GI7HL36KBCIbXXZvluL
	 Ykkb1NnVbOc34gj2lfYfAF/Imx+Pg1koa7vUdrwBCQ3xIpFMs2luhBVZAXYyXlwlj4
	 pzl4DLX2vQ8yNaxPJcG50hZ0oLjUoqN0XaEzvOk/VXBgg+4m7CjreMISCuGd8zi6IW
	 67Xs/OmH+AY7QtB3YeUpO5eOVeMH5XgbNy6gX5RrfCnYpss0edzC4ywaFmyn+o37xj
	 f4IltqjPQddoFLLcl/ts42VEMDh5FX2n1S8UggJCEyoS0Hy5tK1YtQM1/6J4C5dhts
	 G/Fk63BPHrBdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE30CD98F6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 09:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178186239369.18063.8899332512813840885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d15fc00ac38c7a7c2c1a6b46973d3c658ea98d8196d79bf777eab3965490b0f
Date: Fri, 19 Jun 2026 09:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781862393
