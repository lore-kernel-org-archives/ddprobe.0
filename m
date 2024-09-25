Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06788156C73
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727258754; cv=none; b=ZRpIzbEK2MjaEFEc/JYbEd0nePyx5NVu2kJUTCUflv0xyVUvx9Scm9Kgqdai2ZBC5UMxGk2jD54pIA/Te4SfCW978Kp1X+i8rhHyIGQOSX2WU9pjlDM0gJ5mOFcw2egv9qoMJ8q/CoBmxehpdrENp0KNNw+EwgoXxIgveRd4+g0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727258754; c=relaxed/simple;
	bh=Oqxm8Wincg1Y8cJ8ogzoi8vxhejPbm90gitNbCHRqC4=;
	h=To:Subject:From:Message-Id:Date; b=iTsgAUKAX9or1LftBvt0uIdDgaHTPibNBpxVqgWs/b6/81i7VG6A/OClqbgYcPUteZDdhPyGCozZM+cOH2rI74IEQdEB4+l6Hxh8u+fviQZM0S+DEJYExuz7lZiVQAhN8wBytNjrql1TNV0/9me5zRZJIJKp0GcxZrCQhce+QXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ntbUfn/d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ntbUfn/d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF2DC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727258753;
	bh=Oqxm8Wincg1Y8cJ8ogzoi8vxhejPbm90gitNbCHRqC4=;
	h=To:Subject:From:Date:From;
	b=ntbUfn/dVO/VeLDu541P3FSLTH1IXCjPg+IiQXdZCzgierSJb27md1cnJnUykee+1
	 EzmOqkWGrVJfDU014/tafwH2PySsN37tkSfdIyjug/gif9rIWgmNTeJ77H4D6s3BAK
	 jtO3Tg29iPfUvIOGbQMAegqh20wjG+6zj7ZoRorHXIpIyAzFxzdRiGMd6NxrVZUBTg
	 XcYL12eqE9eUmHi1smpPMXzTMfjRUvfTpWcLnxhpcINSVcGE2x9qbqxelOFy7J+yON
	 pVodptSK5EzKTtpHlWPQGy1Lyr1X8Sq+YoDwgXiymxncqbe3YOF7X27VonM/0ppfRI
	 Z7HXA+FWpXBoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90828C369C4
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172725875358.28026.399903468531570783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d55ff60b743250a191e427f3ec00f1e0c0f5a8c9876cddaf3dfddd02dfd0d5ab
Date: Wed, 25 Sep 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727258753
