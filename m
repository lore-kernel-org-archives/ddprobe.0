Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33EB7E55B
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747408794; cv=none; b=XqvVT1QFl0lQ5HO4fRpoF4FeJo8EMOmH4SYvb/pGDMv9Qnf1CcbM2uLhYbTQO/cIFq1CnvMRTLImBg/kdHSX+hxjUbxtLfaqfcBJZzmnsxAz86663XW2dJ/rjZ+auwedcIb+tkgMBhB7Wk6M7zxbHWMbNagerlvNam8YUJc24IA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747408794; c=relaxed/simple;
	bh=kBxG67C7XjTZbPdEW1icESxTWo/OvJhnK7BOnd0Pzlg=;
	h=To:Subject:From:Message-Id:Date; b=EVkVc5wloHXnUJP37V1QxOySl3VW8XHk+o7G/nyR6Mb/PDO1KRnIeLPYY3WGEnLi8PSOg8m/Z5q9p4J46M+Ds/997bWCR1IFb1QEKHxaY8CsnDQ65OVoS3enddzdQc/vwcH7xjzzfR5w/0fVpa6kPcjE7A7wVF13BGIRtQrQSA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pa9Wtoyo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pa9Wtoyo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CC0C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747408793;
	bh=kBxG67C7XjTZbPdEW1icESxTWo/OvJhnK7BOnd0Pzlg=;
	h=To:Subject:From:Date:From;
	b=pa9Wtoyo6DbL8P1yW6zF83QR+jrsEGhlzT/O8+kn2+ti/EmzjU1kwP4ajDaJ+n5VX
	 fykvmGzMyLvIDD3NSh0WlYcDeHNCCHktF+8pTTdAa8plzEyaaI/J8xP3XvHoySC05Q
	 yL/EFX2LE0I0XA3qVui/DZgF2fpGFle1lTEJfDwJQhAVsT/D9i6HZ9/AUsYnOk0mQp
	 sDpOvaYunxF81zUFKqmyHlFxQQxdC1GQBUTpPjhNVipSfGVVSGj/yRTkl/qtmkpwN1
	 jQuO4JoRS2TiD6n3ozsyXZfjG9d2c3vWuFMX7oIxLqm6H2bnaZo8zYZg+5/EF9kuxO
	 wfMyvQRk4r0Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F973C3ABC9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174740879357.15407.1613580733436545985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c70f7e46213a606e1cf9c4822a494ac27a7c8eef54d077f8cbf0bb4e822c11c
Date: Fri, 16 May 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747408793
