Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E87D26F2BC
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 10:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765188174; cv=none; b=habBk7+7PJOHj1r+b2rlPgMXinSZOHnjODCDQ8REhcIu5GnQ0k3h1Ssf3hmQvgsrO5EFaDsffZo/mv2t2nyj/eQzYpm/CVvgUUClWuFVbtwU74cN89pSAQaiRcVS+7kM4lwdqq4gAygP7MMDRc9YWvHCesrpT2rVFVRypOJJCyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765188174; c=relaxed/simple;
	bh=54CIOCSQ/8dhZMcBVje7QDBqgne+cQpgzzc428SfYRM=;
	h=To:Subject:From:Message-Id:Date; b=Fs1VmcfInB+KZY8GFYr60QXArF44raTsAsp2i+p4iVp7tr9nyFSUnNh2prvWH9PQZmz4a2uB0oRmy40wHrC6PcPtE/Ocwfz2Z9VJ8HBhV5rqCxgunwf1C09Z5C2ZlVfMN6PWGNCH7ETO/wcL63iRhfA1ZAYhMvkehRZ4T0DK9D8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ejWuZ8pL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ejWuZ8pL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB23C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 10:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765188173;
	bh=54CIOCSQ/8dhZMcBVje7QDBqgne+cQpgzzc428SfYRM=;
	h=To:Subject:From:Date:From;
	b=ejWuZ8pLDwaJkXB9H7lBaVrnBP/53VQdZeroMBixMJO31+5GMUxXY8RD3og8vs5kI
	 IQTq0ZXvsejaYClzm5d+8n+2U2MQCVB1ei3P843TvW18sPgIRRjmXwzEMzpylVlGzU
	 frsxdGSlkJ+2qMeYHVu9sa87P5YYGtNYeA1v1ZhQVjRt5WjpY+6wWXz33rcxtKOLpQ
	 g3MO+iOKtCHOcVV7/LyzzttRVDbhOZzCcF5ln2dvppY4rmvWGQHKwk4nmrZSpNjvVD
	 oe6ECZTKmb+D5IfWvKyEKlMiaGwIirczhPtkcxi9g7c386w4r8TtsWSd56BVkaoAG2
	 3QoBP7eCxzIiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A1CDD3B7E2
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 10:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176518817359.6621.13357214959651571406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d68f15e16571cf503dc8a6e76f79fe68521655789a393c0c84134718c579c98
Date: Mon, 08 Dec 2025 10:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765188173
