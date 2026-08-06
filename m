Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 755A2431A30
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786011634; cv=none; b=YQ7Vvo9qBQX3speK3zKXrLnEWEQWl+aRhcmuYvo7HeHO4cVxJp10AALZIjtjHw33vY7+z6SCTGywVpoBBqEc0m50q8h/vFy5PQUyxQ5VSg6xOVMIu5pD/HOn4uJsCyBYHKZCPeTVU0bX06yu37AokqkNjUljLtksj7cpHJPpWOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786011634; c=relaxed/simple;
	bh=S7bjys/erxG2CZ6Vx9p+AbYRHHWCPXcphn3ABC4cDYQ=;
	h=To:Subject:From:Message-Id:Date; b=BYSxxy5u6LNGY/lL4M+LTb1++ZGa/VtSgG6x/pqstzbX9M82rs2OfnLitnZ4kQD8sPV06gGsNRyYApbMBxtQOWmvqrj1fhp+Oll94nMOlxCOBNJ8GZZcGJTVHUhayKzXwemOyi6seODTgyVJ5tBBpJM9m1ZN7nXtwSUETZfX8QE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CKhVaJrE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CKhVaJrE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C81C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786011633;
	bh=S7bjys/erxG2CZ6Vx9p+AbYRHHWCPXcphn3ABC4cDYQ=;
	h=To:Subject:From:Date:From;
	b=CKhVaJrEjNm2AuvCc8i8SaJJXdy9WtQ72neT/lSaK6xowSmNYGpSTWcV2DiTV8DxH
	 Vxh/HJP4UvKqKMD0LCoMWkHuOKPpDHOLC8uiL4GIcYCEw1IK7HDCDeoW4bGdpgyc9I
	 XPDKmnWE3oLU9RfTz8vOzbtmTAHlQ3859gW7LwplPqY6AFSuyXbztlHQEpyZD2l+R7
	 Si6i3CBsHssfijXrymGMwg+el/Z5Lz8haypxCgOoRd1uY1uoqqc3xVDi2zEbg4vMeV
	 f736uhnBMbI6hfDZyrUaHjIY+V4gPI+7f8sRcVeWv1o/M6FpkWV7Xg7wEkxzNIP95A
	 75uj22732lWag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB94C55ABF
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178601163370.18326.9647484596977804121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 885c3fd99fd523d6e04065524ddcc5d5bea031ba4d048b73f3e028d8c805063e
Date: Thu, 06 Aug 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786011633
