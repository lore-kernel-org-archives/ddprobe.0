Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E131DF75A
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772710494; cv=none; b=pItpvFagFGtDKavwU5Qm4VP5iTcfPhgPE6SxQErl7TZStvE3gMv/l9Y/SfPRNvY6V7Rk2iLvrq1CF6dcIUIrm6KYJpx3SJJnqIM7a99OdNiqLuO50rr5UTAajd9HLEAc152mvkNol5YHHaoX5Ob67XEBaAre3NdsJiV/lWmUcnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772710494; c=relaxed/simple;
	bh=qLw9G76etdFujSQDj7kxZLWgGfnyG2FqyDPhoS6SSQo=;
	h=To:Subject:From:Message-Id:Date; b=qjnHX9wAKcxbVXybudz899qXrB0ZOI/dfQmjFYcxd1KtIi/J5+lkaHBw4LnxN4hULDp5I+8k9DuuO1MuYxIfiLy8WRHkrahxE2by+JVelZwmXmHgKI186iIoBBjS6dMbQX958Ae6vrxsRkGoevfQwlCGxDLiQ024+q5eu1Nhc30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rZSAC1lZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rZSAC1lZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE9E9C19423
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772710493;
	bh=qLw9G76etdFujSQDj7kxZLWgGfnyG2FqyDPhoS6SSQo=;
	h=To:Subject:From:Date:From;
	b=rZSAC1lZsaQsa21zPCe1+/UUqpovkyrDxPU3QDeCT7bJi+RJD+yOzLT95/UZJp+Ot
	 TbYwhaNyb0m8+YAORNkmizgceCLxKrcbcqJbnwKQ/aYT843NoaUe+v+RAM+/4W/T2y
	 T1CgFlUyuMR1HrK+5KCmKuPOViWnNjeeJqR6Bra+0urlbEkxZcrnuhf5wA6JGXgAAG
	 vsncdjh1WFjxKEbFgcGfu0PHah5JO8BTH8Y2F/2gBBUKYdDNAV4RZfNF4FA//HvcBY
	 o+IIV30nhq948xralfYmFiC1V27HUP5wFhk/BdscprJvASprvpNqO+goiarR+haTD8
	 W7z+TylX+vvtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBA1F30946
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177271049358.32035.14392195829156070569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c4e19aaa7b9ac7a179a763b0ace3a2f31268424d0f17f129573c7307094bff6
Date: Thu, 05 Mar 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772710493
