Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60F16282F3F
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 04:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784003914; cv=none; b=iktgmAyLX/29nPyDeuVcKfwvINcxQRq4JxVGSvZ2cRSDvFQI3VTGOJbEyy+/ZlVhuXy4qZ/Q8kCdtkEceA371GjnT7g1ber7bjXUQrrz3pKwWfzc/6nr6K8V3flIJzeccL1kk0l0oIrGEMjsd7aWVA8rJZSnKid1TkOFNuvlg5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784003914; c=relaxed/simple;
	bh=bdHDuqFjRwa1GV6T+I+dqmluoMw9QaarhyWhzgYDlk4=;
	h=To:Subject:From:Message-Id:Date; b=TMIfAqnuQ+tChI1xtDDuMuGKIedoLycWNAm4+vHOmuEcEzNXyuQHEAR3TOBaP+g1sQyGNSeCFkGcZ/e6vltCUE5QL0BUW/qdK9Od3ixw+wSSKwTe7J51aoTC+k8NKYI2bOdF+xUSs9/Qddc9ZLu8SNIw7dY6cP+dSP9qx8dmzVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l3P/96pF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l3P/96pF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0249C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 04:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784003913;
	bh=bdHDuqFjRwa1GV6T+I+dqmluoMw9QaarhyWhzgYDlk4=;
	h=To:Subject:From:Date:From;
	b=l3P/96pFpevxUltAMb8z1hnRJg+wpXvmVZnXpDNaiV5YPq7tae6/mqADG3rZ8tEZm
	 3TwwUxysMvGk5F6iGjsM+GqVsPaBHDynJXKtLdgwBm36np+ulqq3YfEcgS1Qu9KAs9
	 J3Xyy6uJj3mE/1ac2LJl0HyG6ct/9WmCCZP6TU6jbukUqy6ERj+18klp3U0mnsbfiJ
	 GXKauY+TeEyxk0VGdEyMEN/prBU4FRMXZxR3k5Loz/HAKnqM+W0lJnb+NYv1ldHr3A
	 3v1HdLUeLQ9g8Ys60NbonbpN8avhMtN8Kv6tMchVDVYOlqZl512eRVAGEIEMcL5Ffq
	 kLdTmVn1a7kLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE04AC43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 04:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178400391370.24750.8198609182043809493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32be27e1f4dfd4cd4e7634e709d1c79cf50ea019ce585e8b148941a6f517219a
Date: Tue, 14 Jul 2026 04:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784003913
