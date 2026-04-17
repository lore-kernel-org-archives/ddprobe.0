Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33CEE2EBBA9
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 22:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776465454; cv=none; b=h65Ap2YaahjdS4uHHhUrafVfqJlmSUZWHgPYvnvvHK+NxXNa9a71sRhrkbfi50Dw+seIwKniACO3FrhLV+/B6gQpdpeQPOwUFt7U91ozEunQx0eumEKLf+Q80HXcr6TEeh4ZE9wBVnw0J9pKr7uKsbhsirDaZp2Oe7FFsm7yRGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776465454; c=relaxed/simple;
	bh=n9n0VMZyi8Fpn8LwcRtjyoJ62M2YsQALcONRcafmIbw=;
	h=To:Subject:From:Message-Id:Date; b=Qw1U8QAhAuMcPAVHvvGBmhC/PAhIM+FiSgHSG9rgDGdK3e0Cv4ZA/VakqcmtiCE117NSvKXOSlxbxA6NYNZqOPd27nSz7mQ1wWw0s7q5Lk6Jt8RYsfHDgk6kSsAI40cqN8l3dAscwkWxXqBwfw2HAPuhcNFrCZChzuNQ5IrYZSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tMpXKSqf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tMpXKSqf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C41F2C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 22:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776465453;
	bh=n9n0VMZyi8Fpn8LwcRtjyoJ62M2YsQALcONRcafmIbw=;
	h=To:Subject:From:Date:From;
	b=tMpXKSqftRn5xVpTmhX8C2Ry7sQlJZyjQRpcH+tsrTNfZuayT0JhkfeR9pn/qUwxX
	 46M/QA67EAy9VsaeKmW1YkrRcH2NYHuGh0w6x4aeFG+Qd/hg0B5RHycwySYeyXK0Bi
	 /OMkSt06KwZB31u8mGDYDNjo2m4LgIZxmfKStNb+EefJhG9fdCfEAvPIDtMbSJi3XW
	 ZtFBbeb4gcY74aAVLCfk6cqHGceV0J2a95kmIrLSwbYZJqB9Fvpn/jdyo7u7nPhFXz
	 MH0yFXNzqP+9w+eKTVOtLm7NEmiixxXc+CVcTnndQYgEKSHgrCrIzyF36eAJ0iwuex
	 hejDlv/7NSIYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF866F99C69
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 22:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177646545368.5893.8654449030595308226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56302e682adcbfbd7c0eb6584a30695aa679e433e59ab021c0e6b1193d9a5b41
Date: Fri, 17 Apr 2026 22:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776465453
