Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3349F283FC5
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771445094; cv=none; b=GKM8l+63T75XwNzLEtPZlwGouiAI1K29FEOTMhiryKfQU/qc+M0s8cUWyOP+ihJV+ZhLPrcx2eD8MdXltJf/cckm0tIzCstwLBwCEZExviQNwwInahCq0g39JXlgGM3pX8smTqXhHtHTPCEw94g5IzDqAElw5oWdMEZxm9PgoRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771445094; c=relaxed/simple;
	bh=FxgCuG0l4SeN2AXK/3NyaMrsMJXTEqG0MA1rodDHxwc=;
	h=To:Subject:From:Message-Id:Date; b=Zqn1tlohnCxgfZN76ny/pk7dant/Oe7Hyr+IPSjGfVgMahxkBBMlru3g8QfnmmSTJNwjHSQAIgckZuXjCIha3ZTsORXB/OljdtpUEHW+5kXl1WUQ9+a163Mh2zZQem5xwWkhA5/oijG6Kik2Kwi/K6ntSRRHZDCVKRxk9/J3NPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iRCmRrVv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iRCmRrVv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C29EDC116D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771445093;
	bh=FxgCuG0l4SeN2AXK/3NyaMrsMJXTEqG0MA1rodDHxwc=;
	h=To:Subject:From:Date:From;
	b=iRCmRrVvpFNABDByOCVj+BUbjXPSmHQrAxTdO7ZxCZAqmDv9+oYfUEEcJAZUK9JL6
	 ByLooGOnWv/T6P5A60/bfJ9xWOCfzFbjXiiWynW/yeJ9+3YtLWlsY2vlydRr9OoPfH
	 WMRKrAa8lcgmreiPWqp2l2gs/kp2q5ejCtwtOmUaOXUi5yIyE0spKBOl0stBsqJfmC
	 8PozZMxEdxyQ/ekHSKHbwLVqaGydZxobI465Z8R2rQhG0vnMre2KfVANwkmFVBuQGU
	 uHpjUjfx/1jGnUB1gQO73WfoxsEwCE1nHFXwfDlF+w8D6lL5AoxxaKlhzdB4bP/EP0
	 gToFvby1MBgSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FFEEE9A02C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177144509364.6083.3294113558627475520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33376d59de6ed79a8be1f620aff57db10afe6c65f2f86086d32a63d16f655583
Date: Wed, 18 Feb 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771445093
