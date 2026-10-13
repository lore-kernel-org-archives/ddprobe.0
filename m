Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 555C2395AD8
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791881434; cv=none; b=FPbMHkAIVMjcPvrD3FbLnYq0DfoMtdr0leHvMFP4T1vX7CughNReLahDnCWNeMkT/ZIpaeKqJ7MW+1JDScVlFeUfCqNZEf06maN7uT3mBdBVHU2N9DnWbknAX0495tXT6/8hDLbgGWj7YdGiqVI5XiKpYrcZh/Ds9oKbZDORfis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791881434; c=relaxed/simple;
	bh=/vVSawInfaPESRzMtBtfhqHmLiPEwpbZDj2nh+df5DY=;
	h=To:Subject:From:Message-Id:Date; b=Y1gur+O8k8I6ZrGyjP2Lo5siIvOCVv9Ni3WO3jtUraS/qbZmO/JuqpUIlR5RvsA6Sj+jqaKX2D7vyraKqgHZqJ42rqM/+AsIbogpP5UieDExI16dVCo+yYOFLuNKnlUEkd/5uE01GanHeji6a6Ok2Ej3VRftTZ999n3ff7p4cd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E+RbfPmz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E+RbfPmz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA55C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791881433;
	bh=/vVSawInfaPESRzMtBtfhqHmLiPEwpbZDj2nh+df5DY=;
	h=To:Subject:From:Date:From;
	b=E+RbfPmzMcmWjFOXb7WHQ10bANQ081gL71PYfl+o5vQ2d1TD/Wixj4jOcC/wSrSdN
	 xXho0sCj3B52AilmvYkaoAB1FWLyVOWYs9ii8ADuyPof80Xs/ap5mNE5fA8hpg4YNi
	 XwlQkytX486qgSCQxBmAGT2E3hBIZumrUaH1UtgsncU4SY5B/J5Q42E0ef7litncup
	 Xtah9zUsebhHqTmgPCtJcDI8Tnq01+aIeL007E5usx0d2MXBADvJ+eEP0XMiy4UQrt
	 84e43EwlqoBysLOOQlS3j4W6LVuLe7gHYYETgKeiNaz9XZgudxIQjzhddO1mKxoW+z
	 hwnFxrXdqmv6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB473CA9ED2
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179188143369.15914.2452998674448055780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5bb4fa59f70e073abb127a4312d6b018f2cf0dba70e727cace3dfdb755ca931
Date: Tue, 13 Oct 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791881433
