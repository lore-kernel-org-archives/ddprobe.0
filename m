Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E72225CC7A
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745678995; cv=none; b=q0GKptWYiMjctLRux6h7TMPosFwmXeWIKjrq1JAp5aobqstaDebo/H22wng2HkITmMjrZoBTl81tcQMl9mAY1Nv5J6j7hKCREQ7W5nIlvvHL7nw2GqtmquCEn5F0aSg4VGImxg9MZBLvnzYavhd4aPHp3VPWcWejdfVvnbIiRMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745678995; c=relaxed/simple;
	bh=CX+DpZhDJHdEvG0o1/5TuWtHBDdrAGZC9ZrUNNirc3k=;
	h=To:Subject:From:Message-Id:Date; b=SwytY5/NiA0hWaH143zjfiUJet3JQ0QD+wf/a0/b+Ewbk3HW2O2/8H4cHQ44N3V/PPcA+Hrn68NCHdEiS6cvXD/7fn2o8kyFT8cIv/7qwz6qQ9UQamgdHVpyL/oHTTeE0T/TrMu6avgPlWcCsp1oTTVDASqts22ewD8s7dZTZj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G7lK6zYn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G7lK6zYn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D591C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745678993;
	bh=CX+DpZhDJHdEvG0o1/5TuWtHBDdrAGZC9ZrUNNirc3k=;
	h=To:Subject:From:Date:From;
	b=G7lK6zYnDL0/vtOzHd9EUQA06bBQ2c1HCEWLwMUyD1dOSh9QQjV8u9hZfHm8HtxX1
	 8pJpT+KByJXlB9lWiYDjRcKMzvbpD5X0sTHv4oEM9/yg1+WeGKotC1amtFm6k130R8
	 SlJCan7IKlU0qLwPcaDONxacaesK3hdYYI8nsgK7BJUsNMVEbcJTRfrMvp2wB8xSJA
	 sJpXElX1iRq4IIu0oTPO9Ti0E6/HVuWdQhxwIzeQumutK6Rh7WseIfojP3PrL5Ujjd
	 TpQGQZOjSp+k2t4dVQP0taB3F/ssex8sheGI0tVTNeyC0FlLuiEXzVTWbMxrkEhQt6
	 EBiBmBLfHjymw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFA9C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174567899357.2043.18147035965033017211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21b9b0c2d748931877bf17df0972080cbbd246ed89c3d98ac7733cb3f0a58db3
Date: Sat, 26 Apr 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745678993
