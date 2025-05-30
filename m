Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 399F11A23AF
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748583594; cv=none; b=NEw41zuPpc1sUnZBv5JH03Q1Dv3dAVas6uIbLHxstq7FjM2c09YxlQ6dg0+qZVov6k6VsA7Y5DelQYzxTN7MpRtJ5URPmoxFjfKeLIeDD4ol0cYgD4pTuvuWYTM0CiZ0YLiRDKiLhrNuUEHOR4zhFmVVSSFxVhTkrhYlNRlbgtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748583594; c=relaxed/simple;
	bh=wHh57IzH6mQirqUa5HLBPSbsz/gO6yswq5+qYLiZjj0=;
	h=To:Subject:From:Message-Id:Date; b=cJS3E35aRCpmMeEIznn0ydriTuLdLyhZ6EYkBM5KQ+tJupkhuiNqk8FB2etGDFstKM2uzVrX/NlyVWPQ0L7h35e0YL9mUTJ6kcyvHIYQ2RejkASSZamZbBthYTj5JSd3XumR4hE48t5b70leJJtGyvHC7NCI8vUKMdthP8E9QSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aJuDVSZl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aJuDVSZl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB78C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748583593;
	bh=wHh57IzH6mQirqUa5HLBPSbsz/gO6yswq5+qYLiZjj0=;
	h=To:Subject:From:Date:From;
	b=aJuDVSZl7PL5zM3eceYLG9LnkcebZ8IkwYhFRS2/+nqdga0UAIDYRxzug2grja5jI
	 SfclyeRuCD6aZXEjNuJ/BulOkOeAZEgDqr54gycXjOTW34SNKWGOrxcuOIrAbxlUoc
	 ZsxLzO/zS4ogx+v7+aa5PpZucYcfTnenfX8A/CYo3rUMmrAmbdE9nWgWrewGl4NQWp
	 GhZVikyUOyBUbvgiXiTrP6uJpzANzwLy8SwGCmfaixE071uGlkfLQSq8zQRIYp94Sa
	 bVwWugOH6JFYZV61aOiZMySQmhwPKQnCibLLVbyhk/O2N2HNJxsjeB+DC/LuX8sWOb
	 t0mgDNnr555Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9064BC54F30
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174858359358.24015.16044141323939795707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a0be6f2d7fbd08b41773fafb907bd03bf8cfb874f5b2264bc4597f4968ed1d3
Date: Fri, 30 May 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748583593
