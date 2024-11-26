Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA5AD299
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732665354; cv=none; b=U4tacadY2doljllMtH460gJtpdu/HR6yHAFagR1fNHdkhU9NayKE20A1aK/KrqlwNuMr3OFLv40rjRj1ieFL3RozS3uguCL6jFlaYcMuP26JMYy4RlzRtFpHh0xiBKkgp0sRwuvddUn4JfikgeqMLTG2kMDlCYr6OacXIFd6//k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732665354; c=relaxed/simple;
	bh=o5ATYeFNUw2GQ7o/oefviSHtN4tuBDby63OriM9jM1w=;
	h=To:Subject:From:Message-Id:Date; b=tpkNRjFqEoUTpD4IZXP/SeeL+z817DY3Z+zejaST+nNE/8Trbu4QcCnHaHsvg/ZfeIhpxrC29AUoK0CtsiCn7+sxixO3zf6g4jmuIDIjLNHhLK63l4QnPQXvMxmv2N3ca76JjXGMGTi6lf4uvNlNEJapsO3x6H3+Li6p130wQhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fKGRf9NI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fKGRf9NI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE97C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732665353;
	bh=o5ATYeFNUw2GQ7o/oefviSHtN4tuBDby63OriM9jM1w=;
	h=To:Subject:From:Date:From;
	b=fKGRf9NIX88L7T/n9Q/VZYn449hGvmqmjk/nOgZkDnTl3/RC3ejSQEN0Ap95gZOIi
	 KYsvOk6Lw9MOZV7ICkDx9N0hVxZ11PUkWouD2CVT0F/QtWP6kQbBSC7A8Ioe1mz1lD
	 lK0Ko8MGDzvu9TTQR3LLr9kCQnQQotxH5IBBYy9YqsJ167ykw9Kx7yzCduXh/rlg9i
	 hgzlwunBopLAUV4eha4QAGk39UIqTmK4EbFa4gq60XO7gGcrtQDbOw6r/AM7xCIBN8
	 vvW/hRbCIg3r0Y1B2K1sMfBFenXAfvByhcEYtWI30/keUb/cM25kJLf6xGBnGnKrHI
	 kIdtpcHZQdxZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E0A6D66B9A
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173266535363.2086.3108307079254522250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ab0dc10b8d6234807fe49cb3fe9e2fdbfb317fe3a06ad101598a35b59dce6bd
Date: Tue, 26 Nov 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732665353
