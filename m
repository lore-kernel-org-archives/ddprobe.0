Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2CC163
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759363794; cv=none; b=b6aByhU3CLtKtoIdHfpvrtAWU1wOA9H50ro5OXhqHodYrzC9zCusPPgGRO7pnArSq7OlvNVqU3m2gaqtU3qZG18+9AHh2kDtJG/3+k8U47UazEULauFcvuCOto9Fq4dIpe08ESph2HSEPUVidsYymnpU8rP++Ppsi9V2kcy6USg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759363794; c=relaxed/simple;
	bh=ySH8QnVq5BAa6vvtmUQXLmYqRN057WfCgpLssx6WBTw=;
	h=To:Subject:From:Message-Id:Date; b=Ok31+Ibu0mQsMdEP0D74aosH2PpLCCtCDbkQicN8Wntf8IrYdlL23dFV3TU1o1hWUHB6EK6hzieqp707hFa0NRV+aoVrmbUU+SSdTYydhb4Me/1JBVshkM3SgZpuG/9lsYsebEbYeyjNAPOwbd00VXnrDNDhfH+S68NnIzcWgmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u7qBVkKV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7qBVkKV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2743C4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759363793;
	bh=ySH8QnVq5BAa6vvtmUQXLmYqRN057WfCgpLssx6WBTw=;
	h=To:Subject:From:Date:From;
	b=u7qBVkKVU3FejAXSZduEnPUbUV3VW0ubmCJkAcaCBSyKKf5V+uvg8XFjsUR1iM+Nd
	 11m4CY4pJyPiRrNMRtcX7A2+XrNG1eIt3LmAffrpR4jlFw9ICzZP4oI9X9FbAmaUHW
	 HLWm8m4dyfngHR57dy/nxrGcAY40lhIme50eD6BtC9D4veUadJmIhV9Mpp/RSvcZLR
	 n9WJZWZrcATrVSpw2oVP0SORnm4aBgsgXNh7LJf28maPg5GDcJgMyAz593X8yOE4yo
	 TgPR7r1YpG/oRHxUoWirbQBXPc9iofpQAV31875jjuDrdVsp7M4b9ZjLOOxiYH0dh0
	 EqpYZuYM8udlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3F1CCA470
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175936379357.8171.115765041299969799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f6cdcb82427378a7e5e39c88f464e7fd31636e5e955a224897701095d64d2f7
Date: Thu, 02 Oct 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759363793
