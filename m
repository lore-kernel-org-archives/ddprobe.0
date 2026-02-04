Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6C1B81724
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770168233; cv=none; b=JfXRKql8OKYznwopOo3aWnqilAW0SQxkqFK2dalDdkWw9FhOjTd72e3AWHJma2tGYbP6Ikq2K6ZWd+6EZ27kK2j4IOHE3w4Yh7xEWZWnl0El7nOuSMhD66Umh3TG5KDHuZkKk6x+e6+5vxNkCa8zlss/ct40/thf/ijmnBhy4Ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770168233; c=relaxed/simple;
	bh=q/3Td9pR6FemcnO1qCaw3juTsbIYm9UCOVI7KWXvzq8=;
	h=To:Subject:From:Message-Id:Date; b=IMdIPASOf/26TqltLMCqBNjsD32E/8c2KzezxR+E94rBPf2BFRYTcjo49pBBVQEt+VReSNtWd2tuI+ti9/U+xvVd8GJKjh3yT2TrUeF1wjimjAfkV6wUpOjU19y5wnNE9yrI3DGUJrlqllokVOYTePOEehExGfY8aqNlzvgXaOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RFaiwfka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RFaiwfka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89B4C116D0
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770168233;
	bh=q/3Td9pR6FemcnO1qCaw3juTsbIYm9UCOVI7KWXvzq8=;
	h=To:Subject:From:Date:From;
	b=RFaiwfkaWS9g5vFXRlaRygwbvrT1tCKXZfk9R07gW128kQfLisMehZOLeUtKksSQ7
	 qCKnkDWxPxnjA2zJL7QoWFrNZGz7Is+xNy5JGql3GhaS23+AgQUW0wuG+IG2Ag6ffD
	 wALJqPI+n6HJT96KlIiQ6ZORfU4R9iCx+l8CthXK2j28TaLNCdie99ll7WZAjd1/VS
	 AzVjn0J2+qQliaN5kxtTPQKFBkE3gdvtNc8FbMyj1r+JspVMNXZiQHvzs5H7iy/vr8
	 o+/KNwonMH1iEIILGrK7YHHFYX8TO8h+Wadt+l4k8R3kOaU0XWiM7ppK2nzOaiWwCC
	 kgAOu/LXFVKFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972A9E8B387
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177016823358.3305.12516642232786736127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bcb7bc287b52891de621a701db771963c9bde879fda97b0ea0de925798b659f
Date: Wed, 04 Feb 2026 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770168233
