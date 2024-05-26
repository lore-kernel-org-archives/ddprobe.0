Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1039312FF7D
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 19:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716752663; cv=none; b=fD+7nDGScblYqDtLR6aAOfXLUYHq3Ji1Nb96e1rBeKyyJ1gPzGsRR4EawMkpbL9PaYjvtpdHen53j4UqYXVQZhG3RYf8cRBVG/tMuhQj3fALT7qv47CbpMVDxXWDjzBUjNM80uHhjgicfwH97c+WSeYkRs5IfRBZM8MCisMvTL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716752663; c=relaxed/simple;
	bh=KUIYfwf+XsRhHy+cRWmBliS9loSh/IvauR0xolyNSuc=;
	h=To:Subject:From:Message-Id:Date; b=XGATqXOnffPmfFgYLFU67wJmmq1VZHE5CSbu8UKqfUYB//qf4Ph0o1wkg/PxJ8GG/cSLixae64Q0QCqK5nr0fmVeosRFfk8AsrPV/8Kv9dEzpH5r+/JzfQmhFW0ZKBQss2JFuFq0UfymVekjDjEqkBYb5K3oY570y6O62NVskJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kkKBPAsA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kkKBPAsA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3C42C32786
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 19:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716752662;
	bh=KUIYfwf+XsRhHy+cRWmBliS9loSh/IvauR0xolyNSuc=;
	h=To:Subject:From:Date:From;
	b=kkKBPAsAXP7rEsSNMS+JkJVsW8V7ykStaVZaN9OP0gaI9dEYYuBiNeubhB5YBwXSM
	 HdthZb6+sCFJkO/ltm4dGmdkEGhHbjINTfQCb0V6jtWFf+R4AXuQSOyIJFmLh5LZPG
	 62p/hJOsa9R/CC3UNEBST9Cm0Cl+1Y8eeUx8oEQCYTttGy/x5YWFTIEAEUNIlmCLlo
	 MRok2XBAO4h2I0ejq9xADyZa34jJHv+VbZfkVbleZ+naKUwt6Sg6BkvHQfRgJnr8AE
	 BjORydZhTeA9xsFLvlh1id/8oedIdyuX+zOPjcbjpK9DtphoLfIRoG/oYqBNSnpPzP
	 HSTcd7Mqzc2sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D09C1C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 19:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171675266284.5453.13797276948071744365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 667eb4a9b63c2ab30e838d29e350ecbda442e2f36633691fcccd8e4091ac8bc8
Date: Sun, 26 May 2024 19:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716752662
