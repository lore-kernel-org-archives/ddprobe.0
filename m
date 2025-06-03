Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25882231832
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748956794; cv=none; b=a9PUYdq9Pt3FzldfHT3DKavXl4hlE0WoiXmAUoALhG/58fjjyySJ3whDAoyWzKJC/+NE7ZUFN1iVHNEK6I6qxYBaqguGWobnP58gCFngSbkGjgJYr2GRHCEO4cjkfwvmDbPNCdIMdjpoX3wnDPyL4MaBOerkxWS9yamHnElsoV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748956794; c=relaxed/simple;
	bh=9FGsmEjwAhqGT45OupO8bs/+0WBM3EATcahsBc6/BBo=;
	h=To:Subject:From:Message-Id:Date; b=mBZpr77AUZg14Pvbfui1CUJf16hTpyDSJaB5ufC6HbIsjM1aWiAV+LWGCcRPYWeldNUrqlI/P/V4gJTkTVcEpVu+RHaikoY0/By91GI2j8IYZY8KcxyAK5Zc1S3e44m4at11EP8c/HevremagyYaJg3WlqHik1IfddigBrtsZNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lzPLYjvj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lzPLYjvj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A66C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748956793;
	bh=9FGsmEjwAhqGT45OupO8bs/+0WBM3EATcahsBc6/BBo=;
	h=To:Subject:From:Date:From;
	b=lzPLYjvj4FlNiG4x0rH/+/Mpuo6mJt4dti7lLXtnMmdM/TS1j3vWMyWM7Ef6qsQJo
	 DtU+JGwWIa9YZt6W1MgqrjwAk7mVplxrALWV3n7FOqxypehdV873WkR7+X9sjQbFhv
	 FaG5aS862lmvUfUYugzG5U3vit4vOWaou9wMkYhTo3u7l9Ef488qGY5WQY61TM6gBm
	 fRXBAToejvnPKpvklT3zxLuRTS/D2tYSF1G8xU6n+F7+OBOOr9NYiJSXd9uWwudB4d
	 WqM/mGJzawX93QzUfbxRUV+8gqM/K8s5FSdY360O2/J8fIYO8JzVClFAmLp6bO181q
	 rUFAZ4D+2bUfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A00C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174895679358.19629.1970848800882948005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0383e6ad16cf584d0ff24938d9bf4ad3911ad5254c9df5e7c9ea05c586cb764a
Date: Tue, 03 Jun 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748956793
