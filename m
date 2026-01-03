Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B542165F1A
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767461034; cv=none; b=J2W0DcDgiGA8hXAXhDfF6gRWsfTm5Hyjbm892gq4oBTn9TkmI+M5eDRITNBL2j/hlHBfbJLJ54VcETyhUEECZFtr3mUF4yFHoz2ruICI2dcvKgzx4ej8zHIeTcPqnFdf/X0q5VR2hdNCbt8o8aO6Pzf/WZa8kQjQci7bZRvrWiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767461034; c=relaxed/simple;
	bh=KcKXL4oFuk50d1fPtC6CugYN7mGv/j2M7jjjhWWjvlM=;
	h=To:Subject:From:Message-Id:Date; b=Nolbc3aqOlg6VLZRz8a3pg0+aLmEGc1ENeGfKNVCUzzpKuCWScUO1TGKe46LC0bWTdbJeyGWPpxjeWfYW7fmiNLJqo5iodnrLiytAGKZdaHM5jNc9NDLLetxtzESeMf8jHRtfEt36ZDV2yj1HZdU42XOjpj0FEUrJzvheCu+FHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FD/SVik/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FD/SVik/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A057EC113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767461033;
	bh=KcKXL4oFuk50d1fPtC6CugYN7mGv/j2M7jjjhWWjvlM=;
	h=To:Subject:From:Date:From;
	b=FD/SVik/RPr1gfHW5MdLytzuWVKOhxEUgZuA2u1d5NUWoYqgkmfIsHh5O0u1lZN0m
	 6EAKFHU64XX4Db80clyuVpCU/jjCctFp3VT0iRYnRCVzy64TyCDvkPeFyaTsX5x9IM
	 R7Mq+DRCzAfAXHhlMpzo9ASUuaxhsPZn6lGNvpxrBmp3hnl13acqRtQZGKWIkCRqS3
	 IDSnlsj0misTbCV+ifev4/7wsjKQO7aFoxTX6Jg/gDkiKnzSLaPfEQKqb1hLiD8sbd
	 x8caEraD59T8Mesl7mavo87iXcZhpzltIw9Hx6XSfOiFqbnqV49sGa/W/EC+zD7tuC
	 K8gq3ehK63k+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE0CFC617E
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176746103358.13823.4569054258024596749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 695e715be25de8049dabc48ce76c393d95fa725fc5134e060ae469850c599807
Date: Sat, 03 Jan 2026 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767461033
