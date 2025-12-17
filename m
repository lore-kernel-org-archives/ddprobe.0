Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215613090DE
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766003034; cv=none; b=UnvffK3B9wZ5iKizzLE34OnEUZ9wlVfG3cOhzVikYzhZ8qphdqyJo91JbmujPd1lXRdWawyABXRH6cJPJAhT3x2xYLths9BXxMC98cHc+j5UPB2acqO3rIcVIhzVcCIvJIUtnO2iLOFYv4jTVmpMpSPH25Em4tjXtz712aYq6go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766003034; c=relaxed/simple;
	bh=ZD9c19etSoxk/njhYGKVDmQHuhlWa6tlCs1RO011+Tg=;
	h=To:Subject:From:Message-Id:Date; b=qioorobIAG441TNp4ByTegsu84yekEPavlhPOOwNYYgw85PnvVFVUC7gcr2VYf09k2tSBleTk8j5mrvM++/XsexjfJcbRY+MX/RNIxHkxRVKb1wqhB4UFzooxKw9zDC+XBNhu3xXelydPlqTYFw+0We43McRSSUhPYwWLgo4+Ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hdn1q5Qr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hdn1q5Qr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3411C116D0
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766003033;
	bh=ZD9c19etSoxk/njhYGKVDmQHuhlWa6tlCs1RO011+Tg=;
	h=To:Subject:From:Date:From;
	b=Hdn1q5QrflpZlH6OgcOtkp/NjS46MOSZr8VoqoYPMddE8wRgwzAA+L5NtxEDOcqrU
	 KX0bfhJQsneWWPj6MpZjRgV983/AoruCvW+5QOnTdCM9CkNPX0YmnggJfH0mAC5oUW
	 CTmx1/NDN5J34ENdKh7SySdCJmp/EQYyfqfrucvzLbALazi8ofQKKU8esqRJm1x64r
	 8QA2+SbDy/3F516yvrGzmTaVBzdJlVgVkk9v9sJ2pg8rfxUpluP648rLJa04AJUH2V
	 pp4ScjwLKSg/KUrJ3eUNPe6HiOBoPR6jk2uNiQqs47iO/X/XsnSFp7jw5JIhJTkNv1
	 k0OKTtBoHWDSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93649D66BA1
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176600303359.16322.7634137077423403300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45e098284eed68ec8e5a64c76d13d064eb985c36fbdb157754dcfbbae9a487cc
Date: Wed, 17 Dec 2025 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766003033
