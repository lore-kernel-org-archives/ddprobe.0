Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BDA62746C
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747580394; cv=none; b=ov7+/vPbgqD5zpIx953APDhcTY5bDhAcptCBZpFUrjiMkCrze8/Hk97A1hToe8osex2FzMh6in5r0ZiMGuINcddKQWLExxVQj6dFSU/EdUMy3Cei98mdTlqHuPGPDhIND8CdaK8IWxvIqhFxJOtowdGXqggdpOXcq73BSA1XQpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747580394; c=relaxed/simple;
	bh=/lhhnZtlHJEeefMJwtUHW+UXJUJTQG7PpFz2m+634oo=;
	h=To:Subject:From:Message-Id:Date; b=s3Zh3/OPLSOQoSJMPcSroTJY58WH7jK7fdCDTLkoirtRfp6OGE2H/NiRjfbz5z9yYkhxle0fAz3F7w6mX993Shwybi3AkO1c5s64zyoPSbZFQL3CNbzTwaTr5t4k2Z4BargCoggcvy7uGAi6C20JhNgvizY6aLMuC2hsUdAclEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fWSnHl+b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fWSnHl+b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA463C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747580393;
	bh=/lhhnZtlHJEeefMJwtUHW+UXJUJTQG7PpFz2m+634oo=;
	h=To:Subject:From:Date:From;
	b=fWSnHl+beyO/jhvmzve9yr82CNrDq7Vc1+wUrGHlp0HFnCH5haYnej+PIIW7v6hAn
	 No++Uc2T8kNzGSTxHorFdYxRQO1YyqO8jIjcJH5zBX/rgnxTZD/OMssRVb+zcW3Hpa
	 Wyl3sax7OIwhLIMLBSUBMg2YvW3t+REfDdqsVOMw0gX3OJIcVI44bLBsqa42g7NYoq
	 hMr9uvi/7z0iyVUs4+OO4DOZZ3dYrTHaUTUegt/H0TF+h07mD9DdQZaCVXJe6qPi4R
	 YYsrCOeZwA4qDNPaOCpZGq+gHjbRtA50KKj8zU+TTRKxEqkOK5YFJUZa5m9kpWa1Hi
	 tUlBtOLQmAuxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940A9C3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174758039358.27112.14800874397149598051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02c930778c8b7310d367769b761ad6b1a11dc11fc7f1d4853af0f28cf62826d8
Date: Sun, 18 May 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747580393
