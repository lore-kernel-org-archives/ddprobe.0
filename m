Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5877F4A32
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788010834; cv=none; b=GlW3Jajn/ZVDN7S5CK9586VemlnPq6CfNek2m+ll9dWRG5Onqu0tro5R1PTCxh7Q/jsB53m3AJe288Mk4L8CfMFHjX3ovVJC+dKISuAxHLVkCQQlevBvjDNAfjzg+h8a6k3t1STXUGNkFBQd6tar1mFdrldR4rlGqDUr09VXvBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788010834; c=relaxed/simple;
	bh=wnZa9sON8F6kefGGk70oN4YmjIXpBT7qHcEVfL1FC2M=;
	h=To:Subject:From:Message-Id:Date; b=j9rIRSgiV2b1J+jvALThEdMnhKk8CrMDTAC93wXhmhgbfX+QiTvgWYsliM6iYGt+muJPCzbXowKWIRwtyyj/MABflZUEmBbYDpNhsS5scqbLtwh+znX+gQHEfe7yIz3svNQuJMBTRs9TurU16sbWgKmPLqTYP7NFqcU6LSA3lHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DYxxVzzK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DYxxVzzK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C96C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788010833;
	bh=wnZa9sON8F6kefGGk70oN4YmjIXpBT7qHcEVfL1FC2M=;
	h=To:Subject:From:Date:From;
	b=DYxxVzzKbxLh8hazm/K5ndC2DyQ8cgJo2TEzPKQwwTaFp58YVsaUykKGh5IKJbuhX
	 ngPcUcxJJYKF8uFNutjS+WI9jWXF/VVVR5NIo9ALjhlZce/W5vjkqdhD43bbyYrQUu
	 0w5qct56AKQSOpzQcnRbDlC5sVPKY1m7e7QVi4cQxm0os2JgYFemB7tjXptV/BMVfN
	 cNg/UIpGtdOFB9xY8m5gWOMjARSxL7RBR+lP6QDV5QFJDM8zcesyqd2Zcgb+Spe1dX
	 N/x5TK332aTlL47WM8jfOo7OV5Jo3/svpMJ3bz/g+9TAqgjVvq44wUvm4SctOf9Q4K
	 AcGgh10yHhZeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEE7C61DBE
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178801083368.24274.14958347320096401925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55dd5e6ea27914a1d5acd11eae424037644f283f36f248f48d7459c9451b9c21
Date: Sat, 29 Aug 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788010833
