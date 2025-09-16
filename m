Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 169F627E040
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758005394; cv=none; b=qvyXRTP0VMeG2ySLL2VmXSvwKM1AqGYtRPNH+JG7koHRUWIO/og3v0pZsDIitVRtTCoWL+FB+ZfFrASeA0QjOB7fzQYsDQMIzXAkXI4+UeV5AGbTQgR3/SyCFXvjIBuAh89ZwR2uNmIBWDZQ0BhQznuywkWkivebrLVmzXowSpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758005394; c=relaxed/simple;
	bh=+o7hXtoJRuxgmhVQCTIzhYQWZF5m+SsZcVkzKk7f+hg=;
	h=To:Subject:From:Message-Id:Date; b=JyPQXbBgTAEeDGxCr3K0M8tcOyXkVFnYade3PmQGgJdKyeEWoGSS6thTXv/koADHp+8iZWPM7uzWLG14+FDTuRjbuY/hrGbp1SlT29ww6MyKEied7XDzF7UR+NF8CpYY+UGplP34l/TZt5E1C1lzbjIjMrkKTNCekGYauhTfQHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IIt7oBHJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IIt7oBHJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1D6C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758005393;
	bh=+o7hXtoJRuxgmhVQCTIzhYQWZF5m+SsZcVkzKk7f+hg=;
	h=To:Subject:From:Date:From;
	b=IIt7oBHJPstKQieMysgJz3GaM0l2/DRzJzblroujawf7nevFu3UgMv5+vOARWknXq
	 mlLV9cmhO/3yXMo8who3v5CJq8EKwsN+AznlEvEu0BCdCBfg2uWd45uF8yyP4vHywS
	 tFbkF4UQ8KwUbdAaASyArYMJZf8Gkuttj/DD7eXIgXUkUbhQnxPuSHACSGQd/YO7QF
	 xzoqiHa4dryD8gmVDQFoYlvtO1F8HhMvZG4rtozTHFgoL4/kOr19mv6ZyvugUmJ2C+
	 VEDGOi/sNrqUSdRJiTMrkzsBwKKLbMt/24M8deSuD+gFLhZGob8UvcZhcH/HPTcrd9
	 4HIYmKXL/VfGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED37CAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175800539357.15496.4155197728168190148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95ff845680b0f6e793c0eefe3b2e9dcf98b570be6cecbb25e95118b5e82b72ff
Date: Tue, 16 Sep 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758005393
