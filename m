Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 071F2281341
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768540434; cv=none; b=mcnoJetj1t0yQkEePUFZMJdg/TQzj4Nb7fkUgDgL9qkhD0Q1cXmPBoROtCgKSnLwLkXuKFAnLUOVnJufO0VP2ormrgr/P/xE/xevJgY37I3L0UDcGjMVPF2IBBLxChplaO52GXsm7t/2dha/hC29hG8ekrcf7SrFqP31sy4Ypno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768540434; c=relaxed/simple;
	bh=rDmn7rS5hF2Iz1i3cp9UcWHrPao99QJ6pkWhwWamBNw=;
	h=To:Subject:From:Message-Id:Date; b=ppzn8tFv5jbjSfAxhMkw5+SyYcQN+mA2fReSjy+ZnHY/X3KJIHi9vw6VoMtoFtw8wBLkq/vMoznNlFqixhFzdS0DMPJ8vnzjz2vMh1xXkgDNv6PoB1M5v2nmT2f+yN23sr8LlfLeMSGlqdjCyxYnk6FY+eSz1LFgzzEmvlEARj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CTKy7hY6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CTKy7hY6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F357C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768540433;
	bh=rDmn7rS5hF2Iz1i3cp9UcWHrPao99QJ6pkWhwWamBNw=;
	h=To:Subject:From:Date:From;
	b=CTKy7hY6WPT/mldlR9CplFBgKgp2gtLtwjWxzpg8QJ0nGGeIPmei7TJ7VXqOS4XX8
	 4+6bcsuqdCRbwXpsXeUC3WeDbHUqz+oQvwz1IyrCJbNSSNDzzEBckjUx9mWzLEvr3F
	 0cgnpvXEp2FyYn+N3Kn8mhdnldSubaBt7ZB7M3edYZOhd5v9ZSKIRyHr/DoELgsvCE
	 Va5VESs35D56MTKnlxjcSlC9CEdHx1A34cJktbYwVyHMj6Q1tW/rqzwdeshN0kGCB+
	 2MPf/C66uEzK/sKZy2sd5pg9oKv/Ua7j1XgODLtHlfeoZdSOUl6EtayV7On6H+aWR6
	 Cbm1gMhHedufA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED0CD4A601
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176854043357.25575.6521554811179401586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ad5362edb1007fab4b93d1d3ad78cd562187def3a8077721f08edd26d9bbef5
Date: Fri, 16 Jan 2026 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768540433
