Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406E5157488
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723286154; cv=none; b=Hl07/LiRryNMj42UTJFHhLpwFsA4QTBQ/XPuqeMacnklX14G7BhXTd0gyHcmFqLBXJ3wizWAvnjpB04+cvSeGrkKkqAhdfN6TmbnqIEUeC/nl0+s9Qbr36T/AJvdCOvlxc9HhwPxkLaF0U5VBgeFWXotkTmv/29Lc+qClC7Vx1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723286154; c=relaxed/simple;
	bh=ytHqYXsP9Cgc43W8xeEoQTNMqZ9oAoMGZji79LAe/RM=;
	h=To:Subject:From:Message-Id:Date; b=Sr1FStnR+vIq3u4cZnZEQufZDCyDahNE1XNPWdLHwl6jEd9EOsPTJh/lsLcR4+MUDYaMGhFXxi3QJrnvQ1mkJW5mwMUK3ed+8wAubv8nwM+epo5ZkjSGSYAiAK3gwLOOM6ZlQAZuSOWXhaCK0i/7OtmwIOFOL/2wGCa3fhuVwy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CTtdw1eN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CTtdw1eN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2CF8C32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723286153;
	bh=ytHqYXsP9Cgc43W8xeEoQTNMqZ9oAoMGZji79LAe/RM=;
	h=To:Subject:From:Date:From;
	b=CTtdw1eNhlOWowUkX5ZlnrI9C+pB14qkShyGL0Jl7lHLw5stAmbNDmOA6fG5OAHDR
	 rHSdRPhNUWW5b9xZycZubMY0wrylwWcKc4nLXHXQkFDlhqt5GV0I+DiXZ3XICWzFsr
	 lkiV9s05bEyK14aUYeitpMMlAka6gjW6XZ+OlEICQaUiFyuL+YNusdeDMk6VCEHhEb
	 hOkSwZ4Z8ltnUkzX6aiItWYX5cEH2Pcw90oq6UWFrt3RqLRAZhkb1bNAtvZCChHkX3
	 lmU34mIxIkbwQiImZKgaArn3bG2uiTrcUSAHeYhgjSsFx9LOEg87tjvhaM4FI5sR/e
	 PR5TSHrmFQRSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 992E1C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172328615358.5991.14077281433753353731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5690dd379f93dab62fb4956c2b96729ea8eac729b67d17cc8751f9a4ad963191
Date: Sat, 10 Aug 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723286153
