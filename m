Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B1AD14D43B
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 18:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706899097; cv=none; b=Wq/9RBHEPe4vt0c88O2bJK/s+DTi4mw2sWJtgOK6/fcWvC0Ew742wvlBA1K1IWeC7xWUk9eZbkDlV1vzwmEOf9BgOhE+sHunI6SH6QS74BKzcJUl0kHPP+Pjf/cp+vDxWXZIU2V8esxaeD7Epoyfjx+QxmGQ5X54GE/cZFo9rlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706899097; c=relaxed/simple;
	bh=eO84+oLjKjvvOb7Iqe4K6nJ5eA7wac+9xuIfD6Rjxfw=;
	h=To:Subject:From:Message-Id:Date; b=nQkxrcWm4Futr0nQlTi2XzafE6B3BU8rMYchdIYxoVTHzKItx7wl4Ug2ITH54MT+k1GFpqAr4X518x9CO7XoLLyEVusp3GGGIl5QhHxwuXPUDy2cMc0jsMmUF4ZgN67nEyLu8XbuDYWcaOq2cHVTgz0GpNgfanNdSESS1K8cZ/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pw360n3E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pw360n3E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92796C433C7
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 18:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706899096;
	bh=eO84+oLjKjvvOb7Iqe4K6nJ5eA7wac+9xuIfD6Rjxfw=;
	h=To:Subject:From:Date:From;
	b=pw360n3Errtbkhn/mwlo+ZGgYJtQaeJ4p7A2xb4glpAl9IRwO1pNv1uhm9hzr25C4
	 MIqQhyOZCtFL2Iu7gjyv8nbF9AxvzcggNuhVoWOgJu+a2EY8/1kncTl6ZnBe2kLNxg
	 DqlUkj9Zby0bFYRmufBr2jyRjez5R1YTEtokk7eTCFrPyXCf6EueNkeGnODwS+MsIc
	 0HnMq47PnKE0jpjpvWDigjTGIb8WnwLEcmqELVRQDHkRlfHCIzM0RhuIGRF3U+qqFr
	 AYrwoDKG5n3lwIKrnq7jiNXURppddn4ezrOQYxjC8lGmv+Aib+ZY+MDvPjeIM2scfM
	 yRo5F1H6tajkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70C04C4828F
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 18:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170689909641.18827.78594435645694173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf2642f1c9a2c2995f7818418c93070f2b80dabc59928ea6b9dca01150a944e4
Date: Fri, 02 Feb 2024 18:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706899096
