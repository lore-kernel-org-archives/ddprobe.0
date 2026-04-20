Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CAB30FC36
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 07:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776670654; cv=none; b=YL/gVQkVyLkDlPjhbjUKhl1+xo3KB9YTyx+MU9XP5ORBr+CI+davNOd/T+CHeURnr+2N8Avt5W1S9DaT4biucfZa5GW/3W2oy23rNo6WY/QB1l17CrLt0TcK8CzAyjPIwANCpVUGvysIbk0XhVT7zEdl8F9eYzuVtvoeXs4HZEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776670654; c=relaxed/simple;
	bh=L9doQCRQRfGH/F0S93sLw649G/DucJy02tt3LUAzh/U=;
	h=To:Subject:From:Message-Id:Date; b=B19dHNw82gDLDqJFOMQsgty8pNY3NR1vcQMqKQ+L3OmsDTSXnBGbc2ICc0rMbx+BgjrrjA2plVw1qXFiUfstKBInUAseLXZko6YYka2n0r7F3FLQiVjBeebsvtTv4anl1q4KBk4NS8FLkaQo/zB2vXYzx2wj43yQUEAJaztQt+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KM8nHQnQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KM8nHQnQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7B50C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 07:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776670653;
	bh=L9doQCRQRfGH/F0S93sLw649G/DucJy02tt3LUAzh/U=;
	h=To:Subject:From:Date:From;
	b=KM8nHQnQgvaN/VyhapUxkjlyDo40h6xibZrfwKWS/s6C5UL02bZBVBkIEAEsn8spn
	 uqJdSEz0WYmfzy650ojAv4fF6f/c6T9wbC/hEvOjEldFOmTVTCBWLWm6hQWpZ6uwos
	 tMQV8Podn/WgAaD/vN+xSb5bqBbwt1hUR8kbyvdUJ/Bj8EnT7Q+UvzZLWT69EE6/47
	 lpv6fPSxpmpVj8PDni+w4RO+qzUeCpre8sDKz8ofyLsgiOvmi5610wC19sLxZWuUn5
	 AD9VJinrzOTYi6k9AXKq9asYpx+21Lj0T8mcRtZC0mht8zYLhsaj3paFl7q4hbIM5T
	 KJcH+a7grNHQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92F8F36C2E
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 07:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177667065368.27099.4419409444315682923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39b7bb19a3a4315f555dcfda62605aac367e2a05d893257faff5fe3d956ec5d4
Date: Mon, 20 Apr 2026 07:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776670653
