Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E75E26CE2C
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788141034; cv=none; b=Xyz5NgtNyCO8jKrzvEyi3weRyodHeMRLt0iPK++J+jk/DCF1O0pXaFNV1a/gUij7ikte5t9ROe2S6qd9ZqllPeknFMWJ6QWQ4JHMQ21atUP7wn6PDgBSW28yr9RPAJ+yVgB6t/DaVpQf7mhx0qc1Jc8TUUiSP8od09Ge5ZI3pB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788141034; c=relaxed/simple;
	bh=b0B5PK2HeRUEfxHy8C+Qc0QppMzzMbkOeE0KV9sufe0=;
	h=To:Subject:From:Message-Id:Date; b=XRD0vNe+PI1W0khsTx0ooMZ+Zx+hPeIuL1HrE494N9qK1abwJ6DF1VeS8oYfVDoAIci1M+BexjMX17q9pDTY/lGHaDBgcFj5npxB8VeZddlwO/HkwRmXNWq0Yg9Yd/8e8bWdawWhAqcokimrQIV0fJdoNRQ2kbiuOrkHYXBxitQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Umqt9xoP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Umqt9xoP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E01FFC2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788141033;
	bh=b0B5PK2HeRUEfxHy8C+Qc0QppMzzMbkOeE0KV9sufe0=;
	h=To:Subject:From:Date:From;
	b=Umqt9xoPHubPmVV7Rk51FpNpV8avQT3tD+Pnqyc+6Hj+5v6Q5xXtg5DWZPpKX7i0i
	 GEQamXzCSglABvh20OPE7Tjyng/4f+GEmLle9Y9y1hn2KGJnqTE5OkhPOt1JYZb9lU
	 Ij36AnmFI4CCENsXPR2U6fM8SlsyRfM8XzsOOtvv157dgoQ4CQinD8MyqW/NxMUi9L
	 GvLk5ugIHTxiJwIOsEDSMkLVraOECQgAuiYPX/w2TVxlg3VcBAK55mZ8xVeOZqg3ev
	 Ervmn+qAiQVORWGCIXJYSUdiXD7CZjKiJG+NDRagfO94BMcaV0qGa3xUOTmlcERmno
	 oMchkjgTVCKKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B169AC61DE2
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178814103368.25454.15730466827269962520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9e89b4b22cb5754e3d469d1e1a754c5045841cb216dfc79de8cf2c4330d4df1
Date: Mon, 31 Aug 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788141033
