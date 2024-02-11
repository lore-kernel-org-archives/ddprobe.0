Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C0E5915D
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707647297; cv=none; b=oY76itcWFOg5gYGzRkbAAFjQ/Hz+nYamRetsIGhKrUc7i8tVMuGebM9ansVZGOuAHKSTF43l3zFnqrfEVpc7lozDiIhfI6OYIGJmLs3x4edchLy4Zhz6zPkqrsHAuAITv+aDdVjPiFM+Npf0b5CwWmkMpIboIDbbaZoIN4tDWsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707647297; c=relaxed/simple;
	bh=f+m+KcB6dzVBMFyrQLjY0itDh3dNAmgZvN4X03RgVkA=;
	h=To:Subject:From:Message-Id:Date; b=BBSj28M5khqJVBOjhsfRc9VEumdb5iagMNAc5wFjV99lXr6mijgrhHtxwwOty0PXdIRFmTEp73EBvZQcBOVFQPXx64SEgc9tqWdqfsLoOZygIdJvOBqZsi5Q8n8ATjp8NXTJYy1zm+NVrZokQfwim87jRPzFgz5XtxWU3FA6CF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cyzV1ZDW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cyzV1ZDW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87BE9C433F1
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707647296;
	bh=f+m+KcB6dzVBMFyrQLjY0itDh3dNAmgZvN4X03RgVkA=;
	h=To:Subject:From:Date:From;
	b=cyzV1ZDW6KIU7OE/0PdjTDHGA0bwE25/dk7o/wAOF26K3CNYlwfNQQ6bddpLRPK2p
	 hCRzn0a/e1yUNetCHBy4KwlUHu+Cp2u6t5+WRS+z/4X9azCCzyIid0VMpBs6vZdaAe
	 44lisErGawHB1t8/gqcS+O+AJ2n2qpbFsRWvTRk3nup4ixSUeGvstyBKnlxq/5KDIM
	 25/+l2/Q9X3kE6DfjVyoJxZQFTzUmaz/P+GddDj49en8S6zdxuCD9ji3i3CeqTaYXd
	 OqONCoqRwYZhBrwekg7UzY1vHH3Bq8t3gfgoQVNEeTr/pomBXRw7OhVkTSDAj3O4yR
	 QtIaVRsA+3p8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69AE4C4829A
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170764729641.2836.18133006325047560609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d941a9d509934990cc4d80fd11987089898e0d19816ddfd83557434200a95b3b
Date: Sun, 11 Feb 2024 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707647296
