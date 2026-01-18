Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9E7520E6E2
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768756434; cv=none; b=lqjAAccDxJRLpHpS7n2orB4+D0wir3Tk/pZLpAZxvtuhZCElkR5c4FycCG4ykxjGI1aoLc/rP5XZxFGGXtgJ+rLbo7kK0C781uN6aqkV1YBUxf0dOgdmO0HbYjh0LJmCmOjyi3gZlzCQV7QVWsbakBRR6VT9LLgCn3AEhMFS5Ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768756434; c=relaxed/simple;
	bh=nPgFEMxzKkSEbAoWS3YQCZr0NFsv121lhb0oVUOmrMI=;
	h=To:Subject:From:Message-Id:Date; b=Ur07XdEro2GxDHsRhknppHGGLUNkCv9nHyHOZPHT9lu+VNkBgAw2Cn5QGSH2Zu8/nybApJO2vOi7NUKsceircSEKdqmc5xgaSqKd+TI7j+N7XIO5904nijGVXjnDXnpuFWYhKhA3E4ZZrY3f3zBZk6EWbiu9CHLPcyU0+Fuwmnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wtp47g1e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wtp47g1e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3510C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768756433;
	bh=nPgFEMxzKkSEbAoWS3YQCZr0NFsv121lhb0oVUOmrMI=;
	h=To:Subject:From:Date:From;
	b=Wtp47g1ewwXeSo7aAwvCaBTj5lFD9UCCs+ekRQuIZ5ZZnV63LoD87/4tmOLlu/3dY
	 P+hnTKHZJ19zyGGM+Iy/iLvyzBUEDg1g+veA+yWmpD5rL6D1pQm1EziwjXM1TJ6vqM
	 1KAT2O1wLrRMkXETVm7N515rqlUTuEWQdMsE+luJ0XBx3ZuO90QSBSGyJrx5oldo/o
	 rnSoofjQFRxHv4CprrUc9KN3YSjobppmaMmknLMw7ah/2X1YlolRgoAePSxfV+WTRx
	 8Mtjbe2tzVdFLoOOT/N+ES+eZVfP3X59EMGbrpzT/ro5vlBXLEeE9UoQqHHx3HseMt
	 jUVh/bLENchXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92920D4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176875643358.28989.14623668626821139082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dc0b5bca1fd3c0e0d0bbbd954d8bdc8ddfa327bcb8603d23c5a5a6becb63056
Date: Sun, 18 Jan 2026 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768756433
