Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2266A3921D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769034234; cv=none; b=DTShilv3uSx3T8wuwmQJUPiN7aVSD+OYDZExZTcP2j4Sj6a5EWzPC46xpo5oggSFbWj3E/zwLQ0Bcaib86hHChXia1kijSh1sfJzHdZrkTogLj/mS2DtimuU3BW9CbE9hKvRvYuA21UEcDuTFg8cnqy2U1d1kUUT3PYKm5wF34s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769034234; c=relaxed/simple;
	bh=mQxqo6IBX/ae+gWdLcppc2CEGJBaiajkqUMygD9XIOI=;
	h=To:Subject:From:Message-Id:Date; b=iuPxgu7zYiRLZTQWwyJ6QpVtlE8yZihcmrifGVYjbVHj1f7FPU3ZKT2A7A6vqX4abUjvbx0BynEWdNJnmk2hnHAWNnpLCTbH5jNZBPUK0PoEOj7YRSE+PH7QiUHVakhZuuoQzprQYnpVJATNIDyzLFXq2IUI1FJvzKSEz1FjkfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WgV6/fst; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WgV6/fst"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C51C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769034233;
	bh=mQxqo6IBX/ae+gWdLcppc2CEGJBaiajkqUMygD9XIOI=;
	h=To:Subject:From:Date:From;
	b=WgV6/fstdxvenhr0mcHarItUEs3jyCPecpgkZKiemi4w4yV4vs69id5kD8nAWOwMR
	 n2Ikz4pl1VWmI+GYivwCrlp7GNT4CmPRXYq3lY9nHQeRr/wo6AZ72IVvosBEKvc8K4
	 CPOn27aXrAiq0k942JXcsJDayC7swEiSXE70xPYPAJpiZYIgG5ZxpakEydImxEPm22
	 LurmAttZ0qmQ8YmQF4L6+B0tmGM5q7erZnzbgJlDSQnGLzxyKkmF4HZMggv1RVXnZ4
	 ABYUVb3n7F4QqV/hAEGUeLQjafoJKA6V1e+L6DhnLmY09bLWJih0OyiI6idXWmvReB
	 S3Pg5KtqxB0bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE0BC44536
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176903423358.13327.16231282257088660582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 938b7058ef6cc36ef24c9674248eb478e4e7fd25a434b1f7baf284c5caef32f7
Date: Wed, 21 Jan 2026 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769034233
