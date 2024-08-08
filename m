Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CE81119A
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723106754; cv=none; b=IA9/Ye9DGe/BEiXh3B06e6NfzKKyh6lFttW1LQ2RrcayYN1v89Cj+Lp9tib0DvkWesuXva9ki0J8ccD42wC0Uwnueyswkkp68erSUV8TdTqsTV7iopBhxq9udTBT8RNWhTEnN2l5r9OCMS6VeQMOvW4CWtna4Z+8y+XweX3DvDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723106754; c=relaxed/simple;
	bh=csZOgNYVqK9UE6hYpGlfCZc6XW9DDeC6aAZHhloJl/A=;
	h=To:Subject:From:Message-Id:Date; b=sJJrWDrmFSKGsMFQNzjEpVQQ04ZfC+1XIuZySUOAonqQ413VyB22llKx7eDDBQOlfILis8nsE04iBbn1M2qXGwI5x2lsBQ4Q23NbJ5dqaQaJns2VjPaCizNffGi7llMYW7X8jZMj+e0F/XHeEikyKNkctC4cvrC6RgsYJzOG4A4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NU2Jfg72; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NU2Jfg72"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8322C32782
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723106753;
	bh=csZOgNYVqK9UE6hYpGlfCZc6XW9DDeC6aAZHhloJl/A=;
	h=To:Subject:From:Date:From;
	b=NU2Jfg72Qm9XMLkd0EYtNHcft5mDCtN4WrP9DyGm+eFO0a3417sdaYW6xEaAI3KU1
	 MrvNudpVqMelAkqDrg94hQMAkNqVVrK7+5hvcy1k8duHVxvhVHc73OiQ27ax3cYzzx
	 QRh7yoyrN6xkinfYf5W9ubGBdUwe7OY3xVWGd1q2w8/vQutUwkOBSiBn0hWJY++BGA
	 UqL9wuflY009/WjED3rAfeV4ce/0Qli/ZG/iND0zAK2uUVr/nx9kHqmbhxAp39LcG7
	 qHG5+oOoE4L+EXBl5le8EZa1N6CNR0ASv+nHT9LnTo3t2QGbFvhC/mbda9tjxHNo1I
	 ZhxxwES1V2T6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966CBC3DA4A
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172310675360.21562.10615668769494207887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1a8bfe069d37024763b34c88537cc91f36dfccb6df899ff9c59cc72f0858a78
Date: Thu, 08 Aug 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723106753
