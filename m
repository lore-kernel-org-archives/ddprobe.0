Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331AE374745
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790923234; cv=none; b=iVMXCnT0oAq7XnkGBEKvEz+85rAlPJ06B1gNQqRSoRwLeWCbgFmcYJ5iiJCmmTv0rJByzWN9TiHBMW/z2W8dL42DpCHcjdtW6dLRVvR3D98h2bjsTME8L0oHq/XBWAFbuj/NtahDBBnxSbzruokEGIsxGhdoe8DDte7jPq2IEeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790923234; c=relaxed/simple;
	bh=ZZw5lk6adZij8qPzXfbvypd4naKMCK+F3b6Aec9fh6U=;
	h=To:Subject:From:Message-Id:Date; b=lFJRrcRHZC1JWor0g+3AxKSVidPU6lSZxLJh2J37vcHC0BWfYoRfAtBhz7jnCJvfGesg9vr1rKp5KhuhxxsAd56+zv2qKTQ21IWOy4V3iYsYi7M/HkHf1vRC+03PC4iq5A3I4rdgUDUB1zEkxjbqO5eu1zrkZ9LllhmGkONv10c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UVsu8lI0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UVsu8lI0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D182CC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790923233;
	bh=ZZw5lk6adZij8qPzXfbvypd4naKMCK+F3b6Aec9fh6U=;
	h=To:Subject:From:Date:From;
	b=UVsu8lI0Kxd16yU1xse4FdVRRNplbJuvUGPNj96RGMYzzpoH76rkptJz0BkxYQLsL
	 vi5gS4cBcaZ20GVRupd7w6cBtXoPcsFXFbT6InRLeqOyEcf/H19GhBhPjBTYuFnz4u
	 6+N2+q8efHWwkWfdf6D6UyshusXO75dC9hptfVbC2MtPy4FODctAnUcpgsKBYSYZTb
	 F8QXnI/c9gZA8EmXRiAAx+zo0sSINrbY0eof0EX1h8XeGeQRwM18X3LEhoKVvzQCZp
	 mwPxTBHoOeaN82nZBpe+P+mxSJyT1tFFvC5JiN4n7jPEpaK83lFFrGfLyWc5WJSDh8
	 IuNQG/HKXTiUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABE3CA5FC4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179092323368.21815.14397849113391497860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42994f606820425a4e0aef38c7fbe7cd834a2dd9566a3b12695417b4ae710036
Date: Fri, 02 Oct 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790923233
