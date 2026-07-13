Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44DC134D4F9
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 18:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783966114; cv=none; b=BnCDbDovvOlPYtqkwDsnpDRQ26XNKDJ5Q/Qabl84iUuFgapVGvdCAk2Wx5DfJOj6j/kK1kPD8wiyGDOnqNNjlTMOBbIyQYkaR1jMjKDGq/2+I65wiCfSSwp3BllOQuzcg6rfBZJELtEBJ08ZomFfvHzb4YUt+DN5EX/ZfJeWMGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783966114; c=relaxed/simple;
	bh=guLxiasea2aU6dgBtNC7iVxB453iPlYf4ciAGVFhZUA=;
	h=To:Subject:From:Message-Id:Date; b=FBJTH5v78WX0NKG2uazssX87kKg1jj+T6qcvGFPC5uXA008LoM4osAqKUeQTvvVCbCeVY91JRi3B1ya0ic7CmH1umJW0Kql3X+uosXcKu+mkbtC0v6Dxl5Wi6+WPDXB6iSbmO1nf1DlRmPHKgyg1nJ6GxNqSUP54vzHy5jPoCBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j4vp7mtM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j4vp7mtM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC730C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 18:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783966113;
	bh=guLxiasea2aU6dgBtNC7iVxB453iPlYf4ciAGVFhZUA=;
	h=To:Subject:From:Date:From;
	b=j4vp7mtMwkRttCw5dSquHBN8/sxbd97EKByhN8Q7z/PwtDuYTsbAWIwK0Bd8BLSAR
	 tQk+RltqA8d6CrwLndgdzyE0Rh1EQAuPncHRNVmgDW27xysXSlYR41LsJVa6dJJr1F
	 RAmNJ7zdXakQl0pcVhJp6kBWI9uJKWUlJsjlpnctZvef8xzrpePt1y2tNpeY5f+kHK
	 IJzFi2VPoEJM68uZed6BvVNXj/4Gh4f2KNmgiMKQoRUaj7Uiwnf9n4uJueEa30jbuR
	 Y3FKMn+igRUN20PJvTSHeFUDDISrAIdeDSOmKwnuXv87Gw03TMvM9hHQX7AImZvJJq
	 DCeh4eS37mUCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DCCC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 18:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178396611368.5326.7384456547857144155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfe2e6cadefa8ff8aeb6d9796d01fb508dfdeedaaba8bcc0236198554745d8eb
Date: Mon, 13 Jul 2026 18:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783966113
