Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B90B18EB0
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774824294; cv=none; b=iKEhC0XbvMseRL12AVbzn3ANdKLsDa7dcBfUeitDu4lr1r0G9532APIYoUexSSSeJit5oAty/kKrZx/Wj+2bZ59zT3FnC3Gbk1Vh2G0bSnUvr73Hn7cuT54/7BDkz40Wn7UezizcpUClXVAodUN53ZCVEY+JonAqKH7kK74SYV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774824294; c=relaxed/simple;
	bh=RUX/nyhFR0KnBOygu8zJVluyEcGkIZCrpSV+n8srMNU=;
	h=To:Subject:From:Message-Id:Date; b=O4E4TlWyC9Jj5j5IxVVxsCICJYKsVqiGPWQ8hWm9ssoqnPQt/B0HBUhrap9YHucI6uadYDZAAVHuH+V39BRg8I8jZyfcFfpQnIKMer1A3lFYb8tPwV5+6WYzF8wNdWeNcJo/quhHhJosfLLk2+qHLoBlaTffQugfFg8DpJGzWKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JsDyw4QF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JsDyw4QF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A26C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774824293;
	bh=RUX/nyhFR0KnBOygu8zJVluyEcGkIZCrpSV+n8srMNU=;
	h=To:Subject:From:Date:From;
	b=JsDyw4QFSlxmBfrS8005/96MqqbWjOlo81z5jZVgiYSChneUrsWlcCeIECieO8ZiL
	 +BcfAcSql3jPyfkOVKBCOlMhAVcprFSYBL8J/LNJqxj/9w80Q4Uaj5guvhkyjXv/zS
	 N9TCgZvGkum1eEWXPwuF+PKl7BacLdx9ae43RUv/ZJsigyKlp8gjtBVbGSxg+CQ5Ww
	 wOuAxf1F2wfcSSMgsPCZ9ow7TsklxOywDuNvSCW8eOo1grhXNXtFhbE5rZQtMUiEGn
	 VbZWh1GSbfJLp9DkD/1ryWu/fscPtwPDNDY1d5aK67oVUGEyHtOpwASAz6ymRDrsYN
	 VFCMPnb0CLVMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9425CFC9816
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177482429359.2983.14554703876044146607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 048b03cd4fb677f94cec1f2bf398d888e64ce9dd52395b2e4be828c5a90b9fec
Date: Sun, 29 Mar 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774824293
