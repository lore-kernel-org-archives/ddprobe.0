Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62E42DDA0
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 01:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713921023; cv=none; b=qu7kEXeh5EnxjCj8ebOB7HhbQw/WNo24GPqgOSDkSbAqSX6jRvwfg3jdIeu8dT+wwstYPBqhacCS84g5tpWphV9XUykOYobQb4suERV9Xb4gJNlOwKgIR8+IEExgFEEqGQT8v8Dc9mLVyMu+0f96x0VbRydNg7KfCLaBjHCiwEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713921023; c=relaxed/simple;
	bh=2td1r+ret9teBur8D5ea39izfMfT+RQHFdJIcsONR08=;
	h=To:Subject:From:Message-Id:Date; b=UiwNhEYtfHPximBzcupotwJTSlnnH/d1TK0Dj/yoV8gtU0EXOv2e1ObWaCOtgEOh/CtOTMpds8FIBmiIKgCb4RWNgukjPAB9JKXz4ItE70ApI/HY6fn5/YNLXOkiwjszo9tOrIuX/ELMkHkCFcK8JxS5TZOXN1R+KiWnw7PEXVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R53ysaPE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R53ysaPE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6623C116B1
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 01:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713921022;
	bh=2td1r+ret9teBur8D5ea39izfMfT+RQHFdJIcsONR08=;
	h=To:Subject:From:Date:From;
	b=R53ysaPEQlXcFfuDypjkjgseiSQUaey9gyjwu29VBpbN/ppwn9ePS9sYUz0+DDvVM
	 9mdUTD2h90xPX/AAVz6ABa6wjL/mYQ9hlVFL4+SEovBTUkSQSj2iaOZIgNO5ULO/+m
	 uXGZi02uEL/7F+usNt0hjTDfB11HPMiD9lWbD8WuriLmt92UxKYxwMw4vjHE+xxytl
	 gTn7cl9eJL/6aqeYZPyqDFetfwlv0hfMYaqf9wknE0j04tCmbnflxBoVFRUGTmZGOg
	 tOtaX9raodxdIyDtQbric6Kh3fW39Ty8NbA1PB3RGnaFuJ33P68IzxP9WRFnkkiOY5
	 EJIwesMJzOGrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2635C4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 01:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171392102278.13538.5111815716298067701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fc375ed384a8b879a56448295a43a6366339df0e59a8390cc41226ff3a47114
Date: Wed, 24 Apr 2024 01:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713921022
