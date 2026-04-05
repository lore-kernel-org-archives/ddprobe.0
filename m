Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B661EA84
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 14:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775400334; cv=none; b=m5AwQlBHECU6iMfKv7lvsZGlrBuachYxR+L9JtjFzrypiIC6wWvUlzDbywHaW91FvLLe52rQzZQe7gZPKVJwHOZkt90l9uvwD5AeJnzRO/gucZAFpfGG7h/9/8zKfcpfTEgf4DcEU+M3Os7p0ekVmC8d/pBs2Sh75JXgNqnrNLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775400334; c=relaxed/simple;
	bh=clPbeJufnYaqUZDxuCqcEd3bEhOCI9YvHoOSam3qJvY=;
	h=To:Subject:From:Message-Id:Date; b=mq+dcBe/fP1RWCGdbc0vP2ygQhz6/jQZ/OMtKiU1Vz468KVvAiHa6ZTkOQq0Fw+7A2xQNC5srqnRVVOCUKefQG8A9E7jox5VkI6SdM5QZaw625snXjB0EGSANXalDJYy1jFATImAJ52WQpn3VMr02aTvJyRWlc/6AldsbvFYzOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sTDjiqKJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sTDjiqKJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA670C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 14:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775400333;
	bh=clPbeJufnYaqUZDxuCqcEd3bEhOCI9YvHoOSam3qJvY=;
	h=To:Subject:From:Date:From;
	b=sTDjiqKJ1djANvzqoywE/MTHgogHlSD2D+Fxo9zDE0rFJhZoUWVjHX948jZTDRvWC
	 SvFg0r++OWLtptz/bFK20xMDjQBEux063zXah0DkbMcnEt5O+L5iJHFgSTUsg4xTjO
	 ThlMWTPNTv5HClsDlpLlbuIuZTUYNbDi8p06IuXMLz/6A4e3331gei0g5gPX5rsrTM
	 XSFQPhXJNQHRC2xELK16P7H60fb2bN7t366M4H12VwB/xIblwOuxPUsV19buqWH3ZZ
	 hvYkFX6TDbZWI/3l8IcwDRWVgQTauSSO8g6iq7bhrqd1gr4MvQIZdVMArW4XeX3siM
	 W5XlyhcKM5D0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3793E9D804
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 14:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177540033370.15888.11851910955164920551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17814797907a66df6befcf477f2a979271ef8d9f3dbbdacb9920a6f065b37cd1
Date: Sun, 05 Apr 2026 14:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775400333
