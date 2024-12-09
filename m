Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258EB21CFE6
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733788554; cv=none; b=XaDnaC7XCjetGbtR6cQanK2VtlCfvaQaug2HR3zhhHsEGbSLl+slRAKkYpM+Y4yE7EInLzoVHZDhqpwilNfYt17z8c9/K1fw45LjWq1OB9EBwlM4z7Pu8IzPHbLBgR+E2hIVMJZklHO7xRbtus+isT9SbK9IMXCZUEbK00Lf7hA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733788554; c=relaxed/simple;
	bh=Wh+3VpuBoWugS4ObM4tW6yBpTRdheusXdcZf2w7hY8A=;
	h=To:Subject:From:Message-Id:Date; b=mfF1iFt1XVuPzuOJnN6NPDEIr/GMxfEliXqlFinnf2YSnAqiBdSS13Om5x9AxrpKkgUFS4vksEaiOfF+OQMyCavZTeGEFnzRWg+i5NcyzgHOhOG6/ZZbKMZwhv0DvyFdMzGn+hSbnqFv6yAUe/Lb7tXvYIc5us3Dcc0lR6OlIB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kTlQoqIs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kTlQoqIs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A43C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733788553;
	bh=Wh+3VpuBoWugS4ObM4tW6yBpTRdheusXdcZf2w7hY8A=;
	h=To:Subject:From:Date:From;
	b=kTlQoqIsiQTBAcUix8csmETmxYOcxqkcxlVjxwEhZyYE9YZDtuRdVsz9eLbDeF+oh
	 wn5XhIzR9L7ijGg5kYKL8nN0wQV73Y0CR9prUAVfz5jcnq9FpTo6KCW+1HMBrJVYqH
	 z74TpspaXDV+gy+wvV2/7IVkixlraNndeesrAp86V9NHWytEGThraQ+wQFhTuYHuY6
	 9YuJoPqzWV7TCi4usRRVHfRY0vqSOzwnIdSHSvON7p67A/oSyC3IuztLjYpEg7Bg8D
	 p0jPbpogivJzezI+LVCO5PPTKxpYRPKJDvhlsoK2Lnt+MeNJY47UpX2lI6wbHqULM5
	 agzvmPl3pK2Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9104AE7717D
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173378855358.5539.16389911825767270328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e55848de7a364e7050ea36945c84c6bd7c54e598580a571f2038b07421ac766
Date: Mon, 09 Dec 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733788553
