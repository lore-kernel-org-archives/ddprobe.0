Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE8B1E9901
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 10:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746873595; cv=none; b=eTJWcBbsacmbiCkks2LjCLBvsuz0e/w8aNNmj6WH7XDHI+J2xazGcrOy3+e+UZui7W4vQssBevffwynOxgsmZMlBa5TzqTNZNCEGFkdBjaoCsGvK+DzzKuv40nh0yZE99bb/HrcfbU9pICpW//ZDYrjs3HIFfdFavauh81DQvcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746873595; c=relaxed/simple;
	bh=/4EVMIv9jBOcRh1q3CdwJoSwc3yyK1sqcrlx4VxxPQw=;
	h=To:Subject:From:Message-Id:Date; b=pSHaAbLVLYHtxEbJl76zEf4la4V8cOXP8c9Y/gww327BqTWVXxMQfac/ijOYnWawiWo19I7yOVyvzTSBZvn5JVmRuLwMkGHgXsoHqRlv7ItW4P3iyTxY4tT6UDEvy2m62q2jmcphrJheze8q5dzrViQ+Gcw6V6bbrSG2Z+a50R8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ScwzjPg6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ScwzjPg6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16BEC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746873594;
	bh=/4EVMIv9jBOcRh1q3CdwJoSwc3yyK1sqcrlx4VxxPQw=;
	h=To:Subject:From:Date:From;
	b=ScwzjPg6ndyWXghRSLSV5deheiW36xD1wZF0c7oAs/NcoPi31XituKFBFtEDzgt/Q
	 ysVhBxgQzBhzP9anhXah/g1Sgq/wRkjISUAUaV7Hr1/TzgZNxwphXvW55dtjPM76ZD
	 stTVjDKvy8ZEZU0T4ehLVHyxufsWIKyLNt1g8uwKu2GGvhEuu9sdCMS2KdLdRH9imy
	 6Ar1QDkEh/CvdPW6hVqA0Xz+qbSaETaBvLyhwURlu5LbBwC/OyTuRDCLpUWgG8Qvy+
	 kPNfDwkDZog51YPHfI9cDrGlzXW9mi5YSebJyx242S4EcQasO8m6kh67a/CjC7vEHV
	 IVDBQ4unuCzwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8B8C3ABCB
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174687359357.1987.260527319113488838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4478415a2a4c956ed3dd936394198a71a80e68bd5b514d387cbaa3341af5b9db
Date: Sat, 10 May 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746873593
