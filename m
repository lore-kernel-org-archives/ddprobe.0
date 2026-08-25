Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 557E148823F
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787672434; cv=none; b=WVz85Z+jBaX38kHkis7igentMHogmaMMjGf6/uBuxcGnC0gvDbRlHGqn5u1vMO1+VVo9kRBPSxUl52EfYx7I1Mqh/3wMkkOU9ph6erC/Pe1dySXt6j4sBdmeibG/4VbR9OmBm9cGJ6E6k447j/6L7rArcKFxtdODqjnIuRIAuBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787672434; c=relaxed/simple;
	bh=psuFyN7SR0tXh2irCpgbQgYM310AHk76e4nuJ1BOUOk=;
	h=To:Subject:From:Message-Id:Date; b=m1zVgiibHictNR/oOO0Pw/gGjD97I8RGzZwhWIfayT6MVqgLZ4VAfqR2e/G3RlvmyySSAalxP700w5+QWJ79zuBIixgP4kEtFYOjdex73XEw/K18zLhoadzYYPFZ5/Lce1Ser3DnDfULsecy+7p4UnFySt1vznS0w9gZQWNCazc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gg1I881d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gg1I881d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F0EC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787672433;
	bh=psuFyN7SR0tXh2irCpgbQgYM310AHk76e4nuJ1BOUOk=;
	h=To:Subject:From:Date:From;
	b=gg1I881d9uyv9/JtEF74VxDk8E2jAlPMi0JDa6Iq05dWLKL8Few4aOIhjQxbqMkb6
	 UG1nzVG9AzvOi91f+rPXaq+1zQI5wmUEXU80xZmhk/S26ReJtDJUQ0VTGguvx5Kb6B
	 awyRavDJ+v/vNA4VbK7LIkWSSl0yhLyv/ocsJqM8mYyWdjYHawR62dDv4dvoywEtbu
	 czSyfioGUIWxQGLxKwFBbxq3nXihzi2SGj7euOgc1vjzyRmPb8BIc7Rlb0ZEElL0i1
	 UhWXZIe6Q2zL1Pr9HBNZ3HICmX81ApiTusIpFFWRY7TE437PwR2p8hHzirmCkApdwB
	 H8O15Tfz13x7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBA9CC61DB9
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178767243375.2208.10972179565577530582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1c75c97410cb90a54f10a6d3a295c7c89504adf3023ab373084a8555a39447e
Date: Tue, 25 Aug 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787672433
