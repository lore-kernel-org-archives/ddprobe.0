Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3AB2417D1
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 14:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780237474; cv=none; b=eb+9XGvoR01r8Vai3GR6twbHLPXW/l2FrQfrdBo36TKF7subWa9cYxMtlIbvFg/iSu7dltYEq8CK5qf986+UqBt1E/jwRnL0b09X9C7O9nn5fo9oNQUyCCnB8sY/UTYDpfI+Wv1gly30c8qJu+hC21RFvfd/FFoPf6m4ckM+UZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780237474; c=relaxed/simple;
	bh=woEqRj8I/DN2ESXcW8hPC/4N8xX2Neq7bdgY0an0FYY=;
	h=To:Subject:From:Message-Id:Date; b=H03StSef6d0bg0QSo9VL/2UU/20BRzg10U9UAP7O89huMiT4OpmHhCghQF7Fw9/SMO5YrJA6QHPcl2WvPhceE24XYkm7SnvDWoTnA6BUZ8y4oyCkydc0Oh1TvVhroPhPNE90J71S7qVoX/wqzcRu+IEri1HeqSjTUEakP27MFTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FyPV8EWk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FyPV8EWk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBEF5C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 14:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780237473;
	bh=woEqRj8I/DN2ESXcW8hPC/4N8xX2Neq7bdgY0an0FYY=;
	h=To:Subject:From:Date:From;
	b=FyPV8EWkpR1v/VXGCe+t6lEb2fjDeYWXhgrxPpYBg1dhG+4UKGgagVCT5bzMwoNbj
	 Fy8w34cg9BbqVZ0qFZOmoCvR6PCnOdJ4Aw2rtXISoZTySLICIsKEvYGtQdkmXNbv6h
	 evXJAmbWVWUZnkof1RBljekl+GQWqUfCW0p6FOVcMX7OQdJL05wC3PP73LhTmoErho
	 OBB9wiUgKPtpzG1mcXO/V9V3WMqHytAQ2XUebv3/6nrc4PctescIG0V6bPa+rDhOwm
	 kYQPJzwvqTh+cfjZk4IIJql7faEFQucEr3soyq7BMJAyyDT4BQsUSjNXw7DYAeNKfW
	 eduW5vy+MoMpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD705CD6E5D
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 14:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178023747367.21384.5445914798159964427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7af655880e15c77ea23957f2f82163d9781235da58ea75f53eed95a9cb0b7db5
Date: Sun, 31 May 2026 14:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780237473
