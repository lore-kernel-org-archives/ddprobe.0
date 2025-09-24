Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F97719D065
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758679194; cv=none; b=iG8rd/fXdcDX6A6zPd6dfn16eXHOWxBCBQrxtBE0nit2XVdmD376XJrkCYnatz5C4WEO6rocOlfKot6ZjtjxsY+MV65en/lZSdWYxk29oCS05lmozlJnre7Vaj9ck/wSRpqqkkkgr3MT8z73/R9oBB0tN6DuZFHG0hvBOmQ+9TY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758679194; c=relaxed/simple;
	bh=qQhbk2+y4zEUnSj0PArbXcvN91J05I27tVCexy75Ezg=;
	h=To:Subject:From:Message-Id:Date; b=PQVpxuNBroF5tCnbKnobQwmylUw/i6sofKqLQP5bE3iskhh6SntfrPK7C84yseJYtGSLo4a98pN1GeJaLEHP0cTvTABhqp7Dm+soVvg6IJ59iERPoD7N+iHI4qnV96wSBs9bCybjZKbpieaYYZx+EOUkJmB3uGbXDZ9NNCSvuao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KdViLAFu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KdViLAFu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50D6C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758679193;
	bh=qQhbk2+y4zEUnSj0PArbXcvN91J05I27tVCexy75Ezg=;
	h=To:Subject:From:Date:From;
	b=KdViLAFuhMu1er2Hxi5OtH84bacXS4gs0x3SQh6ekG6uNKvqG00wp6eYTy0qClvb3
	 hZJdAwFCKoAbg2jOFYy9JZcfwZ1FAgFx4OuGZRy2KcyiQTzrK9Mo5RIl2U85I6TX5W
	 V4P75EU9WyDWM76Xtpv+9xaBAlSk185kHpu93J5kieY+zXFviebxenPswE0bLaqFm2
	 uHlCIm5zapH6Ry0eCrfjuRrq0XQUYvDw410iOaTrloKn24K0K5lVU9pUyqef8WbhSo
	 lTYkcml4spu4Hgl38Rhfya18B62hIYcnTsoT8kbw04QsEUW2IQtZwlMhpohNGzCQG5
	 9K4zPkkSNaJAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9095ECAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175867919358.23875.4813418089651467713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b15cfbbb857c1a044f44a36e0380b87a206fec415d68a56472ac0d641ec93b6
Date: Wed, 24 Sep 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758679193
