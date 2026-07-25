Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 607D927732
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784985034; cv=none; b=eVOrV8QGcjOoUYFCf/4L9kfjMBuezDP+YQrr2o7575mnNI8VWYzCQB6ysTTcY40G1XMdci2UyFV9kDd+KW555IMEkcxL94YxLR/jEgI5ki2qeehFil7x7EX7N9ZZE6uIhAyPxc8OlIiM66wfx14LdDZ1P0zpoAGzegmCUh95zu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784985034; c=relaxed/simple;
	bh=zDIlVyHTaQmoX9iwZBXpTyj8c3cYPK0KFbtGs5f5J6M=;
	h=To:Subject:From:Message-Id:Date; b=hS2xG3vbvM69bUwx9oIE+tdVJPeSTrx2T99+wjzjc+d3HgVPiO4Ce+oBzWqoq4MSxby17ctvtzdyxA6lUK3gVzdf/soLOb+rWLKiAwKK3tY0h6X8BhsDKkYSwKm51ow9nmmlsoe76U6mZvUN5jRmkfugeGqtG5Us0WERRhIVD7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JL/YjGez; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JL/YjGez"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D2AC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784985033;
	bh=zDIlVyHTaQmoX9iwZBXpTyj8c3cYPK0KFbtGs5f5J6M=;
	h=To:Subject:From:Date:From;
	b=JL/YjGezJavixYqPaCuoudA7NzvAVsvu6kbqNzhRsEfmSNhD+NuSfZn++8VwAKaxv
	 0AKSOr/3s/nwCpVH2La+UsXh//XsYhMOnPG3BlQVxiSagYM9iP8R8NKag7Q1hzCWUx
	 X/H9jRzRuCB+yUOqQ7af4qAYsCxbcAQ3o7HgGwVFYUHHWmDA3GJaZWWWqmVfLPc1W9
	 FIetXLRQcgDYG7pScAfpxvQK6zWhbyJtBUGGxxzYb7Qpr6WBYIXBozralD9so+Pmv7
	 AYv7GvqoYEITdigf+ycHldJ92yWelrlzMg/fkcsa/EF1ZwaQ6gAR2U33/YRTUEZbd+
	 n/VhnPKVpjtVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC773C531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178498503368.29612.15571848836393206739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5bad9eccbdc2325477b8198d38afab18dbeff97be871c35e01a988b9f0dc16e
Date: Sat, 25 Jul 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784985033
