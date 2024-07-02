Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F7EA1CE094
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 21:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719954923; cv=none; b=lZcaG0GxF6LWqiOxwpfFWbgqtoHNZJSzmllRrPwEweHzRSqLyUTcVOGsgGH3+ZacYVSSuDVANLZV7cx771EG7hu8oZY3Ppawf6IVxN779ohF7izlWCgb37wLwsByTxuenWYVNMtL4U+QnzIEkO2BveiPDXEYY9jc1fkmaSZDb5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719954923; c=relaxed/simple;
	bh=OXevHKx7wcDIcLqtt8/mOC1tgkIjE/c7dSxAOnhA8wU=;
	h=To:Subject:From:Message-Id:Date; b=p82Wyp5nD0khEJ0M9DR+1Bhpb5HJU2x1oXL0cvYjxZsfGWdvanW4lMurE3jliD/5X/Hc9pIqGhArznP2zUNv1X3rHC1IaS3wvNuRRUMAbr7fWa5NQpqWJxJUc16hDWZN1GquZJCbdOykhGrIrRSoe8af/V/zfKzVBq1UHh5+MLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dW3uvbyk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dW3uvbyk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7FBBC116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 21:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719954922;
	bh=OXevHKx7wcDIcLqtt8/mOC1tgkIjE/c7dSxAOnhA8wU=;
	h=To:Subject:From:Date:From;
	b=dW3uvbyk/R2GKhqqwzHLY43Uva7F0vWLlQT12JXDxVn5Z/HcOdTXMks1ywVAdwH5K
	 X+WJsK3iZ9lfRmqUdRjVt6dK8EwYJFAGcKpN8TUZr0SD4GJozoCDRTXfyajUonmrOG
	 c4chjPpbqfGnHi0RsHmcQBs9eDwK8lOn7s2s68LpuxmQVkQPtOm5h5jBlGhboFAP3U
	 hTbPr8TscYqetjilMEQS0KhOZPMlSi357/825Z/uRxPi8aPQTfWI3ChRXMBOkc8bRG
	 8/3LdY9JskDiow+G7cwoBhyN2lyBRUc4J4rT8VrVsL0vBFC2vY1Pz4I9jt/HsKWdCj
	 dDArTxu0J47QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFD8BC30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 21:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171995492281.6248.8940385710434830203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d3211797cd3b1d282af7de478559518414b12b72f0120249be7b91131c9c6ff
Date: Tue, 02 Jul 2024 21:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719954922
