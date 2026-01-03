Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E97E1C3BF7
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767453234; cv=none; b=RvYcGlA2HTtcll/hd9FZzKObF5sCTioCDNES2c0hBB3ccjUhgCUbg5W4LQ/Ye3dF/Z79mgg9HM95n7Iv1Y/IJtPf8qDERdSQ+/7oS87TBqQUw7lpnUDBK/afWfoIEkLfbRNCE3oxNbvAz62gOK6L5SOy74r25Fj9dsGVsn0ioHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767453234; c=relaxed/simple;
	bh=7FJvs5s4DtQmthH42Dyln1DRa0Aje11BPSO/pximwh4=;
	h=To:Subject:From:Message-Id:Date; b=uxrheaSF0XGsOkH7sEwh4F95oz7+UupWP0lRP0Qkdpm/+fsoOHB/cGN/sDRzZTpwsNjrzcS4eNu2zVxEFFM+xODWQxJC/LDb8ioO0FPebfJDFcHURzReoFfbzaYih1/fcrq+rZU524hJkglt+ZRyCix0XVqSYkfGBOs7JUS7bBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K+HeXGh0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K+HeXGh0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2629C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767453233;
	bh=7FJvs5s4DtQmthH42Dyln1DRa0Aje11BPSO/pximwh4=;
	h=To:Subject:From:Date:From;
	b=K+HeXGh062BWm30LHBoMbWsBhysSo4v5c9BY1BO1GepqL7iOnbVbHNla3BXLFgQJU
	 pUU2YroEaeY2Wh1dZTdrscFcrsmhSgDhZtzqaEry2Cmh1xlHaxU86u0ZKltRllIbWo
	 KiAdUjDAC0+DLlB4a18vu0af0nbIKbrQWEhZj1xR3y30RO26JFS+J86gxJII1IuTTp
	 +Cn7nGWJFU6xzQpf5TcLcjpMY6Rg4x9FPMI/1HeNrYzJ1YWEMmZSObLc+9cj0hecDP
	 f0YptpCKjcHpGu4/8dDERG5nl+wNEAVt7pagdm7iG0r+4kVGmQIkY8QSclbgO5h6Nh
	 4jJ1zAwlUAYCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E00FC617E
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176745323357.17256.2526093534121334870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e12b528f4eaaabd6c642011c0c61c24f897392d0d0089684ef06f38ca750952
Date: Sat, 03 Jan 2026 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767453233
