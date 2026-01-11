Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3571DF261
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768146234; cv=none; b=X0QjeqmXycEJGKXpNsaNd2OQQySP7A6VmN/Gamaw4+9/9AMxF7S7zUrbRvQ7GHVeAS6flAO39c3hwNpCM8K0X9hsWPRQW3TnNTzmDxMwLYMBtK/cK2NMvAXCSJoKzOv45TSPho+ex+XNKdDRTJf/RcPfCaDhNgNA9Jyrv0agINY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768146234; c=relaxed/simple;
	bh=ZD19SVRlQ/+KyyodzVOhB6VGMAiHaPEOiKRRthTh57o=;
	h=To:Subject:From:Message-Id:Date; b=n0FbBlUnMbF4oZZjOZ0t2WGisob7JIw4XlZ4ryZlcz+mcTJUEhWeLwAHzSBwaQyO3RjoLr5I+sOuMDFSBONY9D85R6JaDQNHTowfZh5htJ+p7clK2OjLz+5i2KNEG9OP9nsJGyV3zTXwT3omUR6vKcH1FEi+Lc89YDlzB6bGFgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lcSSPYSj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lcSSPYSj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61B7C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768146233;
	bh=ZD19SVRlQ/+KyyodzVOhB6VGMAiHaPEOiKRRthTh57o=;
	h=To:Subject:From:Date:From;
	b=lcSSPYSjQ3rvEpJNkp5hBpXGT+1kf1EhmM9hGxeT013ZNCSsWh/qUmKTKAWzH7xwt
	 Z66dMWdDmQbfAxunMRE4/eBv62A0/IZsJZeIdKVGOaCPwFAofbg4JvXiNM9NjY7BTi
	 4jW4WEfpYBHmCy3T9YSSa4jEb0coW9rxtcbRUK4ft20JwfCnqeLVhwbjmVJlmuyScP
	 lo71zGrc+uE6If+HiRzQGaYSS7RGT/i0s3c6ugVGMR0sB+lgUSpFgeIA0xAIBmySQe
	 R5MxIWeU3zVCeaVZXIO0ww6ctR54HfnupRGbrMdgmpJweobakmDKTmWocA6G9+nYNP
	 XQ5Jet831hc/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A81D2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176814623357.25424.18333800619919463029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ffa0d152a97374d53fc75162301dfeeb640515c88bfd114ea05b5dd12865f72
Date: Sun, 11 Jan 2026 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768146233
