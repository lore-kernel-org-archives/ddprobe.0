Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2B22580E1
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770931494; cv=none; b=FMHFf5L/ojR1ZMLKGVsg6y/uiwHN/jlJc7DCnY0ciiDWbmzIlJ1Z8T52xkmDZJPJNsn17I5qwlHbfVh1I+mwbyUIN5ILEsHd50HO8n6FIZXBN49htzHsS1QC92Rj0ZhvTa0gO4UCEAFsT4vyk04ggU59fV6r1fLKp6kSlDTQkOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770931494; c=relaxed/simple;
	bh=cg7egYnQt3af/iN3JqpwTHRPq2FQ8iUw0DP/I+Pfd9U=;
	h=To:Subject:From:Message-Id:Date; b=WnJorpLLKkWoJxS/93ZZEsAPFkRR2EYu4b08r8EtJmodwOO+G1OEGmsobl37vK3GdNiz03a0wcIkVCuXZA2glANUkV8ycmYor0Cbjb11YFbr8xZZnqd2cN/b2FJq21cOk21P5uw7LjOkEHxDxmQW7h+JES5iZAHmLyeM5P2bwWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EwrAU58d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EwrAU58d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B199EC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770931493;
	bh=cg7egYnQt3af/iN3JqpwTHRPq2FQ8iUw0DP/I+Pfd9U=;
	h=To:Subject:From:Date:From;
	b=EwrAU58d1nRVatGM2F77JN9HcT6nfGdKV4iO4UxWI9m7lHne6n8UKVFR3d/NKQKPw
	 pZcktRFMpGQ9yBVKOpOhU3Ve+UnvQq1wfTKndoBC20frETNRAcEY+mLUEx5SQ8IuMN
	 rm2oO+qvTAb+LTBsMZ709bVkjc3pkAOwdsOt+YQNA+jFLyXNV1y2d6e/jZpgI1OYSp
	 JuAZyRr8CTGZNStMg0KuC8CHqNdc78WNDHX5KVryAXEsvNilVjSVydpTCEp6dqkWVQ
	 ZfG7fJzb44LGsX6UIpAIhSfZ3cCoAsw+4lCMNqoCk0FlYpfGx6epfEcPQzIplEpizf
	 0lgHbe1neq5bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D61DEEA851
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177093149362.17075.17590541821081890906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdcf3fd1926e3fc4948b7532179ee5cf0745d879545d69f0a455c2642dd9f29a
Date: Thu, 12 Feb 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770931493
