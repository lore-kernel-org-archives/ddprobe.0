Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21FEA193077
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760294394; cv=none; b=UNdWZnXZk5IGsCSOujAsBnEpkzskGgfKzNQg4JYAp1cVXCs+UAUUPkdux6USJSS1IRI3daxFr1kkfcI4EqtAEcscdmglB9RuXa5nDlaXsLEttKIIMuDWwVdgrJiQfm32ncz4/aKwwAEsPt8dXaDhCIX/Ypf8ILREzhXDixiwKjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760294394; c=relaxed/simple;
	bh=srhPigIY1SOWjq4oAoqHLKzpdA2lViKYP6n1xuneiOU=;
	h=To:Subject:From:Message-Id:Date; b=JbJe3oRYlDF6tLiTj6iIVWS1P+2mJt5fpV5PC6NHnNWV5cHUi2rPSgS4db7wFkdgwpJV2SfgMeCOZAXhhqGP537Q397rNIVm2FH8ca2BIzto1/k40JrHOIhl4StqQuJa7996gc2U4+87BL4JIcoIjQe2oPLcs5erdBrrRLTGSS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=boFCrnJX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="boFCrnJX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2B9C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760294393;
	bh=srhPigIY1SOWjq4oAoqHLKzpdA2lViKYP6n1xuneiOU=;
	h=To:Subject:From:Date:From;
	b=boFCrnJX9y8hxKJhgDOQ5oYrZRNHh08zE5fmHjP+xhjGJO1pVkVxg8wrECobrlBuG
	 Y6fAa3jPMZqMsNssc0DALV6G6DkfImAARQ0wvq/nv0IMMNkVX8bWpG9E7xw2BlS+Jx
	 qX5oNvDQbrEK7+3xHKF7QupMUotVekNErkqCBzh4EnMwd8l1N/hTr7fHyYPV6qalr5
	 VEeOe79lBWVc6fL8Z3oqDa0EM9AK0sKhGyA+A7Ue0vwEaB6XrktUfIdMtURFnoAtEZ
	 QQsa8kKGmqJrmmAyac8WT4x7pIHJKJgnXgDG5wvh300pgwUCKqfcl++hQ6FNF165kB
	 tZempoeCNe5jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977F5CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176029439358.2485.15128996679602384147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db0204b292b1125968d296537e6d60d6535e60787d907f2fc8bc2e40deb3da4d
Date: Sun, 12 Oct 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760294393
