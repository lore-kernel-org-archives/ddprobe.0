Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20945258ECC
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757440794; cv=none; b=uSaeGZvYec97FEU+m8mDK4btAFogPwDFwk86qS0C7WFj3CmXksNqjneE72Qp/uJL2WbY6AA73s73vHA3/MKeyz/PZCqCDOAdNxxzN5343Kv+Oq80IqX3plVzPww2grSI6BT23Tlhm7HsDawz8oZujV8F057GS1TzdxEvIlhJ+Ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757440794; c=relaxed/simple;
	bh=KVKN8sndnaS98V6qRSeaDCTRZQlhK4TgAM86T7e3gtY=;
	h=To:Subject:From:Message-Id:Date; b=Yf9mOBa1B7VmHOM1znyWYQSYcrVvglqeYmmygpb8oT++SetBNnZcdpx62399iYVrwy9OTUi9qEOvXUibVKJaDgrR6yjPKfRjjoggYf63Cu++pgVb0b3A+vkalCudYjmYleCqZmp7+iMvcoKvxDIxh9H4EbHYgb6m44XOI9UQC3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WvJ4c3XO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WvJ4c3XO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9730C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757440793;
	bh=KVKN8sndnaS98V6qRSeaDCTRZQlhK4TgAM86T7e3gtY=;
	h=To:Subject:From:Date:From;
	b=WvJ4c3XOiDxERjZcIOlzx17Er9iusLpDiZX5Z7RFq/Pz7U7KkY1bIGdRJC1bHl/Vx
	 ZO9IiQKbCzmCyjL+RnTqTozC6ACS1vSQgIO+AlnbTqpfy5aKMAVU0AMvqN1jWDNLd3
	 tEX8WbdbfGn/fnXYKFrObi6zt9s3rgs78f4rYjD0fC9qlTHuusja38LGNNm3NJvE25
	 NPTv3p3jqlOZCWn+vZKsn1IVKEVpOyPj59Ts5NnMUavcNJ1d6pbbcgv5MDJT4/tyTw
	 AgUw70fFYUUIxxhlLL0bv4j2D/GYR4uejJUg5Hy+NfO7bdjbeEo6vzoE2fjFoNUKAH
	 U2XMIdAlIHdWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B75CAC582
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175744079358.3606.4229388906621422582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab1b72f0205bf55117dd579503597208a8f689a7f366a8a73ef3ab23f9373b79
Date: Tue, 09 Sep 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757440793
