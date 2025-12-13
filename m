Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7F913E41A
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 02:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765593774; cv=none; b=M9A9LWnRXXRL/J5tVcWSWZBEllevJEGVN4Rae4yqXdjMk8qxn2ele6L8EoYj0wpHPlhu0DnmHrcxV09rwP3xWXougvP8naYzZuxT/9/cH3+jNV2FB6eTZY1K+e4zIeFloxIpIurBPnGU1S8y46JAulNw4EitJ7tT45UIFR9aABE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765593774; c=relaxed/simple;
	bh=df1CyCbOYQkSJpafeSm3axZmD7qxj1k7Ky4sMUrFhEg=;
	h=To:Subject:From:Message-Id:Date; b=MjMBaiYw+DzbRbeQdllcA+BL9CUg0jQx82A8DB62PfgYp/Kp3+nJ6dPzbLuFKXv7+/gZQI8eTFIARw7IvShiglftFqmREYcTpXaWTuc6Z3+zgLSVtIFjs0urCvt2qTSXx3mIMs1FLg6ZYfpF5USe22OfB9OkJ8kpRnclMWEchRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=as9Lbosc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="as9Lbosc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F5DC113D0
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 02:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765593773;
	bh=df1CyCbOYQkSJpafeSm3axZmD7qxj1k7Ky4sMUrFhEg=;
	h=To:Subject:From:Date:From;
	b=as9LboscUZ0dw+o4UIifDz7Nvzk1UuygIUYQk20FS1Y3O2j7XQbpLwdOEyyuizGxn
	 HSRnZeKDDiJYkAHtAkGsrbkNgAoQg6H44jOLse3GdrWRNT9dWODXMt1Ex+o15NIYKV
	 Pc71TS1GRm4yxeQXNu+AOxDGkm8AHB0yjNfy2dQMCRLYarcNVqYvZbgEN5LOvGx2Kc
	 NtGRsJMS4n79kGyhL1Y2iqj1FTQWtEYBPg/IZc3IGdxK/IurrIsm7b7JS2suM1bjYc
	 v24g0iBBx9FGiOtx2ZNBS/JwBX4Ll/nGFSoKyXoEKf67/DspqAikd+Bk1ZT2JSmFbj
	 zXulV91id2tWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F12D59F5F
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 02:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176559377358.12751.14391167223406210349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f578783fb4d057e55ccfe3c734bcd8770a198ecfbdd4fde46e9c7e7de5cc8012
Date: Sat, 13 Dec 2025 02:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765593773
