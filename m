Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333E71922ED
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734123954; cv=none; b=pR/EX2bl9LDn4/7WZnRu5qYIw2YVGxNMgnBVOefX0o9rPitV30c+76bzC9G0xovTnicvfTeQZt2P0IXwBDVOmh/liLVtCj9Om3WWJu3koI9qNF6FbAuy9J3tAtm6io7tyMVrnpF0Cyp0mn8HxDJq9M4iUahp2/vzmFUuVBEPiX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734123954; c=relaxed/simple;
	bh=yjT4CnQ8PHJr0hfoi5yM1LLp/Cr1ELAJzaW7BlihQKk=;
	h=To:Subject:From:Message-Id:Date; b=gWn/8b61312ChyCIqb2iRRAqdb0DLw0kN9E2a9GU91bT+566kNA286Ya684m/jd2BPa/fgQUNv0pe3t0zjqMm1bSRhiozIHz964LHs7HOwbrECwKMNaSvs2xhZl2eIsGrjEq3Or0l0zqv+09O3H1RFcsqUXClE3wsLexwMYwX1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HhjiN15Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HhjiN15Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD90DC4CED4
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734123953;
	bh=yjT4CnQ8PHJr0hfoi5yM1LLp/Cr1ELAJzaW7BlihQKk=;
	h=To:Subject:From:Date:From;
	b=HhjiN15ZmkQqA/WgRu1vKmuzyRW0NYlEt3IZVzxgCPhoSjVrcrzWcDu3WEeymr5xu
	 xIXwfqzpNtjz8unX9Dkkl/7NIOZ4GTxZDBYBzvrVr2Zpss9mYLWuWDgRQsOC73Nb4x
	 qUJCApTBqayaoXD18EiZyL6H1MSeU6wIvG4uWqvh1mnCVCV47HNaUhDoyAPly68Yz/
	 6B7IZtuyd6iWBfNGKAqY6ep2mK1Fbwx9whU7dR4i9yy7VLQQ5Ys6QD1Of/EulDmDKG
	 qzyLLx+h2Q1M1uAH97GRyAYZtlcxJvkxEBUIJEa9eFtixhmKAcdX7suRbRXJi8nHmf
	 Dh3urT5vfbqjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3D76E77183
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173412395366.30697.18386873457243449145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f79b6554459839f8a4fbfcf15d8e3fa56f6fded8f1b093b9291fdb51728cf30a
Date: Fri, 13 Dec 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734123953
