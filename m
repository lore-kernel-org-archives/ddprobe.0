Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42675CA52
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759164594; cv=none; b=C8LbMjjCP9N7fWTDOm+KFclDpP9gKZMPKEIJtlm/lGvyGBy7w4Cetl78GVQ1GWlWjK5Tlnz4Dd24RP/JaWODnwhlddbz0CmbyvgwJFRpzM9vY5+YmHs0JjKhzP5HV1wjyuyn9MgC7UcZj7u0ZI9txGjEIN0ajE2jwDgPm7pyVlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759164594; c=relaxed/simple;
	bh=PtLPCOqIATBaHm1vtjjhGZapPJquarY9AX45RynjPbs=;
	h=To:Subject:From:Message-Id:Date; b=YbZiaKNBo3YO1JNkhLoccwArFenXv3w6CiJbNJzIAi731hvfgfUZn+GJ4+aV2wSR0A8KHixBEdzPq4aJiZFGwgHVLJoipNSYElMTvrXdqaZxO0CSaDteyVmFyp4xkoP6OmlHmz6pdSmFQSe6NEnsnhOzM7FtoFp0QM0PDxlQCCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rtmUWUY5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rtmUWUY5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC12C113D0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759164593;
	bh=PtLPCOqIATBaHm1vtjjhGZapPJquarY9AX45RynjPbs=;
	h=To:Subject:From:Date:From;
	b=rtmUWUY5vbGeTWKqvD2fTefD3L6sgm0VHDKH7WCsNPWbHdOj1i4Jn0LxKONFjsWmz
	 7ZuqjLjeD35b1dM9vAN+kg3FdVKQ7pyHbGwG4Y1LbjEV836x2OjHAwlTObQZYcSk5c
	 nChrGdK3J/pd3M9DsSx0w+ER6ZCzybqvCCxXGiBn4T/GwkZ5K+5wYip48BhDS38D+U
	 FFFYfUoROIpzJgEkhaTd+sqfuLp53ZRyj9I8NA0OldDix/LnkfA1n2HvzfzqE+ZUlx
	 YmxDQakeqmNXrzcjHcjmMjiWJjz4iml4A40FbwaEuXiIF2kjaxawRPKVx6nU28aW2Y
	 CECYiWpNwrXVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EA8CAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175916459358.6964.12162489047895095235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c1feb31ecd195c229c61e6e6b4eaa8cfe67ca3001656c161df2415692019370
Date: Mon, 29 Sep 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759164593
