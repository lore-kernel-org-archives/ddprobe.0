Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC652EBB93
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 11:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765281174; cv=none; b=nLcM0T7pZDc74GVbKj1O2JMmfYqhgDytysacegmIVEKcQyIryGNk2f1m4+PPXU50VY2H2yY/a1l4DXvHPGOP2AWb6g38xUiI6e//4yJpkMc2EuJn5GByaMkcdmsIt99qiVWloI+BOtVVwKc2EqK7ZNzU/labrNysHZgEQS/vFu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765281174; c=relaxed/simple;
	bh=6oklbM5uFtC4pV80cdGVliIbWfgo3zkx8QjWKxd3rQI=;
	h=To:Subject:From:Message-Id:Date; b=I6INPtX9j14oorhFVpAlxyIFASnpj0rjX/+7qW9aZTDdP1ipm+h9qg7KnGZnTo3162URMxxyrExyZWLP2wVMqyYsz6tbABCmg5zwoz+Z5QNtDmhu0H9/pVSumddMWzh2Ph1iIH00SPVYR2N5FHlkmooTs9ReT9w6Qs19O+tjFBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JoctpDLb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JoctpDLb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4C92C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 11:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765281173;
	bh=6oklbM5uFtC4pV80cdGVliIbWfgo3zkx8QjWKxd3rQI=;
	h=To:Subject:From:Date:From;
	b=JoctpDLbZw9ogQR1MkwIt2nZomLE1sfgbRNIFQFn8NZ6r/uZjEK/V7nbXK65d8obI
	 cmo7sy6WM3VurTQbTIddRgYMnaY+behSwIeeCoiE46i3eIPPaeGBilyBL5zRfCg22n
	 gCAu4jGV963y/+xi+E0vYIwvyUP7woPny379nu4QETv9SMXc8/rovm62Vd4gQiMcG4
	 iHxECCvB+EL6ZGSD3i7/xM2Lb7Mk8KUS9FXata6lz+Gls4Zsvtp2Avm9UwzvzIRFd0
	 8FIVaKl95weAkMDM0ZJauFJR7OUA9O7OS12b3HQyylu4yqGw3aZ7S46+dc21ophxVa
	 bDHH3EF9aUEeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D319D1CDC6
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 11:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176528117363.9796.11621672253383235534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20e3c3e6a6b13065ef42524125ed5eb5edce15d804287cac5acbf3bbec1df438
Date: Tue, 09 Dec 2025 11:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765281173
