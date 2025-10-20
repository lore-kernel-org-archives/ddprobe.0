Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D971A76BC
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760992794; cv=none; b=tvzY7L8mmdJL7lc9WsSXTyEFAcjGvdrWoiQs1oxmkP8R47D4hPdwma44fMWGO5SXfXlpd2/ZuBYmOa0z5sYsNIf7CmbeW23iF1cWsyuFAnKcTN2ii+POekek0boXfX0iSuzlV7QzqGJlxzPKzSjzDtvBETmZ/X2C2cvICDQ7cHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760992794; c=relaxed/simple;
	bh=1Sl4BxoHCDHDyW4+ykuzg2YXaThq8SUd4N0GdAslYw4=;
	h=To:Subject:From:Message-Id:Date; b=UBbR6wRu2KkC1xwEn9UE1m0REjgpjLa67jYbdEO8VMdnQNoK+aNessDnFh601oc2X5rvadgg/D28+SWIAWDhdnaW5TtS7xXm9RqUHDsNuIaGQ6/jkkn2NlFN3Qnkghd7dtKHuIBDDr2FSI+XYrRFJrtslYKEiV93FjRl7rmp6J0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Va833erl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Va833erl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA7A1C113D0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760992793;
	bh=1Sl4BxoHCDHDyW4+ykuzg2YXaThq8SUd4N0GdAslYw4=;
	h=To:Subject:From:Date:From;
	b=Va833erl6c4bh478OkOO4eKX94wUxQ8zED/QEwN8UjS9NjZDprKjlmskHu5VLC/DT
	 45Qh61NWeCeh7hCjof2VpP9SYxM7VQTE1lHQlbqNb/BNazxSTW0lnxi46Nvw0Hvzqn
	 auH5B1OvH9eLN+yJyKLQ6+NM4GhqYDuo//3B41N1B5oX7GZREjVfz/xcAGt6PfjN1p
	 5JpNiD6O98OU6hVFpJ/BMfO9xZWIvk09/XSIQXeeOjxGQiXxB9bHffxGxWdtyTwQh9
	 zlOmCUGIZcAnZ4eryOwYeZWLVOFfV8QkURb2/PRP7DOitk8qKT7RxQ6PYzu5dCl4wt
	 yfe2TInR4qRGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916D2CCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176099279358.12191.14289543499664523876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 979fc72755285a2b8bb4d77e9610459edb6367d72276b9e4cdd2a14c0d38e4b3
Date: Mon, 20 Oct 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760992793
