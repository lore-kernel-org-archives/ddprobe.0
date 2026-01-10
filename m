Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE3C1A5BB4
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768026234; cv=none; b=X/YSTu6BjOxI+3UT31C11EM2GQvRDefFaYUyV6XkCXFOB8RW6guD48k7cHmiX4GdZkBSWcgACGUNtsizhyu84GtrMpe4ytK2O8l/yHTl7qbvO3kBXIrmmVwhOthQPO6JpLyN8aCUo8t61KPR+P2BkfFd+hLWQ/dNIf4izxarjr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768026234; c=relaxed/simple;
	bh=ieExvaGI8Sb/hz/62AEVKuVEKAvIan79fS1C45Qzk5I=;
	h=To:Subject:From:Message-Id:Date; b=kgvqpQVWI03IfKtrexSK21B0T4cNS8C+eds+nUy/8gsIwBwRnN//fSadIXSyBrIzMhGI/+AsyB+3jqp3u+Mauu4+5/yXgsEoHp+5fI/SsenIRc2IkNfGy8a/R7Ab+yJSeCwvUIr1X/SCgzASnuNVGssVJBFK7CufFSQah/3BogA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FEPT0VZ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FEPT0VZ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F16C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768026233;
	bh=ieExvaGI8Sb/hz/62AEVKuVEKAvIan79fS1C45Qzk5I=;
	h=To:Subject:From:Date:From;
	b=FEPT0VZ5fokEvKAXgkT97BZuI/Uwk+WPJlhuXBxPB4Ta03WIV40VqFeMEyMxuqs94
	 pXa35KZigaa1qkA+OyPaqt9u+0UJrlOvNR9vxsnIS+XAtfUuQbHhWV3F0LGvIq5crC
	 7yXGHqSZp2lQdtJD1Ngx/lLWrFHioA7TngXPQKtFiDNcfm9rax0WjixMGt8dxZPvm4
	 5rMO7bkAWGNOPPhAmysnjomZ7gzRGab9nSp2npEUxt85CPehYRz72yHn946sqh5Vlz
	 zZimmcWmQZnF+DSki9HF7mzseHAE0n/MwySnzhcWt39JKV+xyTt9AWQB4+z1QU7XmJ
	 AWwOfinj/lDZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919E4D277D1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176802623357.19539.16582038334792996353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef2fd251b20584fd96cba5a2320ee83be4bf10197c62d6d3d6aad9b770c7b2c8
Date: Sat, 10 Jan 2026 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768026233
