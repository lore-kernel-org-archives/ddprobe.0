Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163692ECE92
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762693794; cv=none; b=Ku5y77vyDYFSB5bU1ZVNbA7q+IMwD4UepeDJTmEQknk9sf8qaai8Arowt6Nhw/DU788WL1ZzByTrAyRDDtL/UWY2BNDjaGjXXNSO+n1kH4SF4dOTGLBfLwI4fjKScipcEbBVI3I8ityvkRhYKrrWBx/wERtW+DTQZqB/cf+EhWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762693794; c=relaxed/simple;
	bh=xohWRbumMwAymmjyxY7R1e0NPmTwVjjCDD9V6YUWvEs=;
	h=To:Subject:From:Message-Id:Date; b=ptjhEPuKNWJo4pEbWKnEC6exHz51tocfe6/AuWmwTJXYUsGpHEgzaAMN7yhYNmpFZYdnxNWsi9zLgtjnon3F3yrGCrhGPdGCd6+QT6V9I1kDhP1TO3TliXP554ohvk4obziCH5Bqwh4HBv1F+r1+p71pomJVjDTB+JbDrz7PUGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RyJZlcVg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RyJZlcVg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0804C4CEF8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762693793;
	bh=xohWRbumMwAymmjyxY7R1e0NPmTwVjjCDD9V6YUWvEs=;
	h=To:Subject:From:Date:From;
	b=RyJZlcVgNh0f+TS4f9+wBtAFT7AfE21ycPJsHGm8jAd3n0DGN8OfNRRC2Mi91oStu
	 +DDnwvLAV+XjOQOZmYC7DHkB7bnvZT8ZbegWZAkGjchqAPfyb3FMaEGXmNosL7G5Jr
	 1eQai6yHxnBdprv5BtsljrpKySDCf20ZZCrdsqqKBEuCcGpNS0rza5hhOLCTa6KsLR
	 0N7EvXeDqpHvDjEP+HTy6e7R+YcLvia58gjbMmzBm/MCfANlBz+KC7sX761ef74RdA
	 vERxUI39IaaB8mfkaciGh86d1codBKYrQaFrpNIhG05CXyytpnWdEvieUCAkD3bXif
	 nJkzbAFLxiv2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93690CCFA1A
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176269379358.24744.15900474457959345608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5b6fd014a372900f02aa42f1e6aced3bc7babe1fd5314146b3230e2af40ba0a
Date: Sun, 09 Nov 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762693793
