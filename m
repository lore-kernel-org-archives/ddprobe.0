Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234D226ED5D
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 18:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765044774; cv=none; b=jTqeOG4EkKDzo8+yZAYRfGy0tCqsmMrsTTm4Czmg8mzOFuT/buYy5H0maHkJurdvZzkMRY5xAeOE813otRDo8EARBJ42fywchQhPq0GV7GZxnCCgFEwtb/zYLkPOZeG1CI1NxpKG/DmuRiT6WOYC7WD06PzdGaRdSH/3a8rlTDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765044774; c=relaxed/simple;
	bh=jy73ieuuvybzdnKp6ZT8JSqwgqpb6uHUyH1RUVOO8+8=;
	h=To:Subject:From:Message-Id:Date; b=MnFOMvLsy6XwxCP7VXco7nsc/kOGcdMb2lHtvVCknG/N8bk5v4Yvp9wEf0rkx0YIPNegT7O1jxKaecgilzvXT8KRAumhgQP+zruv7cnStLmhmn7lEyW+YRwARsFhJiBhAiTly+xEtOb7kP9jqlmgjKX6MBw2hVRd90lDsFh0wT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D05qpNyt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D05qpNyt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AF1C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 18:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765044773;
	bh=jy73ieuuvybzdnKp6ZT8JSqwgqpb6uHUyH1RUVOO8+8=;
	h=To:Subject:From:Date:From;
	b=D05qpNytSueLNngstpE000xHbIM3Le/I8smOD2OEW+nL/WKeKQu/VjbVA1yUAD3m/
	 ujUabfv4VjK2MiOdjfCkOE4dB5WP+4pvb0AiKyzXJWTK6wcOovVoE+lQExGTquNHG8
	 meUFJWvuvz+vLciKPY6mI4Pzv9NOCC1gwxOMcDCb9mypVqfHjWFbTnMBKqZg4CClct
	 KXwtMz4xPS0H3Ps4ngM9i0B64Wt4twiEafYM27neDK1FNqmPdQFmiRDnF1SORqjfGv
	 DKad81VeWfhmmKVa4aDPiGCuOeWxPWyDATcDdzax5ZhHAYtakD8d/Dnmog0pt67/Cq
	 UZgP/5Kmik5MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956CDD3B7DB
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 18:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176504477359.31091.15383266213004589492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cc7b870da60026b5bcde0d080e7c08cafc46468624711e9c7b38aa0e30cb565
Date: Sat, 06 Dec 2025 18:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765044773
