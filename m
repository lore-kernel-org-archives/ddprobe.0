Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E5930EF68
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 22:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778108254; cv=none; b=KtOSJn2+AHfOsB91SzlLpht1vimjRlMj4WXDJ03nU77D0iQS9nSckcmIXCNAgeaWLpMsvDp0W5W5O8vmuSOuQHLl++eWlOqLTMDAoLsaNr9k9Q78gNyiz5qwf841JSj0QNx2bzFfMt/aaUGj7HV87DNeUU2JbXtDLkEWBJxDzr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778108254; c=relaxed/simple;
	bh=/M09Jva1Ts6plEvuY1aqxRqjmPZ4OUFrHlmQCA1svQw=;
	h=To:Subject:From:Message-Id:Date; b=toLETNUkG8weRHHrEnWV7bHXdu7pLBWvS22kpGkO8OF4yFFocNJXk/4FVoe6Nqrvd3knQ0rBFCeJpnXAm+jNSJDlxZaaWP772qlB2udwHzh6jY/g/U3hpA6kuJNw5AKeyIDEbYLaaij85MkqLMhM2ECgRvKBzExzwz29JPJxNIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WMRPMW1/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WMRPMW1/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0836C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 22:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778108253;
	bh=/M09Jva1Ts6plEvuY1aqxRqjmPZ4OUFrHlmQCA1svQw=;
	h=To:Subject:From:Date:From;
	b=WMRPMW1/Sf5zBgoWb83rKZmUy0BOAA4L5wGmgU53upKMrCaTAYctiM+/gK4yUfv6H
	 uZdFO70ffxt5vFB3ANJPHg2kud799nNMFf1Buc6Irv6v3hqQLvo1R6GuSTfyWoKRbX
	 seii45eX6L6SjrIDDcb8e8XObcUjktdN9LaBpfmbryZ4kLudYint3PbWhT55UvNZne
	 QgbnRViYyg83daUGL/3yS+9eCH1dosKikKuMSuP2S+5cmsSxfMeUqLEE5dadzX3NbY
	 I0xL8biONchwkkZ2vPiGwMdoO3Q+7ykYVu9QdmMuoAMJoX/XgI4Gj4dcb2M3ejCLwc
	 LP6ddivVfkrVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2194CD3439
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 22:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177810825369.9079.7814553743048656311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60c9fe7ef5d95154f49d83a9329679a3b2216a674c4e48f522836714fefe45dd
Date: Wed, 06 May 2026 22:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778108253
