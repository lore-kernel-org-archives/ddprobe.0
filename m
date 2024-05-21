Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 584CD54BCF
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 08:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716278543; cv=none; b=JZUAyVuEQ40xWjKnV3rxoG8hVEVclFrwboH+aHsoJWQ8m4bGPELx1vhTv6QrZKq9JUuI5hhYfFtavl2ZYHX3tf7q1HwyFoCw3hiwdv+zNQtZzwKPG0c2mpMJRZHIUNJO/tlqGJQkQQYBFq4wZBqALl8Dn69Mfi6wyDVZexw0iVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716278543; c=relaxed/simple;
	bh=TGB+u9uejq97SjTjebnnLdaHHgXnNxpc++r+ghLYzWc=;
	h=To:Subject:From:Message-Id:Date; b=Rj5ZEJ7QygzAlqUFHrr3T0BztWpQDRxLm9umM2TOFEJlIK/GCA8/6dt8gygaQInr+GVfsce4ZX4Cou3UBz7sM6jDbwHJ3wJLCsR7SFlLo4ZLT9w3KMMgB2wdUlhY/F+dIgzNP5hCVEC9Io08h7X5G1ePlt74cN4DAuOKOvvS6Lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q+8ECxy6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q+8ECxy6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5AF2C32782
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 08:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716278542;
	bh=TGB+u9uejq97SjTjebnnLdaHHgXnNxpc++r+ghLYzWc=;
	h=To:Subject:From:Date:From;
	b=q+8ECxy6hR5I1dlyYKs4KvMp6OE4lf3OBJYOJ0Ycyht61cdmzH8Xq/a0Yahd1HXYI
	 ArplFu9A3+X/CIk7mG2NslnL/pNmysVJGXlI2AITqferrfVZWqAKOOoVAawqHqkIlz
	 NZzoUo+Aq1IpwTocUAoyDSKJ3GgNI9V5esMbWAmcXRNq7sOzsh5LrvwRfux0Se61PS
	 PN0bHWemnP5s3FID3z5VsryIh5h0jbR+wUfghbxo8F1o4lpTfF4eF5VqLW/0B6eeoj
	 ow6IlpY0vFrocvop64sOzSSPMtNIph03vpwCRhZLTmix+ikabLyT5MJYlSSUQLo4GB
	 B/JmHXMhGCYtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6617C25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 08:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171627854280.18351.3890942182367667595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5abcabc602616ea1692f6df4adf39ab5921cfeb77dd50ce5921e60c19189f340
Date: Tue, 21 May 2024 08:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716278542
