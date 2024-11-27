Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B36433C8
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732749354; cv=none; b=FfjActGaaEJUIa920FVH7f65FFcs3K35EBfAscXrzZ4KYWbvMAn60mw7gSwwbboip/SHZqxZj5wk+fMF8rgTfhuPhvvbYz/EAZLNKkq9JxdzbMsc4IfyRAk4awihrMXz1a92V7/680/lKqN0IfTxiYiZez/HC6tRhLLWk9wqh7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732749354; c=relaxed/simple;
	bh=uLlJ5+cDhDvGUYtXVVLTl3alKpFH39UHaOrMD3ueIgE=;
	h=To:Subject:From:Message-Id:Date; b=Ksum7/ct0rKnh0CizEKQgaeMiFPM0vrA0XnnIE3hfAfXLuLPhYbQFfo60sgfgdqfw8YROVR3UDf+tefJRJyvDweXZLzofuoMa8r9Gy8vaktZzB53N5o4tDMGJt5fSBvW66RshY7zh3J4vQ8FzsQZTMTr55kWJc3okkVkOrCUXq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bs7gVehV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bs7gVehV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA75C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732749353;
	bh=uLlJ5+cDhDvGUYtXVVLTl3alKpFH39UHaOrMD3ueIgE=;
	h=To:Subject:From:Date:From;
	b=Bs7gVehVVw/gFd4e8oJsLW16jdXWlvSjF4kyCEDzThTCS/yBXsR7vkZcD0FUxm1hu
	 X7kTL6iGA0df40OtwlM7IwIFdxaAp0i9sIK2+fSPHCVUXitQIDodrtp9Ze4zTLD+xr
	 vKDQtmmHMnTW9Rero+sDVmIW2G+EMGLWss1a9IAU/Fbe8i+dWX82Tu7WZ91kfpLRt/
	 oxzrLOnxzoGintvDn/a7EmV1FC7NKeABG+JyhWBt0kK94/O4NidfTXvemfrTLGS5as
	 TzbDUoFYgvXT+wWT3qReK6tqkn1wkN7jqIUFOz8HTbaxiARbwyJf64vjWhj4S/Vp2o
	 x95o51ykZJDtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD1AD6D248
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173274935363.2762.7252577994479439913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6667b6d3d6802c608207fdb29eb2ab3af66f3aaeb3f39aab277a6f1d905d0627
Date: Wed, 27 Nov 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732749353
