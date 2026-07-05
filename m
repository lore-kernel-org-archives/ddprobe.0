Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 542FD346E55
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 12:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783253914; cv=none; b=qkYZfCaXSphMTGyASD7BU4QwYczZqndKmtHzxGuxwshuqjbqdMK/5QRxSFkUMYNDQSmLngSk4xB2K5PG1LKLbwP5EUbYb3+Ft7tkQO1Rt0TUg7tEF5qnv7q92GNH9OiQVaE8380ysLWPRag0PwBvHjYfbuplmqN6DcIxEAURe4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783253914; c=relaxed/simple;
	bh=yr/3wvUSVfsLC8I5IG7x/GSMn32ik7djG7QNuQNmgxw=;
	h=To:Subject:From:Message-Id:Date; b=J9KZAd7H6eUNomG7InGrEdj/T7yZaWn55EaLkneNl7ND3hWdAobimvF9/rRmlqkt9HB0/cyfcmpwgrwxtzFiRx/2FOYcGVcEa3gZfZ6rNhI0OnSkDx9Et++8h1fuS40Ryf+E8+bnPh0RFfnrDpKps8dS1uLYPhuMwOdOXgA4wes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MDDEF0Ra; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MDDEF0Ra"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD37C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 12:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783253913;
	bh=yr/3wvUSVfsLC8I5IG7x/GSMn32ik7djG7QNuQNmgxw=;
	h=To:Subject:From:Date:From;
	b=MDDEF0Ra2d0KwgWr4MAbDVCuAM7tDgb/V2EfnKTNqqOQ7/+190qOjYWqQh5YxA0Dm
	 qhe+91nV0Gp955ZCqiTnIm8e8lZbfwMijwtmlVt7Z/TZFA2Ch3LgNdHbRuamQ3hFaK
	 EInNs4H1QYklgJNsc6rgxf2t4vMKcN9OnznJ0wpGB9lgvzNTNpbrNw9is/KdHaHpI6
	 DJn5DYOLkFcaJDx9ovH47jDLngZlMnNjBr7dk2mMTsZEPBcAxLZ26rwv6qsjlFG/Cm
	 aXvgvu/+EijsJK9Y4pnQDwudjkT731qhYNMPSXsjwlox4o4WqrrspWBVNa9FhIxwYT
	 bErAKPpeU5YFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8642C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 12:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178325391368.18685.11845661772509348829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66a9a217e27faf081dcf05a9e9e164f9c36dbf5924879d4c81cc5218458a77b5
Date: Sun, 05 Jul 2026 12:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783253913
