Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1243B275861
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 04:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764909774; cv=none; b=LlXfyt5i3oOAmVWkU8hLNxSGHrWiqeAUvNvl4zF2GFGvQ/uK0EmjR3KexXsEnwrnRcBZhzr9WywYgGfJhEBdfJRuEKlFX0xQX7fPerNZDItYpWB7zFzAaUYpxhwWhiPmHyGa9IgEnmG3yFGhxRKv7DfG66sFiQfl8BN6DwyCtAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764909774; c=relaxed/simple;
	bh=Oh3GwJZtuAL+eVJFUYHJLHzOalS8HyY3JKtbTWiLVLA=;
	h=To:Subject:From:Message-Id:Date; b=SJgvLbHmf1gLVTkq1i5mYPfkWoyynSIzz7XXriyZ+QCk4xHOyBb2B8hTgB6aMnlYySuqYDDU49m5UbjpuTB754BZXf3prhxGZPjxelIBZIbSU69hxl1mXalvuN7urUr8giXbKxG3aD4irsAMYrNWPc+92trld2iIYZxyXgGigCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qd+QvXmf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qd+QvXmf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40C9C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 04:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764909773;
	bh=Oh3GwJZtuAL+eVJFUYHJLHzOalS8HyY3JKtbTWiLVLA=;
	h=To:Subject:From:Date:From;
	b=qd+QvXmfTSs9nZDMfqoywucwrbTZdW9YMkEcOk9j4IsNbmdMDrdHFPeMxQzKiVGqM
	 6oG7xTHDuKLJ68CxkN25hEifKRG9nYD5i5+R2xDvU9ARPJpLsqA9vRdNeMwfEw+MjG
	 ll9jyf4ZmEAL2rHFJlhVjTixFw3Q+Lmne4AZ8lct4tcstng9T/fFbgZIaPgYf8NZGe
	 IU87itJcpqJPFN6rwRGl2hav4Sej3W1rGUZXD+30WRXFBBtMjZtPlQeiZ8CUrwhQhm
	 XaMe9HYolE4ZGzBKgDTAo/2UUQkmus/z1HoqEx/TZVRuzWCE+bXl5uzEZKsw+ZDYJb
	 Cbr9vGfmU5ACw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F0AD116F1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 04:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176490977358.15618.10094648515208098318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0aed5065ecd0b8048321be4d43f6b68a910e68c4fb84ed5581822191933806b
Date: Fri, 05 Dec 2025 04:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764909773
