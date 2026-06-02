Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3093D3806C6
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 23:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780441474; cv=none; b=GZJA+JcZZLsBjPm8ENxfJjfvkqIfAGdsSU1RgTpnAYSLOZsOyEbW4JLWsj9tkpwjGOnr/lFzdbMLNy+iJ67JQ3HjeJcbov3JZHS+bVdvl5O5o+osj1gSMdj0ZQhkCnCnh7NzVUpkaRFE1KYoCGBHrXLwAh1QDt97+m5Ppu69cFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780441474; c=relaxed/simple;
	bh=I8TITzjDbgYnRK8zsft8zB+7G+4E7U5GKs2BiWg4noc=;
	h=To:Subject:From:Message-Id:Date; b=n/MEEbN4l0Qm8pujS858/2+bXlZMPGzpvj/+sRz8+0KTn0zglJ2jVtfYT1F80b2xRbmQ9HU1ZVhLPhOXzlUx5vWzF0sAwVHV6L4yMsXvQ0K8ajZ+HaNtjd+aEjsZqvoUF8sODeNRbtjvMX+DhoVA+gLuTyqqxJv80gX5lUnf4Js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVC7dd2n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVC7dd2n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2220C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 23:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780441473;
	bh=I8TITzjDbgYnRK8zsft8zB+7G+4E7U5GKs2BiWg4noc=;
	h=To:Subject:From:Date:From;
	b=BVC7dd2naXMhF6UHiXsIxJJa312hdMZqfM6FKn5xaQ62h51c7ltH3VBNKNc4HX41l
	 r9m5AtKWr/5d40oVzBV1if5oMHAiFrPMGR/d7u4AaKBFM3xBPwjYfjrpVMeF3Lyfsn
	 B30D3iyxwfgySiV8KGIaG8MkGqG7L+VcWYeLFRJywWjhglp63eBubwYUNHCiZweq+b
	 6d+XTff28LyKhUQ+cb6uCMrUPjY8UyoKHZzz54zjvvuEmTadxdVwN8gohrZTqplQbw
	 rsjECajPyaXEu45h8I8suAdoAr74urdew+8aZZDxnasbGHWDMBsVOCyrrz1rS4UO6x
	 6Z9/WIwqpG5fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FF3CD6E5D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 23:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178044147368.5221.7847982659100944783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 724c0634c4e336db7af59d78785a424cb335129c396a86ab47c0095e1d62c568
Date: Tue, 02 Jun 2026 23:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780441473
