Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5735A1C5D62
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738626355; cv=none; b=ANX5n5UfAOk+T8BcB45hHIywy5R0kUp3gsg/GfrY1jykQJg9GP3iwpY+pEtTyyYIRvE9mtN7wILGsbupcE10sJT3JbuzPqIrtPt9+9VbJJUYEfP6Se22K/ybjvSnWcvgVukdKqYCiBJviKcDS9GpvSHz3inaV1Cwo3iZeMOM+YA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738626355; c=relaxed/simple;
	bh=RzkNOoSlSy/A48V7muw5FHK4OyZpwr3Gz0UgoZ19IoU=;
	h=To:Subject:From:Message-Id:Date; b=FqPWPOvk8B/NyWxIgGyxKtG+BnaUYotCgwCtL1plyLaUFPO+QSmQORDtafyd4chSJIro2LfaJaqFAsPpvJbrdmsSsLZrGhO6FTi8N3cHI4+pCQk3FIxAHImVN6afML+KT+0RxEK3b/guGzGdub5dp+W7hzUl8chKLnYXzea+2F4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YODjSt4S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YODjSt4S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6BD7C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738626353;
	bh=RzkNOoSlSy/A48V7muw5FHK4OyZpwr3Gz0UgoZ19IoU=;
	h=To:Subject:From:Date:From;
	b=YODjSt4SEr6O3yh2b6Au07KxJuDMiGd2LHQvUYrs59N3nidDv8nE++8xhC1rOYMbT
	 p49yFz1YZDfnmv6KeZ+DABaiQK3PuH8uoY1NtTK50676QlUvGYAvLofyysAm0GzXs9
	 Sp+rV3l0Dju+0PcmOvjp/UPQl/EiNojC1SZuG2QEnwbOc1MGM6QQSu3tFZ/0TgPz7M
	 rmqEAcW30ZmdCNJ0i7lMXLKl2l1nZdjJYaPXC53F5qKBIE4J2YK7PmRpb5taJ5e6rw
	 MQ1H08F2+ChZjg/8xVqcHkovY6EUajaCjTuqZ4KwXywukzNBVGSTn0V99ix7mZ8Sbv
	 2vbYlnXeWPx9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D221C02192
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173862635361.29108.18032522203745105252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6004a45a64a361dc467f223e4ab1cf08a91677816fc891ce3dcc498a2762ed4e
Date: Mon, 03 Feb 2025 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738626353
