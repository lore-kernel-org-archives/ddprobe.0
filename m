Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0F832573A
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771404894; cv=none; b=YruCVbckI1zXNb3NMrIp0+9sJnieJ3TwnwPVhq0Ytz0rchEmZd+Pb7Z65HmKHUdYokpSP7BDJIs8yJtF5pAOiSYg7FJW3VFWfEIbHcVj5Vm8cLKlPbbM6ileIjszbtcSwW9IWH/HMycZ0toRmYOZiW6fW3LRGa7YQhgXg4mKWWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771404894; c=relaxed/simple;
	bh=9I0Qz26QIIlBv4xQEFBz0Sg2ZZqeCjWBIo+Pdg9y98g=;
	h=To:Subject:From:Message-Id:Date; b=XNokNjvvDtAlgla7/+HZGRtEaXkbwvETaSRPqizBmEVUzlJS7yZ5/k2T8GYdo6zfEctynJUa0KI109qgNeEZjGsRbLC8coV2ooXHT1gGw0SIqzaeX1julRMX6d5gqYrkPpQemvnkmald/3i+2Q7L20NBEc+rdSUWxkZP/nIN8EI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=frpyjNKW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="frpyjNKW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC96C19422
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771404893;
	bh=9I0Qz26QIIlBv4xQEFBz0Sg2ZZqeCjWBIo+Pdg9y98g=;
	h=To:Subject:From:Date:From;
	b=frpyjNKWuvVZIfb6XPNybwZdVK2gqWviY5V7kRA2ALW+JjBF3gFC2EwQQ5Rhr+pbX
	 v7XdOdfDgmtALLBDdr9KAJ8P60A4cCnQJHYCuKmFK1vpf6uTizm6+pqEJLlqsrI9cG
	 c4/mJnLkN6SrPhv0taQHF2a9ulcsuIHxTSezv/Xa5CS2ttW5Hu5UPKqfR7F1oUGOq0
	 +J7qnWJX6idTV/aFTaenXNqrfuYeLcszdtVXccqOsMg94ELdOEIe7iWkKcBthUxDjx
	 QDgtn882ne1qvPJaZNRkpZLm6pMAd6f+Bza0vMaNWnpLh2idt+GiG3AUfPhHzIYQIt
	 DZCpDIxNQr+lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BB8E9A03E
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177140489360.26591.11439124304621994050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 802babfeecf00b088e1e910cf80b589392f65b40c5a20965784817c6c5e3ef3b
Date: Wed, 18 Feb 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771404893
