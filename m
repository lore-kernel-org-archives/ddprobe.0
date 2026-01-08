Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2127E19E7F7
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767842034; cv=none; b=UjhosxmUqH12teh/vCZfwRzvADHlmsNTTPs/vZpkfP2wQQBRqFCBS/D3rBZ/H32dyv7f+TtfpimQp5YhQDHcbt1dZTbyJPwAYcg4ZMPQALBo3nxI+XIy6Dr6vjMsemDrNckj1JO37V+7jaDfPeOa+G0ZTxZToT36DvM110Q/06A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767842034; c=relaxed/simple;
	bh=wNxv9ObPP4y81IHMgtNfKffQwR/eMt67x7iyeMK8BTI=;
	h=To:Subject:From:Message-Id:Date; b=Vsfiq4qfc7aLvgIkge109+vnNec6rY8KzeZKsRRqDAN3PBXZ7hQ51BJvCFvG5O6hObfGIUqx02T002vUMToXf8eKfQv4fNrCNIY0c9eotBZ0HVUo2BJ5iUXr+jfQXTGt+q+Vy5ZGPEnBsVOikoRMzBYojfBDv4ShhV4ofTMUSB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y/DLMAVo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y/DLMAVo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E79FC4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767842033;
	bh=wNxv9ObPP4y81IHMgtNfKffQwR/eMt67x7iyeMK8BTI=;
	h=To:Subject:From:Date:From;
	b=Y/DLMAVo69Zn+E7DIQmTQI9wunEFFRzshwuEErvKO/P4V3i7dgSVKWdKYMo4O1nlB
	 T4hYYeaYfmay1E0IwQLFRNUXkAVDyWnejWHE2sYfN+bsbUCk99w3wx/oMM8Uh01v7W
	 0WcoEb8CRYo8XohopTX2jbkX7Ffh028UUfQD+J8lJTkLsKtN87dvMu6BCMgYFEAxYl
	 A+hELTFgcqQ/UruOk7BOfdM+e6x/awMh1sObI7bS9mrT70XTA68rI2E+IYClhuOkui
	 BEf5D+wfghT0fQPQMYcxJr3MBfhfPTjcVDNuoW0bVWe4pihqYUypJ8D1DIdmITPAAC
	 ZvbVEA6CWgj4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F44BD14899
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176784203357.29686.3087020991724107972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11335299037b8ce18926e0e2cd9e497a706fde9732699330aa9d8876bad5c2ed
Date: Thu, 08 Jan 2026 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767842033
