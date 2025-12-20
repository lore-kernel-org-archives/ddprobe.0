Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256DB2F12C3
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766262234; cv=none; b=StVQdftoyyUDsd8XX7g33euffyYOT3aA5snC82uOygL65eWDSG32o5D/vZIgAMsG8Bp2wUSG4vnvV7s6DSF/s/mk2KD9xYtILV80iv19FC0qOF0zvrwxBCaXcd2B5FDiPf9wPBFcE4Mvwpcscdn6nW0mSMY/9/uc0PobSNTrlSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766262234; c=relaxed/simple;
	bh=3B4m/7APkZQ4FdqtcxX8g86sPoT7wITI3q7F6G+cro4=;
	h=To:Subject:From:Message-Id:Date; b=UlaegQuFFUMzI2+/bfZQkFTl5T6PyWP5ptgj/CR3HUmMPrzVLgvM3/YbL8791TvS+3dMZg7i8HicFaYw1NqEDue/RNifhjKSuetwOfmCjY8gf5vJLYQAKxHqEXWQlS1Q4muSZkgcUc/k96N8O/yi0SjPMWWtJ5vL0zCBUbjWL8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YyVaPLi8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YyVaPLi8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AC0C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766262233;
	bh=3B4m/7APkZQ4FdqtcxX8g86sPoT7wITI3q7F6G+cro4=;
	h=To:Subject:From:Date:From;
	b=YyVaPLi8XhCkIVczwQWFeU38WNfI0ikaZ/6hczy+pUZGTLLIQFC6SFL13R1M5zJJL
	 o6Q09INn3H3V4d/GQ/W+wmK4uAaj4d6AFt3pfP9bNs58lfS3G8ems8wU/qC9ZUwUMB
	 sN/GqSg1Na+nyDROxeEDzxVhPu5tL4u/dro9iFAS5dqhifXL+JPbKK4A6qVB4QWGjj
	 XKvwDET5hAa2SwAMjwU7JSEY3RNeQzsmSncSKV/i/uOzPlaf+OxRncSnNRJlZwb0nR
	 lrhtm3rNFs6EIdH0ZA/YwXPP0YsQgMwemgh5Zyz7fwnyY8ekQfngvXKD5wRmE4OAT9
	 FfcVl+Do9QBlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959C5E67481
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176626223358.6087.6442939333249501791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddfe260c5550c70af0ab5a4def1e01cc6ff449a9e3c8d0217863429fa209d2e4
Date: Sat, 20 Dec 2025 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766262233
