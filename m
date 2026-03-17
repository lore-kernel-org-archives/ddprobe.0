Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04B8B3630B6
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773742494; cv=none; b=hCyEoIEQAOjpgGzyvIthVl29kZHvb0uFZWqQczheuZjTe/Tptmg+zrzndN9lZgGiqXLcN+uh4pK63ULfZEDU/qCDmiNIluc/tyzp0hVGD5ljuEIgvGrHKJKa9ZYntaRXmK1oo2YHpth9V8rOfKQTlfD4zHzzvlTVUZqlrFVGqlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773742494; c=relaxed/simple;
	bh=EH4cH5Sy4BJGlNUn0V44iBWs1rAVWlqMfOV2Gx6QdVM=;
	h=To:Subject:From:Message-Id:Date; b=KATWaXEF0p6xeOC+6i4XbdTJmjFkI03TbmOolGVJhRC/i/ZrcmM5HEMFq6S8TGF6VobuG321r38GftjkWk+Y34bNf9lhTkf3fEP2WRy6SE3YJDCPgFIitk5n2DdiqpLwCTvnmZFM14r18WsRlGF2gRdlI6Slc2/hd8JFYGjrVpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aE9N37xE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aE9N37xE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A248DC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773742493;
	bh=EH4cH5Sy4BJGlNUn0V44iBWs1rAVWlqMfOV2Gx6QdVM=;
	h=To:Subject:From:Date:From;
	b=aE9N37xE5alaBc8wq6oCAzgmK4acbUD/nCZqHuReINv1Z24NBgItonmsiNAhX435I
	 GoLZAUKWGhNd66Nc0y9nJtPDDHDXI8/Dmaqkz1lbyIZpRkNfKjTIUWVg9jzzzm/n+A
	 A+ekQ/Wqd04KJvO07kwl3t4beVx2x2H6Tpr7IZgdCnjcTuHG8p+G1Cc3cXnoFUnXKf
	 Fux//aD10G1z/aVbDQg5Jx4mfuVL40Ol9EctintqpKqvhm8Oks+Z/nrs0R53PXv68N
	 hwQx+uC6lXbyo1ovyJ6jOHdVre6VNkHOvfMWxFyEPAHothVDd+Tcfz/xOHl6yWa8EJ
	 PJ8utWQ/aNxTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F447FD7068
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177374249357.10229.16415004488611377148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10e46357f8811bd7484b301be23803e6f68d02d8bdc7f75ef7f797a3f7125bae
Date: Tue, 17 Mar 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773742493
