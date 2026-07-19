Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7314223E330
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 00:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784420314; cv=none; b=RUQihXJsn4w0R5Ky/HegNp02dmrdXNROhmPVXFuMlRLurNq+0XCLzj4Gn3Ak4rYm1UyrspJvRUsO4lVRg93vu0u3RCNz3mZPD5cdtXfJIeJF3bwlQPocaPDX2o35jelGStqpCXAqeD0pBMVEYKU3fqMh0tz2dqzEmuXwkaaGU6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784420314; c=relaxed/simple;
	bh=4rIIgJLgz5etZJRApi3eWog60mYoDGT3uDJDcOjjv3U=;
	h=To:Subject:From:Message-Id:Date; b=QALnSVMehdI1YBMi0Qc+BOmZepH234ttP8kxXEUidPPfI9Ig55Bn79uaSgh8j+sb2IMS/sGObhZ+hWS7kRxkxJLQHrm+d52aw0jc2sq8eqP8rCbjbXAuomTTc1493oXtTmEZb4QH5kRrm8+x/uu3uUtv/rkiHGoLmAjTRRz3SF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vE5w/Sf8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vE5w/Sf8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF0BCC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 00:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784420313;
	bh=4rIIgJLgz5etZJRApi3eWog60mYoDGT3uDJDcOjjv3U=;
	h=To:Subject:From:Date:From;
	b=vE5w/Sf8McSKHa9LQCmkaUiymZ8J75QJiIKSOWebC5jpZKmb+oY3iXNZr7MLDAegd
	 uYVyPXENh5Qk9c8owa4I3CbsI3Ykr3OEJrV75OuYYA02zfdR9Ymzbv8fZZhP4MA6jZ
	 G/D9ooPBrn87jFC+NGDEa1YNzQbRNI+m0ZgrY+VLZnvBMq8TQyrukTqCObj8QCuPr1
	 MNWAKxDLj8HnF+by1S0AKWsesGtXMkpOlVO4o3UnTbt6iZovJs68ce/SF3DBqzAjQh
	 Sxo3fsMaxNmZd8kyk+JpQKEW0Yxgn5c18snYMJBBaJJXKP4bnRFOyfFCvRNlrSIxzx
	 8o3c7JEdXrtVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE2EC4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 00:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178442031369.5632.4429506373681254508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d672e6e4a8f72983d44f3b24a95c28607aa22bdb14400f8903f33991eea2c620
Date: Sun, 19 Jul 2026 00:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784420313
