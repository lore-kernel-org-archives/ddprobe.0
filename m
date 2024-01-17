Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 043097465
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 00:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705453097; cv=none; b=Zi/M4obhyUqchkDB964E1YNxSRMqpnpSuyJ9x+SBohbk3PsE2eolgqvPWyi5DuKr2StPN7rKRnZdDj44+LEZ9WRr5lwNw9IIYwWw/ayFIRiwEWxDlso9CrWl7jFR97bCBI/pDZD9WV45jDtOuvrZN/Y2kgnfLaEL9ugGUoy/VNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705453097; c=relaxed/simple;
	bh=I94TMqU37uDiJXN0MCtCdYpYY/aXUL/FbttqeukvlXY=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=h0nMbTq14PgTduJ357IO7la0qR8cKpc/Jtj6DxKYsns/3hAaE68DkzDD8f6kE/RzetQe9/HVbwAiacdQ2kpvwwf8n9AorgiXtCmh5ozJelbJezkXh66tlMNXzGd3oB+zJPv3Qpn5dhKceiWRtiq4F7BFo0LyvauxPIT0CRx+doE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eMB6vX58; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eMB6vX58"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82803C433F1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 00:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705453096;
	bh=I94TMqU37uDiJXN0MCtCdYpYY/aXUL/FbttqeukvlXY=;
	h=To:Subject:From:Date:From;
	b=eMB6vX58Xf3oJLt5J5dSiVRMEvdq7cT91a1bEP5/plnj0hZIuBq2bE9uD8xEdMXi6
	 Xwws2ItvPJ4NzMvXlXt3cMv9QTMzw0uWwLylk4dtiYmEj2o+7wF1IkR+f/AfonTPOP
	 hKHNi1b5b2P/nl/nGudcLiBqeUXcohfdNssZ0BrDCuNR09JajzR3gfd3pxLd0ABkjI
	 TqU+7564vGSbW0FoBalbwalwhwaEG6sYcA7GAc+H4ytklZQIOy5ZbfPgVHYcrpJIZb
	 4AmDssPn0vXzhHlVz2AgXIjD7/+SlVy2drzFRX5T/lvpV0VMgrIX0ailE+EJwR51Hn
	 /ZN45t/TeqMGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64F33C47077
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 00:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170545309639.8768.12334059663281814034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c06e190fc54d95294e42109fe391ba8bfa59bc621724d9b6e62e19a510669f5e
Date: Wed, 17 Jan 2024 00:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705453096
