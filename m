Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E12B535FD1
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790868034; cv=none; b=YTI7nxeEgay85NvQQtidPoLOQvylWWWsCqH/ZlNXcuNIBMnT0l84khG7s+adHiTJbz8TdDwQbHypjkToM6VVMPwfoWnqIS1LPB+w3J+w6iO6e4v4vFjsn4tHmeR+Z7CeVPpQpt6MV0XoGAc3y2dhFRm6SQtm8HLMc27sKrTA8dU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790868034; c=relaxed/simple;
	bh=aJHU7YfclKW5jOg1WCDExoxQPDdbn9dPVBT4QMRO6i8=;
	h=To:Subject:From:Message-Id:Date; b=phJTTgTo5iuHNXaURPcD4O99fhdfvlo7sNNjWGDxuMbEgNWwVyQJ+wZY60s5X9O2itGocXgj3WwetMEFG6xrX+LifPkA75MJxDmt6qr0J/fPjfje1jFctHCxwEXOyibZ0UmDK6oknzMYUWNjW67xBx7ML4gXui1wtz4agc3M8QI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kwMbosu3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kwMbosu3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE50BC2BCF4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790868033;
	bh=aJHU7YfclKW5jOg1WCDExoxQPDdbn9dPVBT4QMRO6i8=;
	h=To:Subject:From:Date:From;
	b=kwMbosu37vjmkFSCtYNKMbbhkiadmNOmOD+bbINB2GcJ7AHPdrNUHtKKWudu0S8Mi
	 JZr8lXgezJbBUq8rgxayGMJfgPhjba5xjY0VpQHQYcEUdZviuoH7PL1YsvMhfT/am3
	 puFAclPCqIz+O/ajfW4wfNiU/Yo0hlC9mMoR7w+lcIIrX4If5jgA7yoDAQZrA0pjJj
	 yrNS/aUAUCfV+w/P+W3OYqjlF4W1UGp4DJOcSZpqHqiLSWrNWHJ6xfEwxdHB4tVs22
	 5ZJJqZqGqglQdON59UwxRDo8DTadXBKsIT/oGPpwiHDqqumyi2+tqFdsfK8kifJ1kp
	 kAHKEN7T9/UVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B013ECA5FCB
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179086803371.18414.6809282964099102627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac5aa0b124beba306d245d4b81bdf62bcb55e35f2bba1e2d8fca6e5b00b30eab
Date: Thu, 01 Oct 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790868033
