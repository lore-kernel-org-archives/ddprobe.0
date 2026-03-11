Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2FC523EAB2
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773192294; cv=none; b=l0p1t96jUtq2ld22bJ7o2/0l5OYCN4/7I2ts7ixyZmBmDLm0WZVFpYW+ANR5uLcZ281lfJNNYD3EKYsluIRQ7MdkGsXn0SHXJui94A0OSHrYorCM9ysF7MfLT1liMDIM6SPYDyg72Rl17rbVgno+Dy/oxJDLUR836l2cMkpKGU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773192294; c=relaxed/simple;
	bh=cV8VHzIiztfO9ZQ4nl/pN7pneK5g4PQ90QvAhxrt2TE=;
	h=To:Subject:From:Message-Id:Date; b=pah1oD+EVu5eoVkGgz2ituCln/KgTZPkfXH5W0bTPpIdQRePb7CBeoyd5St6D8qJAis/pDk6x26GQbkm5lOnoaXw/e38vld2sjtDv5qoJLPvYmEGtwb4ZvvvrP8iQOx3/5FnymykgutbFDJRWcXWaSu9VTK46WDLhVMk30zwcLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XkdLF86I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XkdLF86I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A004AC19423
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773192293;
	bh=cV8VHzIiztfO9ZQ4nl/pN7pneK5g4PQ90QvAhxrt2TE=;
	h=To:Subject:From:Date:From;
	b=XkdLF86ISC5aNOXgX3YnzrRmKvwzFIv6ixN0IdkdhppMlNm+kkVNJ/cNospgt8SSh
	 pJsmpuDNXdnFUG6W+WapiS0JCZf8Guv75t5DyRTWFJNfo0Yz2AMCFr4xVB4CHNN/bb
	 v32JPtbcdDUk7xCysJreWSAC8Emru5wr9J/j16uMg50lBaNc0NGeKRKZ1YP4CEahS7
	 Cnfo3dHOyOdyBMVLWVlUuwnK4RusVREWGSJETzZ1mfHh2MHtDP4cwPK3oLsZYeJEv3
	 fg1ccr5CYEV0aAPnXz3FBSJkGsRjy+X9FkQ14qM2KjqoofHDpIPXTfbESHoZIPoDkM
	 NbMAKITS4c8FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED9AFD88D5
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177319229357.25478.18041182612346861958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2eda20aabc819aba1cb7e4d9ed4c10bd1bee41f3548c22f1dc643779724d6cb9
Date: Wed, 11 Mar 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773192293
