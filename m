Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E831E32D5
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746224394; cv=none; b=MxZ5vjppbCOxNLpzVtWYd14cPHBzK2c6qj5UtpDx5wf/y46cnq4LsqW8X17/osltvsPo/oIOK7y6/lCjAu+oqE4ymNiVL/okpRGDxW2IqBBKNtFwnKxHmfvZ6oelA9x5KekFZ5t725Eh8bFhCrsrbrx/qNMChF7ZOpv/waa0ZUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746224394; c=relaxed/simple;
	bh=ATMCUR5vmGNPypQiX6AEN0i85AFJ5uwhjaUHcC5Oipo=;
	h=To:Subject:From:Message-Id:Date; b=MtUpX/nBvkdcxjtwiL1xXdZDJierwTYSzMngPu4aOEKJBtZjA6NOJwGg0oZhcmeI624AVpNq9uoFfHsawcpWmKDIpw7rcEw7WZDHun2QyTENR0WFL8a+LupBvPwICDfDaEp60SPpjLjHkirjc16WDe4qiKYYeHqis01OUI1kxtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B4fkolWU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B4fkolWU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0953C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746224393;
	bh=ATMCUR5vmGNPypQiX6AEN0i85AFJ5uwhjaUHcC5Oipo=;
	h=To:Subject:From:Date:From;
	b=B4fkolWUgGKfqV4ZplslsIvUUMmCgEaYWHXILsug8vD1ASCK1FxWutOIV5pfX8JBk
	 Rsuy2K8HcQqQCflFA1pW63ad67j8iU2/HUGz8adSkN0aB/0TxopvVlqhatgoeD29LQ
	 SatKYli4JQBwEENX55unKhS/+C+DB+bIKd1NeJBaZXxmn+Jc317m4Rm4VvPyrxkP4e
	 IswVu1QFkZ1KLVWKSunMcdnUcTJwwVXpjInON/GZzeB4IeFgV/Ke+nAWZxCIRKQehQ
	 nZXlEVEHbURUA0KZpCFsnZO87oG2DOB2uaW67nUy9zUDeQNsCOvjEIAJFSy/YXLHX+
	 VJal7bi4V8CPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBA1C3ABAC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174622439357.12077.9138985522209894792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd0accf8c34afa74deb21f8ac30de0043d2ef0323017cdb7043754acd0ff5a58
Date: Fri, 02 May 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746224393
