Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E681662E7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755941994; cv=none; b=EBr+z+Kf9D0xehjBaA+oYKDmGgaW4+fkrjgIlXbbehwORiv/9mWFlisKprkDryftq6gs5Jv1PMwwjS3Pjgh8HUjkjYOyfdtwdFtklAJ14kNzYcAioPVLPgws8LXa/tFeW8boDJOlwkPPCpor33VCmtX2jkwT3P7wCg2R117H0i0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755941994; c=relaxed/simple;
	bh=cnOOUZk+Ah3gJTYXyfwQWWNrEgLcs5kV+s4O4ioiNfI=;
	h=To:Subject:From:Message-Id:Date; b=PgWONXPfhd9xeg39EMCyY7eV/1oA3jSuKwaj5dcUER3gkEwyEFdkwKfC7h4JWih6v4sqLUt+dqLt3V6rxsnT1x0VljoZ3ufTMmlqnQDvsGcW5kUQCY90zP2Ry9Y+PEzK4+qApbouRc9uThtzkexAqovY86uYvTl9Do2Ka1awvFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZIfXlcP+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZIfXlcP+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB06C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755941993;
	bh=cnOOUZk+Ah3gJTYXyfwQWWNrEgLcs5kV+s4O4ioiNfI=;
	h=To:Subject:From:Date:From;
	b=ZIfXlcP+Z5Uh6ikHVG5z6KBTZV1Qrr6j4iSCoE4PVzy1rsfnsQ3bkmsnwY/mOOn4D
	 2cLTJd9aunhU8Oi8Fd0k/VXEQX/0/RAji1LCKy9GYg5aXMs5sX2/pRuulk8OvHHGDg
	 4g8lFzqrJMAbbV4aoGuWqdM+iXMmDpOvmb46wUOLfpYHn2RPqvYGEG8K57xk3nxQki
	 vU/gjJEvi8/xNlNgp8qFDfcigN6V36AcjDTJB2TFaMrd2iGm1tcJKs4YnlZqlU4mJo
	 +DdOcl4XA2cMxWhMINw4AZxxRwmHDjOM53nkHodXXSWAtF6Ie3oO13Qdtj5ACVP4Y5
	 urH6qs19fUqsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E60FCA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175594199357.23485.15261025914361678107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55d01828a1d887e8e7df7839cd6c8858a01bf03b387d52b1e0a7f326c63e402e
Date: Sat, 23 Aug 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755941993
