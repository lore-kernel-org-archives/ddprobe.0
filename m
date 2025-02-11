Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BF8F6FB9
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 12:31:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739277115; cv=none; b=KStPjZsSmXxhko9mp+WJr8TqrYVmGKA3oUscVipJpNu9dAIQh9wITxZbBNIMWfR0LGNq+o4wNALhr+X/kgq3scqM485LWStdH6BwZX1WxkdVtV+v+WD47H7tQLvvBRKwdddxVb67S0BNbblIY0jIsLzGa5mzE8CY8luSTpB+tZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739277115; c=relaxed/simple;
	bh=8fCuWIL0HryEA1RUUqhpO/f8eiIFAd2RopdPoVD10QQ=;
	h=To:Subject:From:Message-Id:Date; b=Pc+JrIu0V5vDgsJ8UF8O0jnyV7Kp8WsWCYzDlzrbSWeBAPBZS7AcN6oqCs2xSqgWAPPkULiFnCxtCGd/jq2Y0P0SQ67XetCpPyW+FRhBTJFJ60ZHJ8dAUTiZVzf9//+co9Xd8bp5P1X5/PAwfHP5CvG09obgoe9/RILZW3fXNWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tfoERgLc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tfoERgLc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0E05C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 12:31:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739277115;
	bh=8fCuWIL0HryEA1RUUqhpO/f8eiIFAd2RopdPoVD10QQ=;
	h=To:Subject:From:Date:From;
	b=tfoERgLcDfPcbKR46hO9JW5tX8rL4XUNWnnw/JMMAixwatOYXBxyYF57ctPw4i5x3
	 nQeEEKD1FEL+aCnY0+mObVFvJEwasa6dMcpuj5yr66krIDDAU9X3MBHfYOq31FXVSn
	 rQI97dhEQ7X5GtNb0VkUDcDNil3sh9Ov1BvJIJA4h4uNR+uPYb5gbxBEySoh88KED5
	 EQ28xhh0F5RZGo38LLPz4otEbtbUwL0/77NTsemIyRqyU2J4EmKgjK5/czr1z28cip
	 Sxby7dq4kGeP0azq77MijsR6kWH+vxb2FdDyf0VlgWrfPbGoUF2nX72sfZ53w7pwWa
	 BECMG8yfyEixg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EEE4C0219B
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 12:31:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173927711440.23126.6372418714357938899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2959d02dd6f70b82e5c5f5518cc0f78e187c76217c408ba3a799ef34390764c6
Date: Tue, 11 Feb 2025 12:31:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739277114
