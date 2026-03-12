Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08C083859D6
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773297294; cv=none; b=aQOC9Z6BVrven2Tt1t9JAvIwxzwsMZLbPtBvWeQPQTlJc7s7OebXyrtNg9q0r5RE+uar09+T/ADkx9nIj5AEQHTsyVpsU6YHV2d3kZYYUCYjSf3TyZZTGi2RuDoMk6vXXrQw0jTMIQYdLBEXAQiWuyuFVM/EaHG21CbG9PPPRGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773297294; c=relaxed/simple;
	bh=+VM68tzMagpARfdTFKy8O/azlagOY+MbEEKLqvM4wrM=;
	h=To:Subject:From:Message-Id:Date; b=BHc2nN7H2UcmGTu+3VJayuXX3nCaJMObR7ee0oTU5TeuS/6j8ZdcSpIln51/JvBqztmF6vZ7yr8Yxz1V1hTTOud+Q136SPwvXNlgNsM9QGp8VU1OUnD6YGLn4sXCnIToP1Q8z7b/KSnG1PNLzEj1wA9vA5yqU9e5lopa14U4dzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BoqUtzDx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BoqUtzDx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2315C19424
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773297293;
	bh=+VM68tzMagpARfdTFKy8O/azlagOY+MbEEKLqvM4wrM=;
	h=To:Subject:From:Date:From;
	b=BoqUtzDxyfoEhxdDGEoRjt6a9TXNCzdeV6eungLfps8k5sfqkpXLwCtH6o2ooO5pG
	 PzAcWLLfv/nthJd4pHjL6xBrglJAtwID5TH6t197jyJCrARQapheuTyeomVeUoOS6k
	 G3VsZe/c6rqSg9pBWiDsCiVehDljKHtHiwBVPOmdUJF0tracr0A30QuQAfK57myEHD
	 QpnF+wTgFOAySlq3+2Ts0azqKUbyR4A3qZJr60PkBbawQgeEn2Zru0CBNZps56KRzv
	 N76rz5sTWCqyq4YTCQBaiQJ44HMDeAeoVNrgpIRtPtYonw7c7tJP5TzSK+P4HeyhS1
	 Vfs54IG/k4L5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD51FED2D1
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177329729358.1686.13605272031470087483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c57700c1036c27e1d2eecda37ebebc3be3d3550850b219e1de8e90bb511ecf5
Date: Thu, 12 Mar 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773297293
