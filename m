Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E67917597
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760673595; cv=none; b=CS4qRER2gsSXFkD9vaoae9zZu1jEGkZsZj/XF6CfQp1vDdBOmjjmae50fRk7VywOOoB/MhW46BvN/QWw8wXFW1tONiMRg5ZWMliZ5Vm2csU1P6bkhLMahNdlZOVUAMNwDOX52UZpyzaeYdSD0vRDH0xiYI69GROF4gvbXhcAbug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760673595; c=relaxed/simple;
	bh=Uue9sDDx4hgU0Ct1kH7+xXG8oB6oF1rsREQIZlwsluQ=;
	h=To:Subject:From:Message-Id:Date; b=ZxtLfttUMcxfT1fKj9T6EKv07e8zlVw12G+ADStWgOtjy637MlInlsYNxRP8pyHOdNPJSRnQAV2E0hfRBryFkNjvY0kMUYjfaGLOiSkp4jiv91e7vcn3vTcSMi2zWs/g5mD4YjxTAjcdsxe/C8LjrelWHivFs49lSbJQ+WfLGD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SyB+/tk3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SyB+/tk3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2845C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760673593;
	bh=Uue9sDDx4hgU0Ct1kH7+xXG8oB6oF1rsREQIZlwsluQ=;
	h=To:Subject:From:Date:From;
	b=SyB+/tk3iBKktqt5MYb+dezlwBf1DIWAE9jnQBCzSakhfrOZ626s8Itv6MmTKmu3P
	 wN+yZK9bZZyvOBdBmzA3RIHHnU5areaLTL6SWJ8xzwUyzEk3urWhWqGyj7qCD2iVzt
	 vJF7gv2tgQqdJRCbwLTvysgx5rqhM5fbfYGdRd3X+SE2mytDfcWBmexsRbBk7Wgikv
	 2fODjK7CUrbZX8lMJVgE/p54T4433EXfU871F4ddMUnie9vdt7zwbltYbaNeow/Z5E
	 thU9iJe5UpJTVAY/8b11dZ2+TcuzYi0GDjdtJ+9WJ5lbo7KpOS31Yg+j3ps2yP6EZB
	 bQdlELHKNyNRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB9BCCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176067359358.7413.3713093768896746423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b255eb2b156e7dc4dd42aefebce32f2eaae088d13f643bafadde4054bf1f8c4
Date: Fri, 17 Oct 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760673593
