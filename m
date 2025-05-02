Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40898C2E0
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746145795; cv=none; b=c+sBiSTiuDs6BTZNCBd8QUwtPxuHpDCWmZg2FiK0Ro3P6nGfyUp+JWACjMrV/t62rOvbWuO0gseESkmWr3E7uZKcoPG2vmad1i7dgSPcVuTaPBtrBb1YVQ2QZ0DoHt69FeVfkEQ4DMFGXzaB8/rkHUzaLN1D8GHVCbhJfNSmb2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746145795; c=relaxed/simple;
	bh=zc1Wjrzv8eguMWwaN/4hH0ZX/ughts+IpZ3XrCjQorA=;
	h=To:Subject:From:Message-Id:Date; b=L8QGZSSuIJmJvSB/pJD0IbpTyoEcQNt81mKdQE/i4Q8H3zUBzuyWq/GfViEUSVhSxaRZeJaOryySULaG+rwh8wHLNqpufXNh0Py0ltiIlridkyad0dD1CVj+VBE/StQa6A4jN6maNSVKh9IMnkSYlAmLXDV/ByQgN9oXtmIYbIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=prN8ib90; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="prN8ib90"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7E5C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746145793;
	bh=zc1Wjrzv8eguMWwaN/4hH0ZX/ughts+IpZ3XrCjQorA=;
	h=To:Subject:From:Date:From;
	b=prN8ib90SaAkvUe7sYKX0WB/DB0vzgsc85RiPCW2zRnw4gR+UHpR5Yy/xsg55Xcgq
	 PV3q9fIywjMJW6QzuogloRetjaP/RxGbAb35+uxDS/5AbyL/24UEuw9bFKLXWhgRiw
	 Z+ILVdHkP70Ov3JBqGg1mXfCy31oNvWJ39MYSXajJTe54Q0ntLuhQ5MxB+liDvpzdc
	 Tt6trZXEV03qtq1zamXuHYMQtLvIEPoQqs0gNtRr006NahxNcWAThv5t4xwCijRVqR
	 9DgQHrTK95lbM2KuE7xTCFBuz9Xb6KWM/Csk3LdKeI92SV7oZU+CvmRxyH1Z+NFrWz
	 D4/zAIITRv8ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA6FC369DC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174614579358.6899.10045770571830480540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 022b19956a17ca754f7a19615f70782c1ce2dd10b9bdb8266d3de691cf9d9b86
Date: Fri, 02 May 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746145793
