Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37458253358
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757132394; cv=none; b=SXrZVMNYpi83ibEKulc+05m/dDpqiq9DNUZJdfTQSQFESfPMP+HhB7DFKaH4T9RJNolgLkjC8Z7oAPJuOmcjWtgKFcor/xoZF0I9Of3rc4KHv699f1tl/upX7L6OL/G60SpSFE0PTIBwOdA+lyvz/OrYjisyrqHGu2mAse4ptxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757132394; c=relaxed/simple;
	bh=/jky9aZapmZ6IJp6ykL58HaOGcJItIsG+Spgm/m2fpU=;
	h=To:Subject:From:Message-Id:Date; b=MHk+JpL0EuGCTDCIdWA97AuqCX/kLW9UfDbFq5KGc/s6uRNqflN9UQ+rBF20CXYbwtESCMl3eCedIQt0qLfmm0iJ9qWhJ3vgFJ7aUndzJQbhfGi5x/G/kHpZh5PINTuOi0YP3pkziNwsiGbsYpcSCVEmn6M+I6rs7hPNnezXxY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZzVMQVV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZzVMQVV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A596CC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757132393;
	bh=/jky9aZapmZ6IJp6ykL58HaOGcJItIsG+Spgm/m2fpU=;
	h=To:Subject:From:Date:From;
	b=bZzVMQVVHskL40AT/g0fBVmkbEqxNA+I7bPsI4pgb5tp8MLJclU+HGkoR8C4VsokM
	 cKDZqlT5+e2gS1mQ43mH4UQSE/Cf2ziLo1vkAj6UzGWXeUFHzUMv9vDK6dmgZZyFJu
	 ouS+6Qc2IRfwgwXzZVdPFxLhOaG0CmEsFVgPOJ5+p1fpcnHmSAqlESLA11Mvh12pO4
	 2EbYSPpG3yF/bSQ/FXxB+MEB++QsH/HhPM+FeBO6Dpm7uOvgBQbrujhSG2Pw6i7aL0
	 BXNt2YaG+5K2EQ8HXbFUPOCxr5/Dli5ALlClZgHKCHWgHOxt8NfXxNq5ofcTlvqJ42
	 Oq7osqjOfJTPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AF4CA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175713239358.22605.10845803720679341812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8f2a57a08ac61b3f0a0255df3a4abc3a556b071097359081a9064c4a4380311
Date: Sat, 06 Sep 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757132393
