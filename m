Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD6C7CF16
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724355954; cv=none; b=ckMQ9+F6nXbo2aC61EQ4kcwcH4Dh/XhBLl5JaE/vmtY/Cmoo5w9SdGQn0QGOeFihMYPh44xVXZdKyjN1eTTyHE3PoxRaf/n0zANfHnJZ6Vgow9upd55r17mNT+7Iu+oEEk1h8lFxS0zNYGueMRIS1oIKXoQ56a4q6dv7V9PWylc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724355954; c=relaxed/simple;
	bh=D/9N3sPUkjW9wGtuTwv1EOuTuuysMdi8fP8mes9RH9s=;
	h=To:Subject:From:Message-Id:Date; b=Jyr9vs9AOZ5848P0jW54D65eRrQKwx1IopQUZNC5B/T27LEjTx66bQQAVLHei62k/jQx3oor9CzAcxbg5lQHui71QR1Qijjm//XBOZJeAjkh3Pc8ObDBUWPHlGSfL+y5CrhsTrct3GS0UMjG4BSMJB50cXo8Hq2jwcggTCjavz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kO+lDPdV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kO+lDPdV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6F48C32782
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724355953;
	bh=D/9N3sPUkjW9wGtuTwv1EOuTuuysMdi8fP8mes9RH9s=;
	h=To:Subject:From:Date:From;
	b=kO+lDPdVycK73hSe/WfaXqbiGg4OwExg1VvfPQ/YGNIVE7O8Te6fzY4/Y3d+ByG5v
	 B6JTyRyeXS8zh7uZjzTCRpg2pJaONszWd0aryGTDRbRLCx3kB20hO8AK7jNSkXuEKX
	 aBg8vY7Y1KhnBik7Ll0DgTSAOQrLIBD18F04NvkcMZeTSUJCCe8DsmD1xKzowgV6i/
	 U7Jhva7sTzD5UDv1f4K7HTxc0X9YiaGjumSE+N1MdQ03gApHGLap3mzk+GUKISos3k
	 zRgrrvMpjtEkNxhpQmBPClUwr/nU+9WSascXHEJPCi43xFqizDcdHF8wYrypJueP5b
	 glocE3f8Kj5uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4AC6C3DA4A
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172435595360.15116.5628367792216960652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8534bdbd5818a8948fbf6102b203c35b7eb31e10b7388bad86ca0368351e5376
Date: Thu, 22 Aug 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724355953
