Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E09B450906
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 17:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778175454; cv=none; b=oZyEfrG0QxOMbyP9IlzFrka4T5ZELdvu/u8HDj4LIYRt7lWkKPI2Tt5JxhmqhC1UmCpK215Hqju8b7vaf83iZwiZTojHJ6ZtZpK+yf/+f05pb49RV4K+/wYaQqKWYM69cXvP2wqSVp3YFv3jR1itzajN/TPe8sgWu1ZyKaUfyxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778175454; c=relaxed/simple;
	bh=WZgPaIlL149ilkFVfTjlr5t/jtd0HyyfvisjV5VwPP0=;
	h=To:Subject:From:Message-Id:Date; b=jNNSrDbep28RxILPQ8NmR7tjp4n5yoNuLxwZrJXpv3mcAaPKmBdh5ZgLKyE4HFo8i21L5ovrmZqt4fChWflAcuGNbOLmzFV+CuLEV3RzFf/Bt2H01/SOzSCHZC4G1rONBK9cPqEhZ5Tg2v0KVKwz7Bv/y5qwbUAY415DL70Ca4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NI1LaDUj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NI1LaDUj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAA4BC2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 17:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778175453;
	bh=WZgPaIlL149ilkFVfTjlr5t/jtd0HyyfvisjV5VwPP0=;
	h=To:Subject:From:Date:From;
	b=NI1LaDUjQ9BRGIQbreGBZ+lCzIOvQK3ZJcYNmCLJXlQpzVK6MnVeVhCebg8qPd2Sg
	 r43+2OUJH8d4pffEGic1zIYPawyXL5wcscbtFiyYP6X9Zp5lteiWKBEFN567NbeQuD
	 R4lEgLz1IrI8cWOxP7CjyQzJ9sGvfJMRfNy/FjftSqTRjdIGBWDDO1kwDhJY3TSQfd
	 5f5k1/lIzLWhQvagKY5i+mVIHqVMNu86xs5QeeEe/yObPK+bbi7rDbgunYChcTZR4U
	 YMVYzshIoYnkiNsKf07ivcplze+GMWeUrvAxyB5JeoKQxasE4n8J4UEW88/XCcij1B
	 FkfcDmuNJx9Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB463CD3446
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 17:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177817545369.30508.9587578166227384013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03324c70237b97517941b2071c962bffcf8f1ab03ef31ed3bf9b25c28fca2710
Date: Thu, 07 May 2026 17:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778175453
