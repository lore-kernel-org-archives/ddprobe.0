Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336AD39280F
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772091894; cv=none; b=hG+lS7LkZsT8QIGb+8dhdHWSfawDy1HI05b/5G6ySwvthBT1UeaFh9lioN4iybmHl99++LVrDuqwlZmb4ZJyPvAqu/coN9HzpEBi49n9k85MkvATusH9bMHWeNrGMYbhmY65jvRRcDA8+KVqUyINTBnUD0JXe06VrX7Qi9MKN0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772091894; c=relaxed/simple;
	bh=wUSd88OHw0PzAChMMHmmAwu7olVL3fzo5X4HlKvHhpI=;
	h=To:Subject:From:Message-Id:Date; b=YyN+CQDzc0I+ifuX7QmPFz6a+h20dy1ReH5wxDe/vaDr6vnf6nbAFE0DnUlpvvKv1btjQjfRCsQTCGd0Lp6KnJs01eLR46J8bb2dlNUCAipkgGILLXyQv++7STHk7rorv18pL+jV9WrE8U1aCCAqtG3wQNHbTHBSUHaD7IrTfVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cxQplZ7K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cxQplZ7K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B923BC2BC87
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772091893;
	bh=wUSd88OHw0PzAChMMHmmAwu7olVL3fzo5X4HlKvHhpI=;
	h=To:Subject:From:Date:From;
	b=cxQplZ7KwutcBW66hMz07Ai9lX4jhCNQiG209PBhOjDoLhWXMQs59u7/oO/7K2+GZ
	 zJldkA4FWjnP582wfe1clZOssFxZCyf5l2mxlnAjgsMBPAaLbRXiHyB/FDnFSQpJq4
	 F5qHyv/9nIyuFijO1RzJGR/Y4/ZL6i/nHMfxeyeuGpdosKezOlrMc/vlpsVJYz4MoG
	 NoDcx+5pgwRfpY4WE0sgqxPXv38M/fj77XbauouF0BjW0O6FiGp+pzFiWsGk9xPd0c
	 1U+UdQf+OwNHsuoPyj5fk+DrHPTmRxXFI6uNCz/2JHVOc8FyqqlWfUa7iVgc/Ofome
	 +mNbdOv3wSZhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A089FFC5909
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177209189364.11396.575106760145475697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e27cb7e181e81a29bf7094becafc360b8f49fdd1b10cec853be776e63da69e2
Date: Thu, 26 Feb 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772091893
