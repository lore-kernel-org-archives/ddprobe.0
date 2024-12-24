Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4671C3C15
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735062954; cv=none; b=Ie0nxY73npHvJJShdaDT2RXz7gyWqDJaRgJmDa/2KSpboAjRCXQYj2RmbC8+du1fESUp8F99Mz9OCrYTmf7hywsi4SQW3xnub9JIRWX9SP4ZaFvLmOK7Hrg1Njv/IMbF8XUXMl1hWVKhwp6S2j0d8koQ2S/CDO4jzumCWWYYx6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735062954; c=relaxed/simple;
	bh=PJ6e8hImyexeBAKWilY1M6wa1BM4Uk002DaEsdDMpOs=;
	h=To:Subject:From:Message-Id:Date; b=A1dGq9zzCzIVcGJ9ueOgnKRWi6fz69gdpG6WJi6izC7rTS8HtsKDPZaJOTjlJ2yMTTv+4w3M+fAjoF3AVDupaoGT/10T05+Jm+sVp6yWq/kDPit2Bp1PrGhZ7LUZ4l8opXuMiV8vIKQCBA7kFIGeWPcxI805GD7Wjwyh8pQeTeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HAs5Zmvp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HAs5Zmvp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEFFC4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735062953;
	bh=PJ6e8hImyexeBAKWilY1M6wa1BM4Uk002DaEsdDMpOs=;
	h=To:Subject:From:Date:From;
	b=HAs5Zmvposo/Qslk96VEnjfSZQFQ0kWffJ+9Jh5qNxUrAXwEjAfWH9vB/WEm9lKFU
	 Y3c0m9/+WnT8WXv8HQzbyPVNhTWcN6Zxw2I8xk7UH0EJqr3A1lo/ljkZbKqN+s/onD
	 xW6H1IB1WE6RsTJmCT6DxjwVHANogtDTXuTtmdYZzDbzJL2VqWRsaDZJG7U0x64HRu
	 4rRdbWzdyjf1y/xx3UJZzoNTZL0daJMuWAbAqHkmR8R43y60XAza7Z9UjeWEQBh0Oi
	 P3dz6AY9N8SYX5t+mcbvD5e1xtLuqx5GW/cAYAE1VGkcMew/1+KEtS4y3Q1NSQOCf1
	 aYqHbR7TRawOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9360BE77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173506295358.8866.17924968053483879898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8ce55ff01b2adef3d5668a09665ac8426799adf0b31678abfb6a9f56a859bc8
Date: Tue, 24 Dec 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735062953
