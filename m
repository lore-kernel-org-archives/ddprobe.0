Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63225197549
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 14:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717685243; cv=none; b=D/WBVBoNaphNW82T1I2XSGSp2V5VoCewryoU55jT4PL6k4sohY4fBugfPxcaR4Dn4jOyHb6E9aZWGamQEH576kldl3IUSWDyV/Ee7cu4TzAF+BZOFChr23hDlkG8YG8QYqvvvPXqoREGB5J1bt3MUDbuIkB3ZEGT33z+f4jT9ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717685243; c=relaxed/simple;
	bh=fpa5YuBgPWaBtAgIWHktRAiIl3law6+sCMFibMtQmOk=;
	h=To:Subject:From:Message-Id:Date; b=myF3BYO869bnWyvTUlOGSZp8cbL/7GKo92vqgY18+FsALAYmE3RJhl+rXxhfR4gthp2bk+rh8RGuQKUnm1kq+eJPxn/sMH2087RmNGlXkF1ZqdXKL3WZFI1QTsSH8T4DsE7JjF4VRpe5XSEHvqNEP1p+Z3R31Z8pHtVVPhse1i8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eiEy2nHz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eiEy2nHz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0713FC32781
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 14:47:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717685243;
	bh=fpa5YuBgPWaBtAgIWHktRAiIl3law6+sCMFibMtQmOk=;
	h=To:Subject:From:Date:From;
	b=eiEy2nHzSYo9pK0YcxfqGXqeKtrYjexjkqcFCKev6lGUgkT/FeYsk/k9UChoE+k3b
	 Et9iGHv5+2k+nBCaAICt+CYNiH0/Jyq0EfOjqxDT3iLgQpPYHoifZOfRgvAQETelTR
	 h0lQynrH9O7cOHYudl3o7PPeelulFDBycBO0QwzQJ+6kkCDAXDaAvDSYVAWX7D5yko
	 pxD733K/du2jwq1wTKhZ0O1VKWglP1ubq+NBhl4DsRh1UZfZckVPmMxiKI6Mvt8c/R
	 HVkoFOdXGmrzJ/JT6QD4A9MVcXZWzJtsvT7qZZe6MDuukwGYzpo1pA72CSTXbGkPUd
	 hUxJN+7xQfhRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD32FC27C55
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 14:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171768524289.14648.8644359426039325842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e455049cc7a05e7ba00932cf8f1450bd2fab16150607ff383c73d9b1240a26de
Date: Thu, 06 Jun 2024 14:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717685242
