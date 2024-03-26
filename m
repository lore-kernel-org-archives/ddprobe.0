Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161034E1A8
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 02:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711420097; cv=none; b=IR8XpV61ZxkJTo8GY1xtTA0BuVRBkv4xM5LZHY3RSpY2p3NWAnDbWLHX1YsJ0o00aKE4sklMNbDs7NUTPLdOrS19/n/eeMx0pdGWb2hwViX1Sg25yLrSbfyi2nXsFDLG3lEgJSXSr3kKRDfAp+cS3ooZiYkNqsAck/8S2yFKbys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711420097; c=relaxed/simple;
	bh=nfyASXBzm5oHl0kvxVLRZIqlFji+O5KNLV6ZiHcQL8o=;
	h=To:Subject:From:Message-Id:Date; b=rHnMMSbdOFxRXWJ1c09c2EPTQSgHIfFug+840sUl1BNmpqXe3vWrjrkt4YDKTeuSCvB9DhIAIJRMmqhtu+NUf+Us5p9pmw1+Sux/d8P5tIOjaJG7MZYj8FaoXekrIS4DMHu5KayH7Cb+P5sQajKdDfCVGQCBFdA53kkfbj6eNrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DPibe0ct; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DPibe0ct"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C728C433F1
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 02:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711420096;
	bh=nfyASXBzm5oHl0kvxVLRZIqlFji+O5KNLV6ZiHcQL8o=;
	h=To:Subject:From:Date:From;
	b=DPibe0ctW+CNsNsVq5R17+Sc8+7anuMv2HzTnvYLy/FCMqusR3ZzMQwwqfi3uftta
	 r+sZ2g/6lXOnKGN1Zf+MSVyznI8NFhVtoypJcnHqNo7dyyDsRbXNOJMFWs3xZY3+KX
	 EL7DzWyQhQAHyvYGveWXG1gYwWb/lzIespFYlEnUeIJ+4WR/ZWZJPhuwJiB7zpdYxN
	 CuPPBOuvMT0UypT/dIi4nlRyow1xXdkbXug5LZscOFbV2YSBZrA8+E18mDhguNrzc9
	 OFvNXE71wNFEw24W4DQE3ZO6JAV7uzjhe40ylP4GH7az1bgelObZ2wtklPHynX0nhP
	 giZFyDBKOdaAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62585C54E58
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 02:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171142009637.4897.1423828803442946704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ee4fb4c3846e575227cb997eff3d0e792c6e0ae49f794735ad40ac99e4417ba
Date: Tue, 26 Mar 2024 02:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711420096
