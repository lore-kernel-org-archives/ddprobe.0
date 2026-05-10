Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 994C8317166
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778438434; cv=none; b=PmHEI9U1NGXH8XkYN06JKCMZv/c9G11KQWeYsnDiozIRb259nVAfqqb4jFT+ODN2hfROk2XFUPwwW0y/q1XGX1xEEC/KelAo1ujUhBK9ZVZJOyYlJJzE9L+WXRY7/cU8+F2126BSI3rNaTTkgRAENOA5JcjwpBrak663+Le/lfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778438434; c=relaxed/simple;
	bh=ywzw5TVRkvXq9ejY+KYaM+IlJWwu7zM1jSc4eMq1lsg=;
	h=To:Subject:From:Message-Id:Date; b=oTAwM50pN4vFLx6OqiVJhgG2tn0rgPinYDJ4T5XRhWlBnMxa0daXHkmaR2Us8WTU7s2w+D4MT1zASSzKoYG6MB5rIXNSd9tTMRLyM5YkFBvEJkcD2zYtDVdpX3UDvRJ6andVaNZiJenmRu3CCXBjhNe40Ug1foYMS/ZT4AuLI18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rlraZbPc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rlraZbPc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D289CC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778438433;
	bh=ywzw5TVRkvXq9ejY+KYaM+IlJWwu7zM1jSc4eMq1lsg=;
	h=To:Subject:From:Date:From;
	b=rlraZbPc+rW1QJraoqnJbLfy9GNS6eQfUdA3P/9Y1olC+Ip7KGspY13JHaalI0Hmo
	 0rNbx8vUaGhly5bv2Em2VC6Fv3we1Ifz6OiXXltdcji6JN9G/iPAURrR/Es5M+I4Zn
	 +urNewfZiK5VUJMq9HtcH9pKPxoZw2VXwu5PIHy8z1DfpBMGLXByiDUnkhbfd8zlr3
	 aLsAQX2zZgmeAAr7cT9DALIGM1PkYpkoJRROfK+1iEn6Lr45z71QQkeK9CwF33IuJo
	 738KpHOuDkM6kOodrPdDjsvzGV6eYEWghY3WOWVRqY5DtxcVlMkGXoQjgRj6ZVBjgH
	 3We65fDcwxW5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE87CCD37B2
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177843843374.3220.6532640048165692397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a98a082ab87c8cb2731dcd89c2dda288dc69ccc29ab387efbc443463ddcacc67
Date: Sun, 10 May 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778438433
