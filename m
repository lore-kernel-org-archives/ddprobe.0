Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132762DEA8C
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762517394; cv=none; b=Ebm/XzvJStdDCS1KIl4OUjW7LqcaPWwPQ7DaZHd3kIcknCmS+4DDmPYxu+8/A4vB6jXnPly2XlEQkUKCyudf8juqpKcRNSedyIcwL1CFmogSzA4WyOSrfuCVAhUdZFDUVR2+ARKZbM3dieYC3h3OCEkis5Eho3FBxD0k2qChEPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762517394; c=relaxed/simple;
	bh=IzmeCuYAafgUMT1nH0RHvYz+U1ctXexynq9AFMHb8Bk=;
	h=To:Subject:From:Message-Id:Date; b=QL2rd62WlSSCBLS69BGOM4aipECGFrprlRnbTYzB3/j601DQYHpE+/JKx67FuIM4sDdh/1Y34zzbEnZD0UaF2FWoARuhZb8xEslhYiJYTjB4kvRzUwOFNjRznZc0TUKbV+vPvplQTszTp+/mELDKrYZce2068OZXnOisLAd7alQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EpKGs5k2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EpKGs5k2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A9C5C4CEF8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762517393;
	bh=IzmeCuYAafgUMT1nH0RHvYz+U1ctXexynq9AFMHb8Bk=;
	h=To:Subject:From:Date:From;
	b=EpKGs5k2kSL67+ApUQ4mfRfuqob8Srl9VqMgp356MakcQHZWBxT3doWl20h74v6Z1
	 1umIF92JbWTi54HOZfnH2xr2XzFyGBlTfi4kAST7SUJpVGDHHxLDxmpXeVgpG5b2lU
	 GWLpKbzVSPlOgywm+PLurUYPPvUjJBdA0GE6LcQ49UwGNlEZI4IeLKfIbimPW+ugIh
	 B5rhfMNkDI3WCx/a4YKQ/65yqE2B0rPU8pPNEWfiS1gyt7oCfrgdWH3AwFpwR3Waig
	 v/iFCqckNxLS60DUnTgEenogbyEx6UmPu3EyQc252hVD7DzJLq364MA9wJvmSHg0Rc
	 sp0KJ6kELjP0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3DECCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176251739357.9814.9321750172918440297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d048c40abe0124a1c09be7620ba8dacdea41a79a1aad9e4d9e248508438e860
Date: Fri, 07 Nov 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762517393
