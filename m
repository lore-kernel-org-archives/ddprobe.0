Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1283C0B
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744016994; cv=none; b=pNwj4WvcyaZbIOszcfh5hP0zlt8Z41cnbde0goLOWUHT/dlHk+fzDm8kZ/nmmQ4wFXVs/j/GZgJI1H0mRKq0gy6LGEya7qYVyg6k4n/ASdAx8z0emMupHHoKrOB4Ua+DdRDksw/r5pkbiwf8hU+8H4csvuwDRxwMgNk5phNXE7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744016994; c=relaxed/simple;
	bh=bvgMJT226jwYc7PXC/O83CFvS/mEJNra48GUj+VsUoo=;
	h=To:Subject:From:Message-Id:Date; b=IeAwlRXj4i+pmYsrpJaMr4m14vRB7xVVqDwMZpwjr25LskUnxiQT4ahNy8mZQuM6dm/hnZM5iyr5FYg+vBbYmSIWN9sygYQsmgBIwY8lDKznFP6WaArMjPqSADJBPcfwnG1MhKnh5pFfkSBUMJG7CWo9VHmULmdlqCPz1PDsmgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JaoR4s3u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JaoR4s3u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D64C4CEEA
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744016993;
	bh=bvgMJT226jwYc7PXC/O83CFvS/mEJNra48GUj+VsUoo=;
	h=To:Subject:From:Date:From;
	b=JaoR4s3uda4Xgjp55edSIgcHKv6D3sNF9oFo9V/fXlewz9MxZq26ZL+gwWpn0o/S0
	 /zxgzlwIhBKOu5/HWPpi+JwKhtG+E9jWudWDwTmHljh2iV6tJHi0HG30QZM1daYM/b
	 VJEaZ35ySL8yiBuStmNTdG/0iZOW1vJw43UYGYWuMRij1XpOtGBjVxfvCnONF0DVww
	 vMBtMv/5kVCanjC8v7FLnw6wFDfGYJxYydK/oJzJnZeuQpfXRE4RiBobP089KcQHm2
	 FAHxbKxpmzc9oNgB6mPUny9QsXfRYdLNFs0YB4IKuqwqD4RUWMgWkg8FlMJ8ptD/i0
	 gIHHXr/mY/zCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92686C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174401699359.11864.10032911625766952485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46f9a23991f2f77d4c580432790cf98b886f1103da76a9bcf2c1638a7240aa68
Date: Mon, 07 Apr 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744016993
