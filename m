Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53B55424656
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786438834; cv=none; b=YYDm/OH8sFWtHus+y0LsCcT6fgZJ1Kt8v0gjb3VmJrVIsIzYI+vam2+re5xqeiB99vEWcFeetqcdfHBaCsFYxESaw+ZRvOrqsJVQucPMYFEq5SQYf67czbDtVru8HNTu927fvOnxi8c0HPHNv6jux3zfIn1uufQFSG2jo6WcugM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786438834; c=relaxed/simple;
	bh=DVzi4S5bYOib2EXspsbQfVhf3SQ4D/3SqMm7LdlGHxA=;
	h=To:Subject:From:Message-Id:Date; b=i/WazXpen+TrQlvAMLSs2zc52s8npn3oGOfEGAWcQ7Mviq4vs7MbD7qXUwYC77gcnSaA+suZ48cM8CauaZW0PtXJLjPLUbEdxLbei2XGiFrS0VRk1Qhw4xIDN4+CCkpUJLM7i7T3F2SNxAJIh3mTaVDcB7mMwIi3RpQoEViEPBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u9lVBODs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u9lVBODs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBBD0C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786438833;
	bh=DVzi4S5bYOib2EXspsbQfVhf3SQ4D/3SqMm7LdlGHxA=;
	h=To:Subject:From:Date:From;
	b=u9lVBODs8UMHDsREL7kSNN/+WHiGmNdzikI3LWz7bSRTHA6k7Ku4baaNHtLOBXl5D
	 CACHQnIkkZAT0dXOaBPYQVw4R/GTAnyKPJ4aCRjlmnYjYDdXRU5V0beH4c1UrZ+uBR
	 bAY3KI3sxtyHA2Sux5yIKy4KwCbrrPnkfr24/b0FCgPN0h4j/3JguPufSSsv9IQ73r
	 hnHbfWQ5syyPI296BoF5DuBL7q+5z14Z7y3DmxyrCyvQKrjZj6xo2ybGBmGrOgUUJa
	 krk93YyB+e6qwK4ajN5irqobZkoWxbtqQYTrR5LgIHJR6c1TYQ3agbT+emw63ush+f
	 cLGVcDLwlOYFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DB9C5CFCF
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178643883368.16419.17512402298919406590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59fe89c61b14c0be1b9a1b67445bee62effe237943717023fe1c9259b7f02c3b
Date: Tue, 11 Aug 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786438833
