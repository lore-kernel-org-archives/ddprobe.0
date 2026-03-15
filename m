Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEC6D2571DA
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773561893; cv=none; b=r7CUOCjrYmTsDOmNOXwWCVDLIS8g2Xy6lWfxPGidDycqO0urxJ2bJ776FJWMdCENelIwWvN9yUJOiVV14GoOsYHH5Hs8MAN/KZAQxATRTdZFhma0HqcanwhpzRRXfZbwfmVsnlpxdRBvD9uf/O3iyTEOoRORURMr3XP7FWK9Krc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773561893; c=relaxed/simple;
	bh=uc5ZMNVoKWd9BYMkMxfqDBynNsHdI6mMIcsrLHC2ecM=;
	h=To:Subject:From:Message-Id:Date; b=RwwcqBUiSikF1+WqGlg4GDOjZUfAr9szRtJvfuODZUmJDXuI70rIvRyNTZItdaesaIQ6oceqnkijKdCWZ1VxmKaH58p4+qAa7Jjsh4rT9HLt0YUfJ4SAcCdr1+Xiqz3YsvK6/NqFu/LI3UlSB5ykABOVUpMrMQ1umDPedZ0nI8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iwnzHYHm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iwnzHYHm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4603C19424
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773561893;
	bh=uc5ZMNVoKWd9BYMkMxfqDBynNsHdI6mMIcsrLHC2ecM=;
	h=To:Subject:From:Date:From;
	b=iwnzHYHmshYchtrgNDztgSMGMhJ17b8hsG0akBusbWVRt4xfTsTHj3RnRB+5kwl7D
	 nDyhnuWC+7M+uhHDfRJJp8vnEJfnBghebna4W6C9kObsAxw+zm+3Yi/VBEs0XNA/21
	 EZ4A9zDz3pRf+hbz0leiZmum0RGgavPwS0kHYitDMYkXwi0La5Miqq33WYFJA5GUhn
	 +ag7ZozAlS3ephNIKXIqsULJphTcw3HPq5K04LNEU3OwotVAXbKdoIK3BrkeBZ0jGT
	 7eaMu+myPS8QAp1eB3McmvWSNPkhWIqj9kGA0x49ZStC8ZdjkENWLkyESstDBDlLeB
	 2nVEJZpTh7PEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95065D58B14
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177356189357.11574.612887663965950494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47a68a8db439d2d9f1249a6b9f17fd2d6626d6cee5134be7c3b32964e2568233
Date: Sun, 15 Mar 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773561893
