Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208EA3368BB
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 09:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776245854; cv=none; b=ZJanqR1J5mDYYlERR483paoguHW+rFQyGRNvekkl13/sBiyP9rKmSEVecyFIBHFDCvfUit+c4GKxYzBYaymbRkBQzYzyAtzXPzJq0lwFT6hfyWtqZGFZgcVMZWVNl+di3eXP5zB5ogxjiTMPFINz45TCXNU0yFsUJWoo2TcDby8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776245854; c=relaxed/simple;
	bh=QqtK1/9FHEpBQhSU7UEmz7/vc51Ojt2JRU5+Idh2qDI=;
	h=To:Subject:From:Message-Id:Date; b=VnI4brOwbK85jQSX3RJ2IvGgHSFGVbLoz5ossSz12rUnbg4FkzUfVaaNXfdJGfXeAInun0lVGn+2wwr/c0VYAAvZ0PJ2shonmANK3zzuOczNbZYkKgbGi1KY8hvqkFZlQoWv3vqUKvYT9GLFw2KmrxZva3Op4rGC38cIGqyPCaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=etGedXT3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="etGedXT3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA729C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 09:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776245853;
	bh=QqtK1/9FHEpBQhSU7UEmz7/vc51Ojt2JRU5+Idh2qDI=;
	h=To:Subject:From:Date:From;
	b=etGedXT3yYsfLfEbIxwRzXqNbhm6TD9ijBsIQ0K0SpzJOoFKa1+og3ydrE6zOvxRX
	 SBvB6q1AUKB40fR/ah+LQGa5bHHxat/EFHOvsIk+c+xo7vZeKIZ8rZUEVwJBHfKVW2
	 mKGRPM1oNZSAww/Zr8hzWiE0TbaiKOVlNdIK8j/XmIn/XXLNDiq6Y0hTsFavV/juO/
	 P2k1OH0nUN6njcntIsnjaw0Zq8TDuL5oheLt+1ILSetgDI4ijKEeogaLUImFwMPZYC
	 CDsY5Xx6ee5gf0kbxvBgtCY033Bgc2b2djPpI4Up8NKRc2FRd4e+cSowSWzL74g5Z7
	 ZKJhdiyyhkY4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9463F41984
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 09:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177624585368.22880.2916983594031818150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f8f6430638dd499ea27772d994c88063645dfdd9baac58f1a3900b90915e8e9
Date: Wed, 15 Apr 2026 09:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776245853
