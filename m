Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C073145B09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 12:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719838523; cv=none; b=m3ip3eIMxkdJrf/FBeSZhlASFSLgxLFMYXJKR5aeEI4S+SXXA6UTmOagv2B0tujJlpa2PDfVlDb3etg6AAGW9QZ3TgAp5hxuN0kPh3SKcYIsMkaluCCLx0JuZQUOitYutpON1acC3OhhQzkoaKVHYP/2rLELTeacdWP3YgdH7Yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719838523; c=relaxed/simple;
	bh=yVxcIqzN1kfvRwvthK27CR9PO3P32WSY8Int1nk+rmU=;
	h=To:Subject:From:Message-Id:Date; b=AR7YVosSvVmbeMObHLzqt0NBrrR5VNYqG4omqE/9Gm7pF0VNmZaJhWpwIGUnIHYyNedhs4P+0W2Wgtaddm0L8n14KiBoZ3AC5AufebNnRmDNRq1KRmci5PpdwphlbWNnM65LBLQ7xO6gh9qOu4wzcYnnQJui6ObfLxuQY8rOdeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QxJ+4Xc0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QxJ+4Xc0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D53E8C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 12:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719838522;
	bh=yVxcIqzN1kfvRwvthK27CR9PO3P32WSY8Int1nk+rmU=;
	h=To:Subject:From:Date:From;
	b=QxJ+4Xc0fXI1u92DrpaQdKh/EgXzd25ZBFEN7hJmXRuOcS+JCIg/rkKTlKZnPHo39
	 yaaM/nc8g/QcrMxzXRRAOYmLY0cqVLvZES71M6lK0x3Sv7YlIYSxm3TmYpq/gCSxOr
	 IBQ7rfgTP0bdqjH03mpNCeL3SxBE6V9DJ6XHCBxOLiH7yE84SLJcDynU5Z8eKrtmRX
	 Zh+ge6F0AXVqwZO8+gDpGLF/JKpkryd25HOMVqPizsi7z23tdGE0WIyE+DbqYUHhMk
	 hXU0QSanLh7TZVFtnB5eEsjg2ZOToD8k3LlLf6uj8mOwPIdNejyZcRD9oExmXusaN/
	 PuSchjmAQh1Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C97A5C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 12:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171983852281.25020.16815748669003854895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1a4b9b7398f5a5a416e5de5db423bcfbecb673a9fbec6dd6dbdce5de6e6f5a0
Date: Mon, 01 Jul 2024 12:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719838522
