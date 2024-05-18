Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 593A817BD8
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 13:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716039743; cv=none; b=HEOBCOH4lXjaUvrd42y0HKfVP4Znf8ff9RqiTsgwwsboBMJtS2OJnXyONXjIQUFFY7mMOfk2jSFVcc6/iMJpZK2q04cP044enpewxc70zoNJvK99SFbL+hSJBUCYAn66M0FT+FFpa372QjPZ0YnHENWvka7Wij2toYo8ANcy86A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716039743; c=relaxed/simple;
	bh=lVjQCtDvNmhtbb89zO9yektOAoUFaDPwiHIV/8eXcd8=;
	h=To:Subject:From:Message-Id:Date; b=fkzCMKTnthVzG9qFNrvlbIbG1wOqEUYmRp2bWXRRB1Pja1dMAY74lIXT+zv+1dtEwSOSrdIcAmHdldlXgGO1JYKyyqcq0kJzzWOV6eG/HZIIcYAmqJ3p+DVSLroLhVVBSXSUa5x0nUN4ow22hBG+qiyIRvX9RjX116tP7BpBUCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wdq3bWQo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wdq3bWQo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A7DC113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 13:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716039742;
	bh=lVjQCtDvNmhtbb89zO9yektOAoUFaDPwiHIV/8eXcd8=;
	h=To:Subject:From:Date:From;
	b=Wdq3bWQoKzsoRZRTd71DYCu/IZ9WBcS+bc8+r+MH1kwipIXlnGOa8RXjDD7vobJlD
	 TMDil2UD79wxMYrrG/QTpaXdwtyEjQfv8sG8vh5y2gXtrWj3tnk8BthVgJPSsEuF77
	 nRoCRo4A6d1aAqymZrV37YttXvXLwnfRHo7xSXhzM1kcFj5tJja4BhTQSyOZKUzJJW
	 dMMXeg8SJ67pxu37f5KuScNYKkCrWsCR+Y8q+VUaYla21MFr8UUbpwDJOcyMPyJL0m
	 tP8UO+bOuVI23mKOzxgarHjKxSSRLJsp6LW9CXbSGWR0S0cFQQpjQiZAGo4Y8MMHF2
	 lkBILpDEXFzvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD9FCC25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 13:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171603974275.25375.2009175781576899734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45a42124b82bd76cbc0442941dde1d1da68f98260cc8c844c618c73d29e66810
Date: Sat, 18 May 2024 13:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716039742
