Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407A417DFFA
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791702034; cv=none; b=ATv29x7S26r57vsKhj8F1kkGBilu/TNHQ4fE+JDiuILUFVLTJwH85Q7+97f6wALwERYMwKYcYev4VJuUwz1jNmHSXRRnwsWsFLGBJKDuaqzF4uQM44K3KmNwrB6TIelM2hW/3cKft/3xGJC4SBn34bA0WhZpGTzz7GQU49/aV54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791702034; c=relaxed/simple;
	bh=7dRoDfkZya7/HgT2W8qlUNA6iJdjRzDyGysdmjtyMbo=;
	h=To:Subject:From:Message-Id:Date; b=A8owB4NrLimz/LYg41DS1sXpyRH9XEVarF9jNQ4MCTzP5CUZ6/EC9S5PHLCPelRKcVIUBpQxLVuExdAxp+7oS3xyxFGUbBXyXkDpm/796COZL0FwfHNXUMqJ0pa1+THOugqFR7uxXhLB1y0EXyjsHZhCWujOKD/RxjfrP5uVsf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C3ffDom+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C3ffDom+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D925EC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791702033;
	bh=7dRoDfkZya7/HgT2W8qlUNA6iJdjRzDyGysdmjtyMbo=;
	h=To:Subject:From:Date:From;
	b=C3ffDom+B24Pa2+s/w5jThrLodd4nnhbwGMXOfbGHk/454ABjXxW4dvEZTMUHk4Vi
	 DJ/fOjO6Xlm5It8MKvsZ/3XpXDdktUYZF/LCPZukz2iR/S//r2Tqpyh9DHv2l4uElX
	 hYXmCjTaSnrGxf05zqleEQsE1oaEhzRGIg/4FmLGBbS4tT2m8hwffB2btQLfO9ByJg
	 HoZCLrCMtoTm6j6nx4QMhw57Qb1JcfVK/WyK2gjnhAWVp1Ril4cxb4Y7kGMio301Ke
	 LuNqHR/m3Otkk2T+igyccDJyTe8bb/xgWfcv+rT5f0NySW1xLszobORXbRXf0jkaNd
	 U4vtINKFqLUgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2DCACA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179170203369.16764.18371367859819208498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83bd557d258101ca794ad6dab016bd4252acdc5793b313acea0398230a738660
Date: Sun, 11 Oct 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791702033
