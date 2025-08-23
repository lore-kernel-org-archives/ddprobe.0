Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6ED1EB5FE
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755943194; cv=none; b=dTOTarzGHlXhRV1NZO7i2mhQXIq5wDWnS6/1NbzDDbKxQtmKikP00QQl7JId7VXcV+RV6JjQWHHExPFvYUIGgdE9w/X8wUywXfQoKro3xnJlfWiaBAqJmtM93pfe4y6/PtTGkoNTfrNVHawjTz+1FEE8PTOYscDCxKA8VKP5NcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755943194; c=relaxed/simple;
	bh=B1erY3KlEkJw7a2TTwIJamRqQMWvjqoX65x1keEHd2I=;
	h=To:Subject:From:Message-Id:Date; b=tjfDmujZlOk1pMQWX7o7U3JabO3x+CeD0PX3P8QwZlRmGlh/pNFs+KdUikpaD/qscYRutdsGs1KCokv2H1kVlpFT82s+qkJR/GSKE9eTfEin/RceclxJHrOLr7y8d2+pv301PHnZQmcmrDRJlDbNsUhxtu3wrC5GQ7nSiqmL/MI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eEfvmBQS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eEfvmBQS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A230AC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755943193;
	bh=B1erY3KlEkJw7a2TTwIJamRqQMWvjqoX65x1keEHd2I=;
	h=To:Subject:From:Date:From;
	b=eEfvmBQSiXqQiWsD9VK5h3PfIKB4BgyCNLdNIqp2H+WkVTZtibAkBYiUqRvXQAHnr
	 JYIJ/L10ywi8gAN9tp0kiSYjFoYZkpQIl/pTmyY0ToJUhUPTq0cb+s9hd6ZLeKRX+9
	 ckWPUzltPqOf1GdM8cxCwtru6xK009UaRyPZSxVe9yjav/8KMlFCd6gzw6Xo6uXESr
	 MVUDFlfnsC7ncrnIwFhJiMaeOujJMMMTBvmAXNtIQwpi+XinLIazG63o6X7rk29XrK
	 KkUuBbAPFmOZmNq3Fii2gIsuk/iis5CdSjurfd6MNsHSQHMSudGKImNmj1Rwu2Fscz
	 IygputbM/iZiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91860CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175594319357.30520.2095818124130809399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f2a7ca60536e70de023e1ffdd80babf81e5554088aefed51f7c8114eace1d90
Date: Sat, 23 Aug 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755943193
