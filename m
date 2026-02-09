Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF57378813
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770653034; cv=none; b=N6Mj6jIBAO2ibhd2Ar4bt0QbwtMuW7xJxGZh8Spb4s5q2m16j8iXgldHUabs0cFL7sACC41HZ68FQyK4rkmOJKK2jUl8qLsU3J8mSpiQd9sW/Bz9q3IzlcWSyQPZ0HP26OKqKxMYgspFMyM9I/pd6eop6bE+0ETx+Umn9FsrB1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770653034; c=relaxed/simple;
	bh=hGW0yFcxG76GRlAtIy60mQrLnRnI5+6iOiaCNis/JNY=;
	h=To:Subject:From:Message-Id:Date; b=q2P6XunvEy3rFX2FBT9E0ktiW+lUG8f2srtMbEZeIateVG4pn0ypv2UvLq9obgLmNwsXDPqepJfRHEbpyuBnlEG6/JeVkcLvAMqaRlrnz3M2xU5I5Q7njVhc7/8fSMdR8PvXQjdyqDYQ0mp4G/NL/++dY3gozSi2exkek6oDYRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M41XnyUm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M41XnyUm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B73F4C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770653033;
	bh=hGW0yFcxG76GRlAtIy60mQrLnRnI5+6iOiaCNis/JNY=;
	h=To:Subject:From:Date:From;
	b=M41XnyUm+pepBprxM4rAuqVEMm77FF58r8a1g2cgSVG6DBUdZ58fP98I4id0vb+VO
	 oiXBIf3FfSqrgG6E/IyGgdepi8aqQakrKXomW0S4X0J2uFh0sS7vRezTCdsrf/tWo+
	 9azAWPQ2Nq4Lg3264FacUF3PMjI6+OmjHTCD8NJpDLu/e4IAmAlbvYb9FLfIyLGYIU
	 pFfCSzqRTBjgI0OFlBFknHWmdUnUiZWtXLT7Bc4Xj4DOEXct7Z8aVOzv++hltjKTB4
	 Bc91B845KUs+bKHxl9Iseeld+cIEzCtRsWUCSIRftQ8jRc3mil5Ud1ZK/TcSFNZES/
	 Agm/IpFDktLkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A167CE81BD3
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177065303365.13319.8534466434584128920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94416762a5f7794db2eacc078d5cb53807fc21964eb64a658dc7c24eb2a1ab79
Date: Mon, 09 Feb 2026 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770653033
