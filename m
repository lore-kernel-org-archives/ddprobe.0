Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D8D14A4C6
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736576154; cv=none; b=XJfM5tJEXdGUzM4iA8pMtM8IEi3GqmIpMFGQYQKEMNrPtvWZ8y+ZIH88SBVW0QcATklic2svk7lCF3LZ9+kMAgvr+1WfP2GXuPEnODZINkDxLp5jToOQ2MeQhzPwEf3LreJI4UQZLGULdWKgel6JGreOiIKkX1m0qSSyG/VUUVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736576154; c=relaxed/simple;
	bh=Us0t1fwzaxqWP449p9Q9UaRw/g+W1ZIAVy80zJhEmdM=;
	h=To:Subject:From:Message-Id:Date; b=I0yZtwy8DWWdwEy2wKDyx1MzRA7VMnWrzGmBNFeD2aVTfsH16niZryzlUxhvYxO1YQ+IkJRKaOcR49ooMUaehmU1otEawlgY5k7bdvxb1km8erijpMMGzBpSUduZOM75BJHnerRfx8AZBD5ds0G6tROtJTpgWGCRD3fxiNM5apg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VhEZz4oC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VhEZz4oC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB52C4CED3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736576153;
	bh=Us0t1fwzaxqWP449p9Q9UaRw/g+W1ZIAVy80zJhEmdM=;
	h=To:Subject:From:Date:From;
	b=VhEZz4oCTMgJLDg/VSalSwmgjUwQLRZSQQFuMHtnv+d4KejPdvA/z37oJ8LN/kD60
	 1Z5YMwLduvAzRfTl5/kj5J0JIJMsWoB0Gzh8RqvVk8xmq37tujKRt5qcTzSJxwBrRG
	 l5O0N+sWiZO0YOQHim4jUKZeZmSQ59NtkGmt1hQadZhPL8/SxeaoW6geieUNml1NI6
	 3DBBrsarMNwA8hO6szLsQ60aaE1ommtfJ+uu3+EgFC9lX+ezO2m3AFpXcy8gQfLsBk
	 t0Qze7zt1/9zhrCBzng77OPISMsJefLRDmNToNpg5ozdiQnT6YtmdcCdIqBq1gT6UO
	 A+mC2O6URQqZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999ADE7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173657615361.21799.16296659148422191784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0549bd85cd16d68c2a0aa53d5934ed98960a4ecdc55df540d236990e73465b6
Date: Sat, 11 Jan 2025 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736576153
