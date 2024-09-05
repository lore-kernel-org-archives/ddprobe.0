Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D30138B
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725516354; cv=none; b=Lm9aRraSThkbNwrQ/zELhuR1/EFuRy3+n+FFq/ry+JmWJAILAXtD6rjXj6JWsElRt0PMMCcAezcRJm7wY32wOI/TCCjy+AbCvDfRxV0gBVAaKXQCLgx1V5Zla0taW2A2TynbOCkhZsjc7aZZ0z/hKcPEK0qqHMOzxy1IKutv6Po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725516354; c=relaxed/simple;
	bh=j7BorNIWAieZRZGCytcZMPWAbB5aQRMWLWdzaBa+GCs=;
	h=To:Subject:From:Message-Id:Date; b=soJcPlLjlPyUvy9mqNYzIzqVbQeRugTwpsid8+pp28FwvnHc08pWpKkdiNl26WGlu4iOp3PxDDhehDFfzpKZpyjPcwoe5i/FeyQMDV3cM9CZnoB29xZCmj1kYhHi4VxzFFHev8wYagSFnfujaaAjxt/s060fqP03MkASaKYid+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GgYNuMWO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GgYNuMWO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B304BC4CEC4
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725516353;
	bh=j7BorNIWAieZRZGCytcZMPWAbB5aQRMWLWdzaBa+GCs=;
	h=To:Subject:From:Date:From;
	b=GgYNuMWOzq3uDQ1q2Yjrxd6ceUHQTpdW9D5luztqc/1JQnFVdSfFtHInAy+p1FReC
	 jmn51cP5hi2njv9L69f1Ldu5q/SVuTNsywUYOHLsCv1sGR6vWkkooAU4hvnjtpDXiI
	 wCtrWNdBvGwM9uKfDdu3VT7ac0cFGQYX9rC4AXIAoZDqlp95AsTxo0pFnwzeBku5rP
	 fV5V7IMWOhjVX58D1rgt8q36abyz67djG0f8dEp07zNeaod8ikWObrxFpy55UGe/pe
	 oM+1aPcXrgqDavGkN0DUZ5pK6p6Wh9e5g3o62GzRHbqhd0GaKTJn/i44XZwXF4yr2G
	 C5iZ8VcqLVlvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E897CD4F54
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172551635363.8583.11896733099503585354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dc3d56f0987507679569c54e85831c6da615c86d82872def3151b242c1e2fde
Date: Thu, 05 Sep 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725516353
