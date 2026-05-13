Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F4330FC27
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 03:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778643634; cv=none; b=ZC83fouiRG65NbZW1+45t51yWdqbmHgNYBgsu7A33DG3aN6CiMekHP/IsyjPXCf5ItpEcJUTxx1/WAYHAUuU9QHMNDzIV0RFp/bGGvOUEUeYKruOr+kynlp6Mgv1uOFRLXiilmWJZE3IocmC6QxNOWWjvOmpPy9r1xALQSu/8B4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778643634; c=relaxed/simple;
	bh=CSkNaSgacnLEG5XUSvO/Pj00Xh0CCP6I6WbN4QPdKTM=;
	h=To:Subject:From:Message-Id:Date; b=AXjx0eFWk5lk5NuOd2fsCm6khLivCZUREUX92g/yif14UoZ4+/yzo2fhPYiqv7iCGFM1QMBWtXTWWX7nqoNpRxMqcFB/mafjHxg13m/gosx/WugmbjzbAv07Jw8BFQzwdoAfAoPcsr5IFevXwv8YTCaceWlnFWLW9Ujx3vF+mA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NhXgBXZq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NhXgBXZq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C336DC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778643633;
	bh=CSkNaSgacnLEG5XUSvO/Pj00Xh0CCP6I6WbN4QPdKTM=;
	h=To:Subject:From:Date:From;
	b=NhXgBXZqAORHve52WcqDQV9SqU6XFk+oYUSB305p0ghK/FqhNix6iWCt/wmQiwQ/L
	 h7l2DKhOQVIZSjEki0C4W5FeCr+Kawxc2MtNoXc8BIZJWBmn/00Ie0gSHNNN/ykYnm
	 m/j58sUbQ8WKPoaotxUbFITxMEeoViyLYSVTsLVRuDlocoF+DseWU9S9wf5aED01uz
	 Sx3EA4D5DSy3ruy/8T5HQ65zHptrzBl59tl3TKlsLCRNl+cb5JOg8uEhTvz7YnhwfR
	 o5fFZqGXAjuFwmN+uaZaU90Q2vKa6GH3SjNyXmRY/y/GomFgu9q9VMf2ijpWmx6Pa6
	 x/zN9OX6v7FqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1886CD343F
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177864363371.30148.4845594150968346640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f26a0f165698c222f52ad5edd217d3643c56752bdcd3aebe2f1b3b450ee5511c
Date: Wed, 13 May 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778643633
