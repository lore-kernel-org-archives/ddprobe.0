Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAB9B1F92E
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 00:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776125254; cv=none; b=S9f7qWmJQM9bhjjsBgVZ9ySIAqS7sa4waOJqedNqkIWrJOgC7R5EqapTYOZPQuW8nGhxFCDpYha1Tf+SyLMlI9C3fmlBnkc21UgnowV+1GOQ4SjgXbUgUdwqDoykhiqQ3cnCKjMp30Oj4ECuzR5hzUW9lI34S0RvTxCO6we7jQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776125254; c=relaxed/simple;
	bh=NrdGpC6GkRLwd5TDIgz9Awy9pCAgGZ9Y5Yi1Y+Sn+3o=;
	h=To:Subject:From:Message-Id:Date; b=ffl+h20K9XQJ8nsU78ELRMvyXgB2GnCVxcw43tUhAHomf4kMRhwmKng02uFW1mRffoFQ3KD+dR0PDTtGkTnS3iFlSvWFVZymwvWZ4TumogKjNDI+Rx42D62hCE/qRMYWfzxTnSXrnJbpLiglPMqY/M0FtIA/qA1QnOYhaIlQE3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LXZbegXh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LXZbegXh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC42FC2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 00:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776125253;
	bh=NrdGpC6GkRLwd5TDIgz9Awy9pCAgGZ9Y5Yi1Y+Sn+3o=;
	h=To:Subject:From:Date:From;
	b=LXZbegXh5rpKROdE13f3wqGMGAP/EQjaFous6U+5i+RSgfe+ySDW70pN0/qGugwTs
	 NoPRh8fsVuCrSpnVCv8Mc8jDtmb0NMtA1ozkm8DugiPrLDEyUqV3PlyxBRWL0rnL7q
	 61pvqqHb1Gb7HkY+8+Qr5+SauBLYxwhnz7/Ro6YUdf5ri/jYBVpbxGe+aScuV9A0u+
	 GsA7tkkjWVzgiZHnRxp2ecI8OD9HlttPOe5a2lk0PiI3fdVJ0FdifjWVOkXBe83YEe
	 hp4o0n69or6oLrThxcdMMdj46Ge4JsRcCaNkTFlRu3KGL3z9sMpV9+CI9hDZia+Fj0
	 /6QzuJ1Xl4aKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA729F531CE
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 00:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177612525368.10521.6840654945234549156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c7b8a6bef58fd1676f6818498bc5e2e3999ad1903a6a974255636f95bcc928a
Date: Tue, 14 Apr 2026 00:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776125253
