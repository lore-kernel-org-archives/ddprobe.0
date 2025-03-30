Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34108AD2F
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743318595; cv=none; b=Plavu3U1iQ2kjbVu1gEQ4ZaJLUgLqdxBnY8EZV2nP277bXHusgIrpeZUSMvvmtXyx1bRdEGI+eL/gN9Grz2ysCGNwrdfelk9cPWipTWKZEF3YwY/PM/FIYjfovxSA5gTsmzLiwYpCEsaZvbwWvTHn2VLCHFpI04VLnTtPPfTdAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743318595; c=relaxed/simple;
	bh=rmaV427whf37dlwhsJifpLZJNoEnlFw2NodwiU9eH5k=;
	h=To:Subject:From:Message-Id:Date; b=QBbgL1PjySewGn2E71F55UTaHXSgz5bvmupIqdKUrrFqpO+Qm63+230zrlcHArYSEZ7jcs51oe0Esdd+FwFWXxBRN1wkmH0zONFD7/wDLPjJ4AFxwhUns4NWFZp9QCiDfRR6cZ5qWZiDl9OgfRWRpedYBP0D32I+7P/j2ADBIsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dVCiWkZF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dVCiWkZF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE9BBC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743318593;
	bh=rmaV427whf37dlwhsJifpLZJNoEnlFw2NodwiU9eH5k=;
	h=To:Subject:From:Date:From;
	b=dVCiWkZFOtLyDYLm9RFzVGbg22lUx7hrp98xsijNud3bysr/gR9cYkUOlFCk3xo5T
	 ONzeNi8i47jeo6qCM7I+YeYcj2tB95wqMuiAT/250WjrZuyfRFxSVC3m5p1kvb5ob2
	 /dBTde4VEiAli/qBMalS32+Ex5rqz09BSmNWeQyrVIqSPiO22tTG7dUSmeKnH+iP2a
	 AYtXy7/Xo/Pg/7DNFYQEzIxtpueOuJ8V4MuF3e/ot7fIApKRWtuIqvwesup555vk3S
	 ULH2DbjNhJL+6Nsa4GYpPpXtcQSbalLaSNgGrLUnw1HNRoN+sd1gWIUsCQTIbEcwjT
	 P8Sz2LVDx/4BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A174C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174331859360.3087.10041869341061563197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cceec735913346bb1fd0e093eccb42fc784eb1b464b594cc2810cd939190bfcf
Date: Sun, 30 Mar 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743318593
