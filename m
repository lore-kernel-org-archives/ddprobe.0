Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283772727E0
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772066094; cv=none; b=cQaY10DdsLeXlDzglgQ0CxDkfWid0veQwO0mzSkX9ZvNg55RBGpAGdYufsESb+qfMcC4o5w4itczfJJBr0s4H6+L35R/v5vHRX2CldvCWCgETYn8tTm1YjBPm0Py+Z8DgNG9f1tI7aD0qorbkOG5tejyyix6TxUeGTeOkitMJ4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772066094; c=relaxed/simple;
	bh=ieXjT8UCqtoW0YAr9h+C6Uk5rVFfJjNXMlSH0MeWax4=;
	h=To:Subject:From:Message-Id:Date; b=R+BO1E8Yoqf7n5AOgjEHfVWDC1FOAf/3t35rm6BX0Rd+7ZfUebFLCkJLN1qpyDug+PEgpNhjQeQK0Fr7AvRt9MZ4xHmQzBwf/O9M/ydIRDQ1bBnQP2RHgJ2QyY3Is0DoegC3wU2TVaux/1jFOoPZOn+UKedoPwwf45GpMP+qIlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7viBsJT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7viBsJT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6802C116D0
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772066093;
	bh=ieXjT8UCqtoW0YAr9h+C6Uk5rVFfJjNXMlSH0MeWax4=;
	h=To:Subject:From:Date:From;
	b=F7viBsJTFw1ba1VlH1DXvCILYYNuGeO1yZO1pMbfqIp3lRye0bBvVjtjf0dhf4gqQ
	 NcXXpe+8WL4LHrZ7l/L8T8/hDgMn+E+fH0InI4sMtsCiEVE9kZRqIuUG+1/f9wF+fj
	 rZip8GhRd4abZSQuI62NUdisa1uYsrJzVia0R0gMQ39FAirG6AOnqY27HeNCuyKXrA
	 410bejWerUI2U8UV2Ge8Lrr0GalFLTUgBRiZuNyS4d90vSOnc8g4opTL80Qxo0+V5t
	 IIL0MTW6jgBYjKzu20x0AtTFMEi6Irg4bDMa3QWbi08kdxHelYSG5SylRkSvsr/C60
	 GZ5BHJxIZIlhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2C49FD45F9
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177206609365.19056.4777589867285306151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e91e87473e41dfd7cde2261ad1cd72c009175efc17be9a392dc5a2813d00eae9
Date: Thu, 26 Feb 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772066093
