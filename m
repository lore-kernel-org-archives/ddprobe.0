Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5329C282F01
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787898634; cv=none; b=RQbEabXJGqwjcTFLOGKlHq5MTfRcg7UWIWjRFVXTdVC0T/1KES+gULeMdXtR8oZcg4+3e1nW9/xNuayZE7XH3vbxH5TJuUg1vupF+7Cdij9aCKqGjs2r2I0IOlUoHEMrJS6g8jypUupF1QYEWrEB0613c5ExE1n5NFsAZ0D/eDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787898634; c=relaxed/simple;
	bh=MueYUAwzIJJN7WCK1e5JewdwdxqDP9GPS0cGEjhTjeQ=;
	h=To:Subject:From:Message-Id:Date; b=snYI6RSU4uZhEC1XIdWx/Gq6kLBgjabTDQK6S5c1iN2nxFSIe67fkR7pi8sr5hFqBJJ1xBn16/FSb44LrxrRKLEPYe9omIU0qqDd+Lq+hCdpOMqmmB54BZ7mNaICyLjVBHW0CDriEzj+edgeAb6SEf/oz9xBEtnbx/zUcHeepHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wp8I5QkB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wp8I5QkB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBDF9C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787898633;
	bh=MueYUAwzIJJN7WCK1e5JewdwdxqDP9GPS0cGEjhTjeQ=;
	h=To:Subject:From:Date:From;
	b=Wp8I5QkBXQsToe8KczZdEHZ1cJnaypw3pf10JX1jVKm26CFMyGkuk79qFM6Ft/hm7
	 WAKtrl5wotydT6Pio3UIh8pVPD6zKLtuZxhl8eWsGpPWkq9WjRIiY4C+a/3netBnku
	 DJAMpWANBade2u55kAS1A4yryuVhUOQVjVK9sasVwwYm3fiT1YaQR1EEoNB0ueje4h
	 ZMrEJM/OhE+IAQcaq9JEIzCh1y+FDeq1tGCAXGgyzDs6IH8SIcmA8gzGCaA7GGPaTr
	 8fjPmivQUQCMePhY2it2p7WdLno94mlyOc8FkF1XeuEPybv/RDrCRwQJrKL4wZu+GC
	 hV8bZP8tnXiVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E0AC61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178789863368.29206.8123399100104716690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46bfbaedbb87edd254f9487780fe6aaf5d8f4dadb440221bee2d499137bcab4a
Date: Fri, 28 Aug 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787898633
