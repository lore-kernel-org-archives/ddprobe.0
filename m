Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B1C635
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742434194; cv=none; b=LDtE+N02AzAxL1kHcIUp7XS+Lh9YJJW6sfnZ743QJ8xQelEHHO+/yAmnzDiRo7VARJpUAtdSGzcZe126kK1Ms8kqKIZEGiM3Sro4yduQSWq3iaUeNxT6IDbf1DggSaFjIutkWal1pqV2lb5D0p7Iye9oog6JmdTCdL/yLqxn1DI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742434194; c=relaxed/simple;
	bh=HBI+Y7QayOWFV4VM+psJt6vw9FS/dcWJxjfQ9jKMyTQ=;
	h=To:Subject:From:Message-Id:Date; b=Q9Pr6m9HWN92B4IoDtNUN53Ea65Bs60J8z6V4nqVg61hZYsJm3D6V7RusWKiejAtjnmLC9l9Y2Tq1ojBFAvRhPIj0Nws+OF07vmRzAT0sBpa/x++Mgptqw/8LthiZrOibL0O8YgJ4Q0zBLUuk4SOpdiSXIjxU3i6TDTFei+vv9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LFQeDIjY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LFQeDIjY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD331C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742434193;
	bh=HBI+Y7QayOWFV4VM+psJt6vw9FS/dcWJxjfQ9jKMyTQ=;
	h=To:Subject:From:Date:From;
	b=LFQeDIjYLdSUrERRu1viBDB1n6KadxSP457E30pSelWNu+iErDo1UNR1XB20tB/Qc
	 gSzcXHRNqUbk9bzWI5QN+YAm4jWD3nzNLD8StR1ciaM4sQU9ekvEylUEFf1V4mnlDS
	 nRS8N7yCTWWV42TPK1j6d6s6VT/aYDD7uUAxK0U7uFGpqA4NZ27CbDQctlsnMrFhew
	 vhdEeB9g/ykNvIgyKDPnWddBW2X5S1xSKNjB6UDHiuqtBg0khW8aDH+a/GnKppEinO
	 d0bhqsWZkY28cMlIHnUdq7zzo4N5Ss9uj3flhAhpk6tHw2V8Xgsdtv2B5YluOWrx8g
	 JYFVs+myd/Fng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C607C35FFC
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174243419362.1988.14848086206197074066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a41ff420ae77b9e9b196599d1712186e7d203822fa687c42d917f465adc45334
Date: Thu, 20 Mar 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742434193
