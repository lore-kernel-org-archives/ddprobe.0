Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7281E50E
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746514194; cv=none; b=uwzDf0Mj/zfExqiTCls3IfzuEllwpfL02rXR5p8SskbFLfNJf58b87HIo+Qmb4d9x9UqLPt0aia/qHei8KU2ejtKPKRxQY0HbkiPQ9wIcZNimlwXQr6yhoF+dHzHZgYanPaoIBylfF7je45fyYAN5KfoxtQcZC6AbHM0j/1ObsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746514194; c=relaxed/simple;
	bh=zVxM3M8NalbNTa94TYYPRWgZHMOTQozFN6M/7uXfw5U=;
	h=To:Subject:From:Message-Id:Date; b=PlOSp/EEaoY9k0v9y6rU1UGoebwS3BMsQyLAztKuDPfS1dX15MEx/D4LxlCXjuFuSuGZr4Ua8sr2sK5WPt9llBcMXSGQBVcT2YrCz5C97rOFdeyztbWSUdvwp1NB0igw5jaZoJQPABJaTSLZdejuZVsIM7D1SXQIRCSYKK0dKO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RYEUiPsA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RYEUiPsA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C32CC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746514193;
	bh=zVxM3M8NalbNTa94TYYPRWgZHMOTQozFN6M/7uXfw5U=;
	h=To:Subject:From:Date:From;
	b=RYEUiPsAohSEh0WV/DVHQFzcEfYOHivb1vdcFK6kPqAAWntQzcvCUHih+i8DZ8Nlt
	 p2Hiw9wv1w2+nSkFU5u+9vQAEXqz+zCj6fdJ9GjTW/hLfFo7sHX0upoT+oZZS4W15u
	 mSuGiB1QyByGbLfkVlxjSWxlkEs6g7bTGlphS8de/HsQbonCwS5e8NeqzkXGRTZJ37
	 kKfzMK41xPC93A9swRM9T+t1okxsUHMqFPAVnUAc8Pty3q9k4g/PQGL4EVP+mIbDMH
	 1v0vjgPWm2RZxFdZAJprIS8gAkvY/pZiY8ZvqVWqhiS0CItFf98qWQT3uZ+9LMnl6V
	 QYfUqbJbSYjYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2EFC3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174651419357.14139.2168490383634287356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b3b8d7a4886da886eab30863ac57a2a4b073d44ced26035e6f27d7689e387fc
Date: Tue, 06 May 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746514193
