Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274452E06E6
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760009994; cv=none; b=e5ihQ4CibgvcnWbeVso28RTw/FHEotAp2Ron1teiiwCx73PSTs0XVnSEfDWfjiC+67fXH1k4yPVRX3UBdvW9GSIV7Sm4HRlfjMwkfY87canCsFNpBECPURHdQyWsRBl+UDRxcqJVIq6o2Hw/HJYOdLw3TwyeBGvOjEOx/QZ+tbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760009994; c=relaxed/simple;
	bh=l6PccbDE1VbrcIqwdg6oSMl5qZ2Qw1fVX5cDwFkPeBA=;
	h=To:Subject:From:Message-Id:Date; b=u4+6TrdQjeKnB4tBwe/yU6WIZ5AFr9o/wbC+ps7/O4mEzwKA164WsINvCnxBVtNoAGZEgXZWBV5AAqr+9JHOH6xEvKSOLbyrSweShS4kRAiZXZkXMqmxniIRe/S41xssR9J8acQEJO7k5fLM4dLlGafCR62l9UdOimRxFoea/tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G1AVLPy1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G1AVLPy1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F219C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760009993;
	bh=l6PccbDE1VbrcIqwdg6oSMl5qZ2Qw1fVX5cDwFkPeBA=;
	h=To:Subject:From:Date:From;
	b=G1AVLPy1aYvsr2O1pHvJ4gHW9yhKWh77Dea1dRdIJmX7VbZ0dInehTKp5nAjrLNxo
	 UvcYNJcGVTuHld1boVgBkGzAIyxgKXn3ly8JA1AfWrrs2vpWOEbhu0NnkBar1fJjV2
	 5D5GkmEtMPHhuse7MBy6PNDib5JvSnDr7qe8bYhSc73KEfM9oOutjgMoaZ4p9U3l+a
	 9vfgOIdjNUXd0IClHDtVyA0LARkFgT4r+c9fB8jVOskuQLGxFxbiA83RI67VjDAZbm
	 kKgY8vIFskkih4+w39sdGcGQSs/lAoDddafJBUsZWMNhU5qFmrFABigw391dHp5aXW
	 vAbIaJRDVr1Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F189CCD187
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176000999357.9916.12739760151509508247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70c266ed5e30aac8918578b311ad7fee4afaa4caa01bd524917ed632df1ed7bb
Date: Thu, 09 Oct 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760009993
