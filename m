Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCC71C8629
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755266994; cv=none; b=W9RbR6zPJ3v1jVTkzeMg8t8Z3LBxaDqFTZdLu6eQjXxityArF0h9gyTYqkIngWWE9WZVfaTTYWATtAxIbLwSfATKsDCQ894uau1aflM8q8G0kW2Op00jVZ7sNoNpUs4+/AzpXXNOeCbO/dCJYXaNjyq+x86m9Wvx3WeAvFUBQaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755266994; c=relaxed/simple;
	bh=5A9qIdms4+T6AVmekUVx0etF8xPVU/lzmjAI7xLAMV8=;
	h=To:Subject:From:Message-Id:Date; b=TzWulvqvvkWT1kx50wqjaP6U3RwTb/uVWV8AxSxTtFjVgixqR/QTaSSKeV7fGOutP4Qhap3S4VAHkjemTgVSdr6suwPz4aVLAZkxxpBS8rCqdJQTkvoc3oRm5v4OCTjAWYD8Um5Gkc8y+7Z0Hlw72Q01m0OmeCwh9WCmM2VVseQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ke2dZgHt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ke2dZgHt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEF5C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755266993;
	bh=5A9qIdms4+T6AVmekUVx0etF8xPVU/lzmjAI7xLAMV8=;
	h=To:Subject:From:Date:From;
	b=Ke2dZgHtwJ++KtFenY529EhfzVb2V8ipGkGHyUYthGClpYmXmUF9P2iH7wG/Xfmfs
	 OSCEsy+jPaPuyZvY/NN5II6boyo8v1apu1s/g5YwX70W+MyNQXiAiXs4X8Mt6XhzeB
	 oIncLZWvYzPNA1b5bNBbqxTijB6ADN4+5c7dVW7Mnh53JooVVwiv8FADB9Js/SrePH
	 h3Z86u/oUldmVqnfgvAQHYPrwlsvRgDez4PVqKcNenb3P0LR9TDrYThIkqhKjP0cTc
	 CFnSS36vl/q8XsYfC68sCZ2xeJsaktte+1PzgOn1rdjmVV2ReVRxu/cE8wlq0Q3bOO
	 tVLs86QQdUM+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9019ECA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175526699358.427.3835510434001489018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c5243da68653f1541085c060bdc65354eb2270670288468adc2003166996e5a
Date: Fri, 15 Aug 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755266993
