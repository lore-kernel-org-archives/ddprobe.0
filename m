Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A95C18A6A7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774703094; cv=none; b=Z1e+G4F6TQ/rbuN1HFKgLu+UEvMFaZ620siNLZAwaKCsBnYlRCAvaFnluW3CWGn5ADss2wq7oHPjx2gEk3k0lZH4GowqsNWcQHpbZYAl6djCYJlrrfXPTM3PLvFsB89dw8NzQczL5bK1H4H+95ODgFT/fEtdPuvLDGyBYtIeM6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774703094; c=relaxed/simple;
	bh=by5PRKyIYrIVb5+Dn+Yhd3I28tTL4LMZPV903lXtDos=;
	h=To:Subject:From:Message-Id:Date; b=L4EFDtYuWv4Q6UXFsqrDD2v2rNqfqLyagNzWpki1P/5Fg9hHeLVfRpolpOsNFFMqMIFNHRW1rn43DR98mO/IiZ1N2PYyDjeeYl486Oma12gWBWD6CdUsUva9Gy59mH9nKHU8ILbyu5g++zNcEiwWeL2XgdXLbnjXht4bBaUihO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YEYfNpiu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YEYfNpiu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE56CC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774703093;
	bh=by5PRKyIYrIVb5+Dn+Yhd3I28tTL4LMZPV903lXtDos=;
	h=To:Subject:From:Date:From;
	b=YEYfNpiu/D7WmXpdvAMgimKTlRnAZguGXp4lJfXEph7LyFilIxXUrexFFG+dZV2C5
	 Jl/rDfl4pKkxR676NmBivjuG0dyqUk0YPjOPN2FdYXHmYDlajux32P4F3HdPzTRbuL
	 QansTm0sE4bjnTrv6EQcYFowe0EBUN3iqUDMDus46bS7VQHyTP4HfF2BOAoNwuUxLp
	 hS3NPwGUuIYek06ifDnUB+IDCh1s+RFof8h6yNCKCFrRXBOP2Llf3AV0/pXjrYMr1Z
	 HsFz/iKhutXEN1wqlqYWwv8ct4IGUnst8EnmkMQuWgxC04MISpnxrO4t4VssW4aPhX
	 yVYno4c6IqHFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9977B10F3DE7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177470309359.13322.8271563617961364825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2892a42efc026e1ff359823d45112bce177856abd641694fb714550cd3da7c9e
Date: Sat, 28 Mar 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774703093
