Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E99825229D
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754687394; cv=none; b=Qcbv2L+dWWH3CVjDJINx3Zh7IwicWfpdM9lRkUr58JHTHPq5zMZVRbgFqEK/oEAqugIOlRS1uepFowex0A3YOavGbKbhkkiPYGAUnj/pRAlqDckaAW5z/ZsYy8Ms6Acew9w9D3xnEEHQiccfcy662Y8rIV1Xmdv5XFwoHqlVUdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754687394; c=relaxed/simple;
	bh=p2+pQSeqJssFDecbTr02iCpG8Pj9lywfVIIFWBjEaJo=;
	h=To:Subject:From:Message-Id:Date; b=Kq35iEZj3pEShucfsnrtDcPmqox7pAXgbQJBDCx3/Wy0sMZ50FlkwqiDmJtaUhpSW/5m++HPz/R0UEqdk4YUHPiTKEP+twhlP7RQ7rzA6Ta7nBtyqUwTjlH3wWyNbv6dbdiwA/wmmUB1TOAh37oLdj+3Wj8rlwLg6QohMl/1x/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YjSAIvrE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YjSAIvrE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15CDC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754687393;
	bh=p2+pQSeqJssFDecbTr02iCpG8Pj9lywfVIIFWBjEaJo=;
	h=To:Subject:From:Date:From;
	b=YjSAIvrE3bMGoP3tJBWXO0SuzNGkibi4L198ijmB8x+i1lXK8YzUC7oBKijAzSgXX
	 vKjxZvvdeTlh7OSaYr8yyj5+YkwGbKnsIPtslFoDfgZEzQ85NHJqws1wIBAsgTr81X
	 0FXPK2mtpxYjuRaVcg7xfwLQq2KBpNenEZA0ozPi76u5NTTrU46uNwzQ9zyDrxkhI3
	 /9TpuyMGwYoHdmx+NIuPnMqhzuky6kIMW2nipmocru3k29hO33WbfbwHTZFuvlf57S
	 qIbMzEOUa/y7/NB5eFw7ygJQsPaI2sDDlV4xl7jGfW8evqFHfVrnNv4V9RE2tWyVus
	 xWkGy03UF0JTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8CDC87FDA
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175468739358.11652.17683592811438104742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3047334616eb96cd7ad80c4fe6eddc93410848764a3207f565e9f67f31b1e67c
Date: Fri, 08 Aug 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754687393
