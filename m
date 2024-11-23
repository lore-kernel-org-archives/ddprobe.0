Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D28417C2
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732379754; cv=none; b=Uwwtlzc2Mpj2jFbZo6SJisB2a5wpPhbgiIclkiy4CYgD5iv689JZRjO4VaZm8ZbGm/MWUplEIqh8XEdW8W1DpNjCpwYY0bKGc8DqFILboPEkNW8pUHn5A5Gg24BxbJZKwFEGh41BRH28gHvYG8m42AasHmyhE3Xxtn+lj4+eEGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732379754; c=relaxed/simple;
	bh=n/pyoHTG+PaKmyy2aoBTrPlHe7s2VCgAsClBK3XwZ6A=;
	h=To:Subject:From:Message-Id:Date; b=kYN5zMxE6FTA47IQ3UYlpuXaJUofK4jgPE0v0DLv5RKstJPBmzpeQVcOiC9Qgbj21bcv9VQnJmNZecnKhxGddJwHN0rRTtFyx2q55hAtiO2v4Ctiu6Q5gq3WHmOmL+rARJRCiZN4uHxVrh35IMeBEiAO4249UUtt7fRzL6C4yc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ORyHnF29; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ORyHnF29"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C1DC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732379753;
	bh=n/pyoHTG+PaKmyy2aoBTrPlHe7s2VCgAsClBK3XwZ6A=;
	h=To:Subject:From:Date:From;
	b=ORyHnF29HMK1r8IZ+eCfnp5BVvNvWDpHWUru6D7urwN0w86l06iDZg1lJ0ULeaf7/
	 7zKFR8FUah6yFMPCkvNuoTjCoTHqFDgLAvyuZ9DCJY7ddf238dQht26kZsUxjgiJA8
	 QrEoQoZ4LT5+1Pc/eou5ca+Fb3OurR43pQji2vpYBYl5iQnGaQZeXvT0tSFRMQRgTK
	 /JjXs1BPD76H8mIml7cj25ybFiq5c1hcTtcu+fIK4FXjNOGi34WYMzdgSKkMSgoxyi
	 CqrRvxKeHxkUwxPurJ45q/b8JiB5FaUyqqfK+jTd4Gx/4A8RJ5cyTwiVqI8eXoP4fc
	 /uaT/ObAqAaXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D29E6ADDD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173237975360.2212.10571819056725722977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1b7f2a3924133c3483c79569d6db72496be5ca1a9b7f2f28c08765343e064d1
Date: Sat, 23 Nov 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732379753
