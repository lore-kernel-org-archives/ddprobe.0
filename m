Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DF7258CDF
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756895994; cv=none; b=MNKmvaFW3g9KtgkPTxWr3bp99Lt5jcM7WET3TLSkEDRUr+I6JR3BXTnT6yn/Bw3UdVu9IXJYAlls5xwpKUX8ctXyVC/86mdlV6XwQKovi8e5hB/63MiEdmYKGJj1jIiSer8R7xfxK6d2KSwrGKF0S5HJkfZAczKGSk+H+MQ9Yug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756895994; c=relaxed/simple;
	bh=4HHQNYN2sVQyZ+w6W+uYl+ISUCWuaF9q3KS/T00KVqk=;
	h=To:Subject:From:Message-Id:Date; b=l8uC+MgQIxTKWLKaAQ3DIlmkyl+1CfyW14ZMIIse9r3CFzGrrxzVWT/k7r9uaHMzmq0zZnoD3R9j/bdENv3Ncg3Yi4f+wX/C8n5PYE0FMAUc3ZmW1ay/PToTruS4CJVjKWb//ZTkaO6nEZ3Cn6T8C5nT4hppUsJYmRq9HBHNqgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SE6f1gsa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SE6f1gsa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04F4C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756895993;
	bh=4HHQNYN2sVQyZ+w6W+uYl+ISUCWuaF9q3KS/T00KVqk=;
	h=To:Subject:From:Date:From;
	b=SE6f1gsa69AvVlFigtGB/CIzU3vjnBR1pv0ToFD31kqh6E8IwGh5jt07bGzklD+x1
	 +3cX05m5PIURNJZwYnFPCKhzBorZpKrUkbHQwruMqJTwmof6yWIQaG7AwDSstcmzgI
	 WC9qIqZ7uccK0PGEB6oevUi2jE85mV1Fvq7SQwaKgCLYfHZqpzkrqdMCmzzp7xQoa/
	 mUacr2rcPPtRgNQxb6p685mYoszuLto3GE8JDvRgmYjX5rOWn9unTUl9XCX+YErnIl
	 Hzq+4dTdxF8mYOpkje1GmFiD0JutA0wAB8yKEhLZWx99xWBW/Gp3vlGiP6RyeFr6pA
	 2ndeDD7rVzkYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB55CA1009
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175689599357.14120.16821323478982415043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a5a0fde8c11b85d0b6d675a2fbff0bfaf4d802598f8a3d72700c4e9cf550108
Date: Wed, 03 Sep 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756895993
