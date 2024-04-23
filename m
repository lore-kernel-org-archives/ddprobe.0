Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B3288F5E
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 14:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713883823; cv=none; b=VsziONJl8YdrlIOA65oQ4NAO04vGudUfM3TD8BJ4eUShURQS46tEJQ2Fucg95WxszorIwUVVSqcQUZwm8P0hPzBS0d4vEpfSE3rD1nN1I61sy6SuOZ3uv1OsqSQP7GysD6o2u37Vx2e9XfG2jpgdhxxSGcYs7WR910t1WGnza44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713883823; c=relaxed/simple;
	bh=321fedQLtPdp0ZGG58CvCDXoVN3XWXSTG3465ZXurjQ=;
	h=To:Subject:From:Message-Id:Date; b=B1G+pUQicCz+QmjU7er3aDkYXq7Y3gWHImkwNl/95xZqZhPnoyca26xUGnZ31FL+xU2OT+XHnrRqbyMeJNuM3m/tYR6eWpkAfDi5DppajLW5iyCU/tyO3vjMZRffhotsRvFlbad9JHjAwHMqIa5doNJqnV/9tDmOOMiKCclbHdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jnpp6izE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jnpp6izE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E274AC116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 14:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713883822;
	bh=321fedQLtPdp0ZGG58CvCDXoVN3XWXSTG3465ZXurjQ=;
	h=To:Subject:From:Date:From;
	b=jnpp6izEQsZMgGJpf+AP7yKGFHEDQIJqmphdcoKWFL5YcklMgNM1sFU69kX2PFS4a
	 bIddq1jh9mzm4l2YwK7hLMsZnkFoCiwjKaPyfk36C6Dg4uzfbe2ZwWcVFRY7z4mWrl
	 1ZdSx3ucagMhZpljbaHLxMvNoiNR0mBZuA/Qsome+nR0HZQe2bJfJvB2bjhCAg1VBp
	 PwOsfaS9SB/NM48O1Dl2XsWfGgYyXm8QxSEbw5wzrvFcIMNQFM38ONaQmMebawI8Zm
	 y86Z7hspRtYflqQw8lSAoubLucMI6AFWMsDfgZdip/34EpajaXEEDVajEIsNEpYhm0
	 X1uhHg3+ixE4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C860DC4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 14:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171388382278.1250.10911233281305807294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db0b04c8fd08c32cfc5d3f4348810f9a97eeec230866487262fa8996c6165632
Date: Tue, 23 Apr 2024 14:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713883822
