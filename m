Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB6915B99E
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 00:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741309134; cv=none; b=H9TNxzOLPc/XgYIvf/Pp+Vy5BNqRjMSawhjmr5Wh1C7f0Th95IwwGz02eFA79anasoz99OcCIwnNyTqCjDgGQUTj7sntXU6dIT66JyEmDmh9Ztt4PNccG3lOx1OuGW6oUybX/rL9pmRY/nZxc2Josf7iMhBQHsVUUFbi0Vw4WB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741309134; c=relaxed/simple;
	bh=beglAbjdFGwrdf0aX2zUucGT+J8Rle2jn+Br0iAN4a0=;
	h=To:Subject:From:Message-Id:Date; b=Hn2bifd32eD7yIRZH+9fbyqrcwVFVOBQeFwptA62Jb3TmUl6CE7Nhe1UMyPjR3xHj057i5EEVe4UOGIqvqXYrZtIcX+zQ0+vzA7bFP4uBODxyXJ9ND+lvUPQsLLV+xQXno6EsKmrTFJlb4Pr6NUo2Qmd2Hd+bViaFVqdPCv9cAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XrCpbl60; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XrCpbl60"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9776C4CEE5
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 00:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741309133;
	bh=beglAbjdFGwrdf0aX2zUucGT+J8Rle2jn+Br0iAN4a0=;
	h=To:Subject:From:Date:From;
	b=XrCpbl607wvFB+6Mbys4m32eFfrNZWTX/yWzj1so1lHOibZtC43/HrpbbYhGeIgAP
	 U7UarWA2WXXkVubLkMdjoqJas1CJAaHRJUW8nMH6GiyPgqZI0OGjTLW7uezEf1n+iU
	 t29Xk/v9yy5re7rUzR975RdW4EzmfKmvn4ztUvE1Lcw0usnDIUSbqdAKQpvc0ncMSM
	 2gR104va95RHCohVtOSRe0ufJMMT8FjDpmfE5rX1X1zdRZyGgu4cuJvphN6r53KiuR
	 o77Ih+KrfBtOijwlj9htWPSCspm2lzjX2HCkCs1yZTfG3q73v12xVigMgIqKh8E6A6
	 XFdGC5DitWcGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DABC282D1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 00:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174130913359.6875.3452862788273278976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60398a9196cb19abe35427eeb24e95cb124cf7dda1d4cbade7d42fd9ed196a4b
Date: Fri, 07 Mar 2025 00:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741309133
