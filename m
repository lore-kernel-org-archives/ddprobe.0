Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D398E328639
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 17:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765387973; cv=none; b=gZCrJQhHQ79qUhu6AAczWL5PwXy3hZ759m7DiN1P04EVoRh4cx9XXJZDJFySRISNeEGTlgDNvs5DssP6cpEezNjC75p/GGtXafom7CqecC9qlfR5KBetC0yhSV//gvm7/7ISHcV2wN5q6m0crDb8VvxTgI029KguYatFcMhK7Yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765387973; c=relaxed/simple;
	bh=5elDUdKqoejhsFWDOxYZ8PLrHn3VahiJmouoAOTPnbA=;
	h=To:Subject:From:Message-Id:Date; b=tipol5rdgdOuWUTU6dXUPI381VRH0+Xv0M+Nf0XZn3gnRmwoGrDPd9SEzy+4N09DcgJY600b6MNg4lUtGnMmgZX1AGsXHBx2AiEb8vjRSxxLWUfbHI7thblCLg5FmGuB3dhavRN1Fo134UQO3abeuCXESLWvZC69G/FhycIKY0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nR+LJNvQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nR+LJNvQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD27DC116B1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 17:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765387973;
	bh=5elDUdKqoejhsFWDOxYZ8PLrHn3VahiJmouoAOTPnbA=;
	h=To:Subject:From:Date:From;
	b=nR+LJNvQEjITiKnn4ApwITi1agRXUR+0P7o5QUaZn+MwEhk+uF5YIivXbUeQANW2z
	 VDDhtWTfCBtFYTNC37ZHm/q2ZqNQ2k6EXQt866BKrDvWuTtcqgLimjS3tGgmh2agNV
	 Z3VCuVz2mnsxcWiaMp7nWfQ+0uNVreG7HfVouszuTnYOIILE1fubgaTAOUChrCwaen
	 WsS88oGm2RnpvQcsJhIuC+jM6GUO9yXKmK8OCpvLSvQBG5qjhRlnqLu/SF9CmalU2J
	 bonjUTbFLtj9S/hMhlwhtx/GFKY9XenbmmeJotvy/ZEkkmWcFr25RyfncY74cBKJ2Y
	 lLePZ7F4IepQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F0AD3C928
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 17:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176538797360.9554.18108578946759282352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c959b86d6253099de14e9296b05c16b932f6801355f58070043cfae37d2f496
Date: Wed, 10 Dec 2025 17:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765387973
