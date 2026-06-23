Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1369A322A
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 05:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782193594; cv=none; b=u+Mnx6u2u2w6JXFJhn2O186WXcwCfCkrTOWQH8YXd2C9BfWVR06qC3RZD76UBK2zNymSavKsBtc9VrlTlbctXnyZ6puBu4OF/QeGgMQDaKK+Asl1c8C8l2d7GBXXvFDrtjFOmMKW03j9mNh+FSBe1RvpLAl6BHLKMqsKc+0EwoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782193594; c=relaxed/simple;
	bh=/MJcaolq6IRTDCcoNt6oRfe8dtPSE3fzcSWz+rEyFnU=;
	h=To:Subject:From:Message-Id:Date; b=Q+ecHGE3YeE0g18R0fkarKG4AuWBzLVpD1VvnhIJO8CtFwNHhPQlXM5MBJsDq/82pZSNTZTvcv5et6RGle3tLPJX9xstVEvHnga8jHOFHq5eusgfezouEmNol7AblSmnRLmbQLsojZCkPsSKbT+mNW7Ejaqm1CGaOHXKZBHXzLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sBDGc7Su; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sBDGc7Su"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C67FFC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 05:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782193593;
	bh=/MJcaolq6IRTDCcoNt6oRfe8dtPSE3fzcSWz+rEyFnU=;
	h=To:Subject:From:Date:From;
	b=sBDGc7SubUapPHH+Uj16d4otCHlVuZ2q6m3BT63Z3CB/Smmgb/hjd/biQGaT0KcMX
	 5U2sUTGl8mbhJiZFjA1KSJhFoUot71khfTiso2Bk5RGFSbwKrQiR8ut0C6zwkBSisQ
	 UtCkDjOY8QVoMD7Qom1q+qQiS6WRhAjOkYrBbTPBOWbl5j9bAPf0XHzRY/qJCF0TWN
	 bV53JJBmCZYbWbi226glovdBzV1BDapWKPspoMLBfNHxupwU9SsnN5+ubW0r0RsY8Q
	 L0gCeDQgqr4i+n9AEU1gJb5SFIVl4dkFa+943ziv1R+2BuGlSllGAbneP90ZhWAYJm
	 rVYh20rGtZzXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA66FCD98F0
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 05:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178219359369.2963.16830397135255338456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f25b8909b4d5f5444f254c4c2af0b4b1e44bce47d8c6dddbaf9b786935f48d63
Date: Tue, 23 Jun 2026 05:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782193593
