Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E5E54FBE
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 08:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713861623; cv=none; b=XwCFMFn1yzhPkvklanop0vSTEDWxs9iVhTZIvm71dTcxKftOzcFSAd23RmWo6lZ22bIXOv1x7l4/2yU8LBQRCTlZi0aWEc0aKltGpcPaPEOX4TTJOPmBpz9hSdSNn2gPLdVgSUvXaKoa16HvgaX+CbOr3JvGDnu7ZzBb+KVIu5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713861623; c=relaxed/simple;
	bh=4DevPwyidZoNTOVPgc52wqBb2BoSoMtDjhJLc9SocuM=;
	h=To:Subject:From:Message-Id:Date; b=E6lvlM/g7k76sNASdSV5cLRHtT3Xqz01S6we9XD1WLf0YDBuQZn2jNpdhDXHnBvVH6QCfZ6Ad+J4a9Ng0H/Hi1Wm7C8LNvhJLwxvCS0ncCxBQijbftf8YRx6AvgAVpyk1a7Z5HXIWNO9tFO9tifuwekZeIA7r2a0dTLTytuvGas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gGBRsqdm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gGBRsqdm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC8B4C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 08:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713861622;
	bh=4DevPwyidZoNTOVPgc52wqBb2BoSoMtDjhJLc9SocuM=;
	h=To:Subject:From:Date:From;
	b=gGBRsqdmTo5yKMgsuJnl9qXTZW8v4lHsbp+Xhf5YQKSt7T1wtcvYQ0KO3LXm6XEnT
	 iNmKraio848mTNcQ8JS4OSSNQp5EK0CXT2uh5/+3ZH0qJHlkcnp5mRvUfFXsB02BAz
	 +GDCQPGmNqiKFd7ZcvTN5wV5QDZppiRYMRvv0vMhKzS+eBGroMK1Q74ml6nkDMK/2x
	 EMc2tKUeS7AIUZKOTE62wX0xVY2z/2UuGtCdWuCKMAgMD/TAHDVXtioW4qyLbGluyq
	 +kE0KlgjYqOj/I6iL2h6AoFwePOZRhwVy/iaaqmmelK1hP/qXbyT+wBW+fUHvJf+wz
	 gqrzfGaC/9f/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC9A6C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 08:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171386162276.17932.15648493655219737226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72c068d7eae6a1a67f8f480aca4f4a0dc95c4e5f393bd757caa754d4a6d8e9ce
Date: Tue, 23 Apr 2024 08:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713861622
