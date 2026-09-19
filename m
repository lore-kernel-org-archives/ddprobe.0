Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340B0333439
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 01:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789779635; cv=none; b=fHsVg5ezEMMptePtvKYZVzNjqF/maTIommcuiscHkk7c0r5hbnjLgsYibUw8jdTNqEEOZug8iEttzlh6FLIHgcTHu68cYIcC176LTxlOyJX6gx9HrFiYoIhwC12CxSSzsAGMs/e/jgmcxATFSu6p85OASiJCq6o0BuFL0ChSU7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789779635; c=relaxed/simple;
	bh=elQCcmd6QW5UnvocFGnACBq5ZGP+76LpmB6X5uQZrzE=;
	h=To:Subject:From:Message-Id:Date; b=eSdtM/04r1SXQuu9T+cMdkXXeFBuz/AX/gDyr1wTa4a34aZAPB9FEm9jvSc3OXObCfJUMcRQKorQc9b4lY5o5ppy5zVWIv0MUpwdwWw+qLE6jTWBPmHPoQD99a7k017JRJ5ECkkzXg9XfnXCllsU2Z0L+vAuvj+MKRzw36aqawY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=adgjiNHV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="adgjiNHV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1C9FC2BCF6
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789779633;
	bh=elQCcmd6QW5UnvocFGnACBq5ZGP+76LpmB6X5uQZrzE=;
	h=To:Subject:From:Date:From;
	b=adgjiNHVPC1oqm0lSur5NWJrrmG7NOyVfs63BYogZvJuYZdBPg2rLPC24pJtPRFqE
	 cvK7VwWXomXLBvhQgCVmdIlsyPxGOabYQxZup2h2v4igN3L7EM93s6625R3IKDNWZK
	 jOY3yMpYCiVnKRV1Wp6EqP8rUIKRhFGXgfITWzxOHXn8HnRBJCJV3wtjeg4rk9iiQG
	 19cyZhoQSj/DLx6RgyAoPYwGTTEx9NXAnjXEW3k60cFzXfQ0k3GntuAWBS0LO1IGHU
	 2SJi9zRshpdyy7+Yxo8pmMRTWfLhGQ9QKgtLiek4JvmoWB1EGC/PNE895hLXBPERGN
	 M2NeT/UmkntdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0147C982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178977963371.6164.8109893745289261868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7acae48ba65736dbe1c482039e2649dfe50d8f048e274b7b332fa728e202894a
Date: Sat, 19 Sep 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789779633
