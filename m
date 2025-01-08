Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6441A0BED
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736328954; cv=none; b=m0Qj17r5dCtOeAlpw1nQdJBEXXL05JkhpQ8dwRlkhiUvO2alpjgmZFE59mzsT743bbNmqV6RoXfuP1ziVHi682De2ajogb5y2WMjHSUc4derz1ZX08EL8+PgMvxlBO4k5TDp8U8wUHy1LBXAmLP1T8yIeGssd1NAqtHvk0L6ifA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736328954; c=relaxed/simple;
	bh=X1YNfGorhDixwAgttxnq1U+EkhO5PGUy+Fe2BL0lyIs=;
	h=To:Subject:From:Message-Id:Date; b=DIHJEFPHI27fHkOY6rk88VBhWuQHzhIvjsN8K5Mv97y7guhUps7lYY2TOR+Qv7PcGRT7d2frySu5R5YHp5qZ+lRf58KAQcI8tbkcrHCHP+DNBB8tWUJcuOB/pQmkmVutXSe71aNSbY03m+v37yMhkmBDPgRvqUxlo9BfDEPYv9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i5kwfjmj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i5kwfjmj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B06DEC4CEE0
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736328953;
	bh=X1YNfGorhDixwAgttxnq1U+EkhO5PGUy+Fe2BL0lyIs=;
	h=To:Subject:From:Date:From;
	b=i5kwfjmj0TCZZClE4s/4pbjzEccnS7aYGA4k/afQ09X6wFSKcgZBF15T50E1CzNqp
	 rR9k+bKjd8BMitvPJ5jjZLUBa0cJgfUGQyFeErFPhPB2jKnud7+MI37ftsnqxj77w3
	 kd9SxseHOQPI288odMCosQEGA4zqPXBcJtgFKNgCkF0dPdiUD6fzmmTlsNyjbie1U+
	 4mQYNE2bqRNr6dY1edgkMGj8sKprndP0UV2hP+TJrH+OQPdMwjh/mfqlSjOVoyd5T1
	 iFyZ7r/0OZqe2+8BzdELLNBWGDksdxjT//IMiNkFcnKVNgmHJnemXjD1aH7kfE6Oly
	 peY/KbNk4vuMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F37E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173632895361.27948.2380904998078422451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9952202f3768d25e0972f9daad97da617ad25c3c4ac7ce3b6890e9f5c925f66
Date: Wed, 08 Jan 2025 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736328953
