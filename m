Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED7FA341AB6
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769692434; cv=none; b=rQ692gY6DZmBI43zLoFWOpHRlPqwUbuO57iWJ6T3IWLgUpCN+X0oGEJLLA7ilqSGPNlMEalkuUgkNMVVEEZxaT5wXHzhiXSV0YPdAx41nfmqyz5sb08HF2dFuyyhHG8HKe8a7bSL1LBwjxbaylHJwijJ+4X604rfmmOA3Zf0+ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769692434; c=relaxed/simple;
	bh=M5k6oYhG1xQ6FhGzRQQO1iMAAjnzbDgWHYqiTD0H2K8=;
	h=To:Subject:From:Message-Id:Date; b=NYlQJ72SCDgz35dYtA7vnF76k0HiY1KjLDPfWWpKH1peEoIxqUNsWDKbY2KTdbmBEf6paWHd8Gmt/kUy0zx0Z0q6X5DflXdJMCahgxORlrSJdZ0ahdCnHWtOwmS5p0DT7mOoaffPyZMJ/0uO2b07ZPIpfEVFjykfkYih4GSZ/iE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BOtIyJ8P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BOtIyJ8P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4293C19422
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769692433;
	bh=M5k6oYhG1xQ6FhGzRQQO1iMAAjnzbDgWHYqiTD0H2K8=;
	h=To:Subject:From:Date:From;
	b=BOtIyJ8PRWr6AaF+JlQqWoOmlVZwgBoS+PNrSUly+28TGBHlxkjLtSdbtPP62Tkpr
	 nUkl4MEYsvGpxFBNtKzX0OttIuyT0qQLDsff0on8uUfEjFJVh+yaukE9Csy87eibCz
	 YeBvYBWYiPdNzLbQiWwiKzav7IFvjnrr/vOasMyuUDtdauyeFdySFor2kAafUYg75T
	 tXgxMcSSFShE7DZ80hRbFrCcjVDp6p8ZO8W+z5+PdYVB+epDQejqke6vOCYiW7OXFw
	 /3j7GPTRmR2oH8okYstitRwzvKhXVcOp5Fqj2SN4PupwXmpnkBJBBI76cqRRLau1hD
	 ztbB9T4X8Zy7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B8CD61013
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176969243357.1960.18229466819093480863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a829746f844f2bfdd6d4af163415951bc5c1d2889acd8c9610b0822e15242797
Date: Thu, 29 Jan 2026 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769692433
