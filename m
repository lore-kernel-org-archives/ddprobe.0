Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D67A225413
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 06:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784096314; cv=none; b=TVbIXN7DZHPBQ70Ez7fPKQbTis4hbjTHITnPg5zuM4FNrskNrrgvQEEYBvEYLI1S0dLxgzJXxlIuUT7AWUf0ufzMXz/pD1m/gmn8/Txc2yfJAULbvkPZjx69UgyL7FW2eIbxbMiZ/1RKU2VgyLHkYDCkhLRGvbx3RYWPBPpQvrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784096314; c=relaxed/simple;
	bh=5WQP114xTQA6T7/emZgJe7cuxmgp1hotb8TDL4eqxP4=;
	h=To:Subject:From:Message-Id:Date; b=AxndVBr6bkQjzf6VYia2yo6fYn6i97Xk4l49kbStETnlhj2bJ6PN5YvDYPXg/dPWyagZ9GE+gl8CJ+VtS0gc4KAfWemrMf7ccYiN3UJUd45DVWuRFS2RePNuSDmDDyMJ6+oecyGqsizBRbZyBxEYQmZgRT1dKPyfyL9V9E8f2jA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FCsePGHF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FCsePGHF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B30C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 06:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784096313;
	bh=5WQP114xTQA6T7/emZgJe7cuxmgp1hotb8TDL4eqxP4=;
	h=To:Subject:From:Date:From;
	b=FCsePGHFPZLm8usH/7SSLdB74ilrpszMjfqhQdX/VUghbWhHQOsRfydOwdh/MIZjl
	 OPslQmjSOY1H3IRbranngK4PRyN1X7+9y3TBX6OC2ydZej0v/m6ZJd2rrhD1ay9KPW
	 mzE69FV04ekjDL8Bd2yKGGpMsJepSNT2UhfYH0SMpw/c17pKOaio/jlBJwq9dPnU5x
	 6JRT00me9fFwHAoK2+C47dLExbz7tUAJiCyYtKhZjD8Tjhl3p1rYYI0ETXaj/W3pWh
	 m0HpL3EfsIqW4N8Xr2YkMVKL55Jrgm4rV2cZsp/2AjEBmf92O2YofJxUO0bi+TVYwt
	 x2yox9ke5zlWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADDAC44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 06:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178409631369.7234.349677091917190723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46e056a0aec987767917cdcbeaf9a3b60a8f6ef7bf56fe4b18b43a3dacc53fb2
Date: Wed, 15 Jul 2026 06:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784096313
