Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D48F3C13E3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785086434; cv=none; b=pAy93neLS4kIuPxtYJynyAZRM/lwyNWsqiyDI0ib5TQMti1RSjsSfB+RK0TsoARV1Wq5miE5yOoC1VhE9YAIwnoRAAQXtKmNOmbej5B77D3NfLGckzefhCmlSEgsXFLcRv2+kS3Xm2xAulDSZKbe7c5lS4h6rYLl/mdAPsAvS6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785086434; c=relaxed/simple;
	bh=NbrZeUMCRSQmjSXD1uypfvEwjIKHhku6W0wE7IqEX4w=;
	h=To:Subject:From:Message-Id:Date; b=bjc9UhatzZF69Ahj6ZiJARtHpZkAlnZBHl2a9xHJxbHUTRUWLBUJ/l+hZitKVVTkeYyQSISRlwEBYFCLgjDOEq13mTCISUGo3/PYSXQi8mdyMvg91qBq8eGGrzpxg93G8Unrx8dcbwRZ5snHXXaqdu60+REe7IHBjvZQMBmopRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nnLORhi8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nnLORhi8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA1FEC2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785086433;
	bh=NbrZeUMCRSQmjSXD1uypfvEwjIKHhku6W0wE7IqEX4w=;
	h=To:Subject:From:Date:From;
	b=nnLORhi8r/Y7BuZhZtc3RgKWfeFtVHecDOkDwwUoGct9ejfoqFREU8U3IZ7kkF4U8
	 x+Tq0v3igFb2SL9Ijs4NPnuc3+8lPKVvhjuwolzQdE0Y5a5PugfygWXISBkbcaCPXZ
	 AYPN1v7WUqvqH5qhqb+517mXxkjhhgjHxGInzFR1rfLTUEr/oeEXug7uRsFCyXHMyJ
	 Il5kExTXCoQjD7ddGWtDP6s7bS65Tc0l1DWSxVfdizwgQ9srMxHsVUnZxMFASRTO+M
	 WMGMYyh8Rqqmf/mfZOnLMu2+ECKbC0/qix0B09WjMV+9fcoKpBcGv4+4Uapz75ZtDd
	 eav+yxX9Xv5uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A828AC531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178508643368.6028.8069669650993791963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b91273ecce3d180f66aaf475c77504d82b4a6f40467e868f7fb4c75697ef080e
Date: Sun, 26 Jul 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785086433
