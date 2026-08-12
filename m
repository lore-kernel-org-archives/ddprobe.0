Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5949B33F8AD
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786568434; cv=none; b=otanDq0FhLYYA8SCuSf4LyKAGB85WjlUuYJ8w3baGZSCVgfgkcpqUHLJkJl3zXUNPc5Id/zhnP3gCAPYdq0TyMxA75zQ1zxULSJjPdb9yjEdAvRVo2it64AUgGHrKxCQ5jysoztNdI3S6eqaZy25rl5nCpyCQoJ+iRf+CM2UOeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786568434; c=relaxed/simple;
	bh=30IZHjETeoNrttrGc2fEdQ33O2a8UMDOp3irS0J3Ta4=;
	h=To:Subject:From:Message-Id:Date; b=ssbtXSjjphF4/PPVxrH9AH41BYj2a82+x2+LnPAxO+Y0wXrYFiG70bSTGRLDqEoGOafBPYuZ+R8BXAnc14rV5qzz8FdRlo6yHep5vaJQiDXjrQCn3MNHB7XEzA2zPxQ5F2nCYH17hlIDGHAfeHNxs+0R/e2Up/g0gN+EJ18QP3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wwjwkcja; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wwjwkcja"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B65C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786568433;
	bh=30IZHjETeoNrttrGc2fEdQ33O2a8UMDOp3irS0J3Ta4=;
	h=To:Subject:From:Date:From;
	b=WwjwkcjagUbmRjWC/mins0XM4/0+EGwKFt0bKJDd15Zhu7B3eFVGuWlNB7LMDZjZ5
	 QJIZQd57PbvR52caS25DPEnIzWDXRLgvLigskXNcznSDSfrkvVQo5Gy84nVH7zFjrf
	 if2aetkDf3v4s3av2kRgZCjU64VsLE6bomZpLVyhXksMl0fPLEa57QkcmWgOUmVcA1
	 QXISvmOaqvh2zc57UqWhhyVb9EjNNtYk3o7dGWZq9za5Fn6K6sw59zfxc64+u+UrHs
	 ND8UPlTVKORHaO6zmqN3BEV6x2f6WyemCFL1S7om+9mRLAdQyTOvI6rkjRsfNegBdm
	 lGyMF4HrmFSWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF646C5CFDB
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178656843370.17881.9787931271454684110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d75aa89e1030f5415c9d41a5db0bcc087cb230f026354105b6c98e37a30778e9
Date: Wed, 12 Aug 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786568433
