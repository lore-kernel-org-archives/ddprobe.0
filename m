Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E99D028FA
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709376497; cv=none; b=oh1KvhQEqc8aEen52khUlId5EKVvBwlxC1QFRHXc0sXYHWz8m/oywbZz12fcNV5v8vlYWGC1C3L6qh/njokuzMX+GFpeMviJrI0WoCFX9NA8YrmbP8kMMpWW/VNfIYKzNGwQ/hEwelwNkKhFgutOT5lXb8FDB5fxEL29wkeieO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709376497; c=relaxed/simple;
	bh=QxdM2jCoRwnMYCoPeAFkNtmNAp01ijAGjJ0i55cWFa8=;
	h=To:Subject:From:Message-Id:Date; b=KPqXCHA3wuZ6FVspY6F6BIP5BHCpnEO3/WxT6D0TDUW0zgFu3qa8c5IeUNSK20V4C8MVR0L2e9T2Nyan6/NpBOwe+em8TqUR/7I8B2h2VAGDFQY0fSeDViNXtLpWsVWA9/zPRmb3nBJwRPfWTrYwaSI2WMxTp6GH6FLkcpOg02E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eeTlz54M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eeTlz54M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AB81C433C7
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709376496;
	bh=QxdM2jCoRwnMYCoPeAFkNtmNAp01ijAGjJ0i55cWFa8=;
	h=To:Subject:From:Date:From;
	b=eeTlz54M/+JKIdS0kbjvd/NpaHHoLW084gwC/V5ZfwEmpkuAC7xbf5Y8cp6uLhdHQ
	 PdQlgApUcyGdQkNMnO66zCiH0yr3UsKIbNreFj0mk9DCVHPFLI5QDFYAAU8rJKO2Ze
	 wvzJCY03y43v8RxZhuKrXLzFOnxhzEp/xe3hXAfLZRJFxAz+w81t8+52nX7q/5N3GV
	 u8MG3gqhhKTzx4tOq3WUIPD9y7z81AqA5A7PEsSKfyec3xzgzWLv1IipuJVloLSgpN
	 XU158AVNEbbwjV7a9tUL0fzXCWdv6l8bjdwEJT9sHAMzzUL/6JRqPxgf+wucl+5jGJ
	 FBCntDt/o9YmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C153C54798
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 10:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170937649637.20144.16069266151475061939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ab0c4bc7730dbf6ebdad689d9fec0c5589b41c602e43a8e0a45fe80029f7930
Date: Sat, 02 Mar 2024 10:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709376496
