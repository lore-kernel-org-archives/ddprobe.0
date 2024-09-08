Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23EAD1C01
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725810954; cv=none; b=Y7uv38m8D9ui3tMLbPNEWlZCXF0mSlsZqa/Zw6TA+HVuvGxsHfbsTQ0TMH6NRbTFbmkL63asxsOjXuJUywoq+RcsPSCVwL6peCTWnk7rjqUSQJP20cotGgCwEFl5xdqobSJzoockECLANLfkcgasLiAwKQOoBror2tNMlYa0YXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725810954; c=relaxed/simple;
	bh=GSjpeTJ2GXyuG9sbNtZtitqUxDFnRmqDLAeRNWBQ/34=;
	h=To:Subject:From:Message-Id:Date; b=XN6lpnCqYh51EnLt6G46PQBqSOp3/s4L4qBhRQIdH5tlpwTICSEoTbR8mE31gIbdQtlcorCCbVTsLpc451h2vxsFcE/P8x/s2YPFFqA1SQjK//oZnE1hLUOeaY1kjwQIs42IQ6gDT8HAa1+9vTiZHNC/3ZCD/FP33H1F33k3O4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G6aJSLT7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G6aJSLT7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BC0C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725810953;
	bh=GSjpeTJ2GXyuG9sbNtZtitqUxDFnRmqDLAeRNWBQ/34=;
	h=To:Subject:From:Date:From;
	b=G6aJSLT7kqn5B7+YwExCtYD91YD4OGlMeGJKVszNDCo/qIrmn8wg44we9Gtj0R2iG
	 uu7iNR7Bbxq0uiY7wMsloAuG3fQDKqNRoVqjmyzkmOtzC47rMsUWaj452Gc8RiFaCY
	 RH9VvccRbwWcdOc27V4NxDsQppmvpcvHDL/Csu0ChBi5l8SN5GXLhzQCdnY3/hgKAf
	 p0cDtTitxVCFIbwex13rxz7/0RVBFTDNp2n0NPxq2FyiVXYiXiwbdBdhMW+J8+9YS6
	 D0bjQAxRGzNiycz1dY96XXhAsiWIB3YuciooVHGEM54Z356VIPuNW8rLwaXo107Kra
	 WCKKyg8XIEyFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F95CD4F4C
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172581095358.12112.12317103668361508229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9871a259e006463929ef75cd196babe2dee1870197d23071d1fb2c6b13af254
Date: Sun, 08 Sep 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725810953
