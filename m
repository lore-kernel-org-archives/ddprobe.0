Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ED20405E6
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 19:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713641423; cv=none; b=mCW+D59jpXQxoywCiH4HFRO2O7ObINcN2J2ryLIwAXjxB/WqzR4dMEzyHHYfnyJHpYWmDEFMwRjDEOhg0XeQJVG297Jgnr+hV2gfUxByZ1d59hdiOWjjaZsUJvZN9Yr/+SjZ5spVXHPB9zDU5FQhg+T6GptJdHSVyT4QY0nQGRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713641423; c=relaxed/simple;
	bh=d81Loc8UTtxQXuU/V2ClNdGtp7G/mrvztMI+yTSsHv8=;
	h=To:Subject:From:Message-Id:Date; b=JmHEtFbtjn7ANemWDgKEz9tgjxoY4uqvCrs8Ix/qM9wpeMrzCDUs5XZbxu8Qo83oNX6APMCdPS9pMQ/tnUhrqYMr+TcPh4iuj/atbK3GTnID474UCE8pwlwmtva97tdQiD6QPnc07jLEcBAKyVVRjCrNwYc/+rGr437W0/jv0ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LAJU43pa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LAJU43pa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC20DC072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 19:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713641423;
	bh=d81Loc8UTtxQXuU/V2ClNdGtp7G/mrvztMI+yTSsHv8=;
	h=To:Subject:From:Date:From;
	b=LAJU43paSc844Y694GMUJgqDBCqJLoET/uJVIB115kbsIZLKzG6qB8lzKoi24lCe/
	 10RVyaN5Vi8yU06C4d8L7atOpCpg/QLkzt8tJqQi7TUaIdNAijkZjA2WJVAioOGGFa
	 rJBn4AhxFjvGX4pXvfo3OqBJtNBWUxRdl1JDPO6miFWk5VKn9my0/53a3Fm+73h8Yu
	 AQyDFmSAnaOE00bjx2vRYrKCNVI+xkVrrQtxXnP1vjbXQlu+A/ymQb9Zzg/glrX0hV
	 KcagX1YYJGeaKRb4fNoVo/dD7dZ2Ilgn3ZoXGS1/TCLCOVba+I+ErIAw6UYbU2AJOV
	 AfQGmzL/LXztQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEDD2C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 19:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171364142283.19917.8498379492045220847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2a84cf98f55ef42caf406aa256b379919ffefc9af8d02f9e6d3a77b8fc2f99b
Date: Sat, 20 Apr 2024 19:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713641422
