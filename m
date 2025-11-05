Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A68C30E0F4
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762339794; cv=none; b=ETjHmtQbtvsNFsUzcRWEjaeH6XKuKxD7iJ4JLeSFUoeYfJKXfWq63wp4aI623HVx+gcWob6Ju/IxZ0aXJyxWvIpioEd4DpFWw6PvuOxyOigcm76C64+bEJPlmHKhFwEqytVabLju65FRHeBMxzWnNT0NDjrPqcwQpPWfPBSaezU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762339794; c=relaxed/simple;
	bh=usRb+CTgtSlfMDvsIi0WKHVR+vNDdbmFaLxvzq9JVug=;
	h=To:Subject:From:Message-Id:Date; b=asEn7xcK/Nwa4d9z0dHk68uyv0ZDYERtdCVMvJkSMKpgSZUixzA/LZ3F3sD8n7DjzHCz7mo6schs0jEXUkeeGALU7lJGwsCjd3VkEC8aT5251HiGskKO42lQspdWCURqLrAHX3vE4k89cl72QPXjAYmdAyKd80/lQrIAdf4fEWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aqu2kOMl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aqu2kOMl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF718C4CEF8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762339793;
	bh=usRb+CTgtSlfMDvsIi0WKHVR+vNDdbmFaLxvzq9JVug=;
	h=To:Subject:From:Date:From;
	b=aqu2kOMlRWGHgl1GqcrivVMsBsOzQ8PBCRETbs6BhhfDCy8KQWV7obl2Q//CN2CwX
	 IMg9D9BLzbQTyEM0inY5L9YCy7DrklSq2zWZHF/hDjM/1HTc0QkpbWioozfD6YMgJE
	 0AOrTdEeEr2Gh+SWXbMfzYu8hcvhvrz25izIgLJUBOJYT1b/Zf/77d+NTNP2/yQxl6
	 +STq7OUfTlLY2IkbPlvn2Ql1bFsSC8sbcmmbRvDiSEf5AM77zIhSnxrWKnsds6u35u
	 drXMaSs7zb+IDgi0Do+XtvVf9mY6gj+uj6kMmDAXGAAJSpOd03/1Hyy8SAVYwcnpI4
	 WRCV/1DzpdJ9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B760CCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176233979362.14127.4917946772075599092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a731509eba599a27c8786965561274fc33895bf4323ccbcdec31624ac47cf63c
Date: Wed, 05 Nov 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762339793
