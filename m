Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2768023AB87
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 10:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777112254; cv=none; b=WZ9sW0vKHZ5lYE0MZd00qXCorJ3bWNs9snW32SfFcvOytPWBxmtec39u0aigrdQbV8LxSHuXAkpMcKp1AOQ3q9dwqnjh751uMpbfbMS9CaNo6xC6OpgYOZRMN4ieXP9kpumZD/RwseXK8wUj9XL78yzGcvyxoFhB0ZtSIn8nmSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777112254; c=relaxed/simple;
	bh=qwrtNSsFlLhkUjJL6Ni29wJdUkijiTNQfKpmOAaspa0=;
	h=To:Subject:From:Message-Id:Date; b=l1UqOktiKp788vVBfwGYoaXFNG6HK8Zu1cAPtRFZnnxpOjcAprFsOzhKenoHJVqWYahO/9AyvMF3Q6sN9Cz0KZlhsi8uyy8QQpeS4HdZbVbJ/GhEjwnsMd18O6VdjdzEXNfAC5BUWeBLiEBvX8G87yRMdmRqgjoR9jG7PGJ3o04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZfE3S+Sq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZfE3S+Sq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6D19C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 10:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777112253;
	bh=qwrtNSsFlLhkUjJL6Ni29wJdUkijiTNQfKpmOAaspa0=;
	h=To:Subject:From:Date:From;
	b=ZfE3S+SqmDiiE1WpPx4RqghixHW7vd1+dEYepSaV0NZYKcWQqO773nixxbIBp0GkL
	 DlFaPJ+IOo1kE9kCBmdG4bWNt3M05HqUfZC6Opu1HpiLyvlQblVL3AMH58/MuFAubg
	 6FK5uSBul8+n9TwZ1NnhkIcFNuRWYsrmfvczkutWrQS1ZPn0gPzRXBbbtYsXkd7uAv
	 y1xkcsb3f2hV/8V0+9Q645xuBaWbxQ1XvWnfBOW40OAAggaGjkV2z/nwwN8oCWCU2M
	 uOxLLme/dug8FpZKT6asbOYeItHQQiWCOwqZoWBLBgurB3SA/DqmMWVtEQkMmk7d9C
	 4nPdY3Uu38vjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DA0FF885D
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 10:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177711225368.9997.8447688336339618142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3351cddde3161e033a85c93620ef379e3922eaeb7a06fc2de202245862fddff6
Date: Sat, 25 Apr 2026 10:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777112253
