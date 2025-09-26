Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1334617B418
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758864594; cv=none; b=Qdc8Y3wKDJgF4UsdprKnbfVGWDZ5EEMxC324SZ3WH7IfX3/qtML2L2ztWjzbs8OKxGflgK2Lawt1ZmzKNsVup5Dua3tUZwGY75nnBw89363Hi0Gt91jleXiWXkPKRC2ZhifRpwVRWgr0Rh3lwEm8xfw4uruXQGn8uiTSYiyCR6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758864594; c=relaxed/simple;
	bh=VKfU4AuebhMP259hXsNy75fZ2jebbfFFQFv9gWR/Sd4=;
	h=To:Subject:From:Message-Id:Date; b=A18ksz9jG7tdwm3b4D/72RzguPbUShbzh/pSs6LEOtUbtwGMQnCzFyTfyKTYPtUy3SeHsNCP4mjq2YYafW8FietAi/Df4w2J6MF114v8zBCXdKvn27TPY68WPVOqWZBzD3vawUX9dO95ZypPWa5ipCFV/iPs/8c8hvIRNTy46FA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EAz2H4Mr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EAz2H4Mr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3ED1C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758864593;
	bh=VKfU4AuebhMP259hXsNy75fZ2jebbfFFQFv9gWR/Sd4=;
	h=To:Subject:From:Date:From;
	b=EAz2H4MrcCEcesvty2JUCBmzxOlbTGGk0oMmVZqouC804jgkWBkfcSePSc39kjb6l
	 AKPFufUyqOsVfInR67pi94ma876xT1CbEXrdloElHf28+CmIn0Wh2uQJ128020EYZ+
	 hP4QH+63GhPMyAdykmXUtytt18OtX0jMFJdR9qCluv4rynbuESASlqJcxTz3MA5J5k
	 RQJ7z4ogh/52CA6KRcpyL85uJLfFMVz7jt8H43MWSGRW25zJqfgg2yVLyrckKXDef6
	 MMEJzyITzK9PIwFEzYV2R9M9q5lcOVcBqzA2Mo5r1mO3QyTTRSHavW2sI3F1JYfLKJ
	 Cqxjq60c5t0Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94430CAC5AC
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175886459358.10800.4384055112310738650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fa3f01717f66fddc3248b27d04f8dd61583cec6ce7370675b4175eab21678a2
Date: Fri, 26 Sep 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758864593
