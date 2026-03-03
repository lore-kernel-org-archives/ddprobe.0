Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12D4937B3F3
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772555694; cv=none; b=VsybU8mZFCMjHmMqbt1DQWoA1nqmVXEkO7FEaz60RIHfy4mj1BqCKpg5kFyUlAWurEn87SNoYCt609Fk9wwmMqfNy+kgs8dAjb5Y97rhr8P71h8IXI1xwfLETgm1FKOV5RjpXXy2qEyWfPDwvEY207sOIHiGBs2ZqDgPxSwEcKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772555694; c=relaxed/simple;
	bh=ftJG7BsqWGUQygpgKTr8ClkvmRB5OeLWtMTzV+xor/A=;
	h=To:Subject:From:Message-Id:Date; b=OgmQYcW7N5OtvKeXK9YxuccddZFyY8y55Etk5WTMhRTH1e7fiLa62KfwEDNKvNA9M+9aF3JepFulBpeXVry4I/AJY69TC1V7ngCyQpnR43kNFknmmbETYM5YJ0OF322vEuYBlMrIiOzjiNEdXmt9UBu6d6ViKFksNgqVRHUx4mA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=acvPMpFA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="acvPMpFA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB25C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772555693;
	bh=ftJG7BsqWGUQygpgKTr8ClkvmRB5OeLWtMTzV+xor/A=;
	h=To:Subject:From:Date:From;
	b=acvPMpFAytu/EJ4pF0Huqo5XUII2f5Q5u+n/gkhlh6o3xWeqY4cuh6IDagedCNYA+
	 bQtDNxWPzXkBVJfCuzYVIGsU0h437kMQdMcDX0+5jkaqRG/Sr/0vUkq0bdZB6Q4oPM
	 qguG4boZmKvJP32x9WYho6LZku99LcpGpl9LKjkXdiIsnPMlaFLilK8oLVgBKEYcUT
	 4KZ8tGMhtmfM4wK0CVJNaZaRXVIVAcx/l/l1TqpbfuxPDzWREcv6+Jp3gmJcrbAgiq
	 glFneNd/lTHAFnWOvwClMwPx92nfb+Ysf0NhkOB1mdVEJG8Ci5Iqo96MCZb9zJ3VpA
	 5xUEW8EEKMWqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D9EEDA694
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177255569360.4984.13010097097315574705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13da887391c516e1e095458a1cc1675cd8e3e202a2b13ddfa683a2d8801ad492
Date: Tue, 03 Mar 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772555693
