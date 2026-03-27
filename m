Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10E8D21771C
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774615494; cv=none; b=jKk/WMriL7ybP7FT/oV1mWfSezABs9/lZEb/YiXEiXxJ0QB0aUiFNR1c55qy+rEYn5Wi/2wY+3imfKfgEA3N4qR2IyqZ2WxUQkrlv6jdw+tFZkm5eU/K2TXmWTz3cF62VNgkRfupjkBtcTIOG4LzXVnxg8c2mEjZ0pxW8sA5qfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774615494; c=relaxed/simple;
	bh=Az9lxbe1Kl0veWJ1yUssWSwmFbpXnYFN5n3KIlRLyTo=;
	h=To:Subject:From:Message-Id:Date; b=m+YZ9qpdIKbCwuK2207zV+8tN+OVn/URMpnd5fj7ytqdWvtjz6lAOf6BlAbphFhecFDWyDF6J2cJ92BwMch04c1yjOugeP4fXCf7d0wNYGBO9uibFTxtI59Fs4hwhM0A5BkfP47ImdCuKP8kSq6UcvNI5au0+TgKcFmSEU5/GsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BTSuPZ+M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BTSuPZ+M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74ADC19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774615493;
	bh=Az9lxbe1Kl0veWJ1yUssWSwmFbpXnYFN5n3KIlRLyTo=;
	h=To:Subject:From:Date:From;
	b=BTSuPZ+MbeWuaRPIxonnyjR8JQBEU7+c2S9ZkWYsFtwUowddU4P0lUkDZeLeNqhlh
	 L08AIb/c7FJG8dFfy29z6KHQDaAA8SUFM7hBt4AWCMYmL60ndeEywq9pI9QMsU5Ybk
	 06wb0iXm9ISM6ThtG/BqQX+n87DP8FMXqVdH+5QhmOnalHXFqymFJujy/X2zoV1su4
	 deN7YkDS6GGEUA7sPfcZwY5d69BJcR55PnaAqrWSzkO6Bal3zQyrun3gOr+6p7a38M
	 C5vAszpY97oDmc80Rw7PNdrdRIyZa5PK+Tfxsa0+CTvVPS4JySi+ec6hY0mjXK25um
	 yWE/eG2Xc6s+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9417010ED66E
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177461549359.12013.14925564860286476317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbb56c2d05671b96c6c1975c16520ef6c4513c222fcbf3fc4dcacecc344470ea
Date: Fri, 27 Mar 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774615493
