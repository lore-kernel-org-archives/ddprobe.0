Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2EB4386
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711607897; cv=none; b=XtZnxjJ1rwBU4LhlrvzGXyfwOkzUe0XHrU1O2wWJyiTTkUTweka2Sik7dROM1ZZAlsqW+WyYR2X4AoAKNUbh1Howc+kYew4eRuoVMQfCSgtHKbSQPi/+m+GhQVod2VstNCavBkQmgDb7jjlJ8KJ3/W+YAYWmgdQHEJosa900J4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711607897; c=relaxed/simple;
	bh=+jZEPfAoWE3dgsJ8HrrrQgEfhTz44CoM7O9CUp396xg=;
	h=To:Subject:From:Message-Id:Date; b=RRPwnCwAGslOQXHsusg3UQH3ZW3f0UyJmsH6+7crccCEC1fNrknzCBaZNgKYk75OVhC0N/DCDORARx22zAj5jXImOgTICRWsa5spN8WNTT3ECy9znW/A+uV5AAQl1T9opn2IYA2lwlX0MES2DYw8yKwHjJOK1SnmLMYRte8O/pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QbftdGFv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QbftdGFv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 758C7C433C7
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711607896;
	bh=+jZEPfAoWE3dgsJ8HrrrQgEfhTz44CoM7O9CUp396xg=;
	h=To:Subject:From:Date:From;
	b=QbftdGFvE/8eRVARj4Z9/zWf95CbjZqJMPpGYlIrsKYHcUgqVIt4//JU59DH7pyCp
	 IA6mqFVFCpnzY9ch9VIqT97aXd9SwlcpqaUGA/4tpZArBFjXyn2TSPLsvuj89y3aeg
	 lLLox4QjDVEnHvmtTYHMm1wdK4BIyn1bz3WDJDuG2q8RP8iNgE0x6loLqDebw/6yPN
	 kZNSCYTS8Uk1JhLFRPmDEz7IkcBAH/RKIh2USiNe9x75eBKVvLH/9KB4ewNj0wwLFL
	 PDycCyyKsy22Rw8+LPuLR2iftKWfBQyekBY4uHfuhbfrObnm82nC6DYK4MB2jr7MBp
	 uuzCYxudzLMgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61290C54E67
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171160789639.1520.1512931836871505093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e1c026266b53762f9604a705abaefb8befaf8eabad464f6d36275465d36fad7
Date: Thu, 28 Mar 2024 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711607896
