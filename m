Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1730124A069
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758643194; cv=none; b=rShhi8MwhF492k+XJLAicftBDtXhcsTpbFitaReXrdoZK5241b637/Ip1NXAZmXXgMFakcAm3NB+mQ7nguKMIQg3EEzNh0Ym/OcASfnDYe1hp9ldMGgJivCL0O2dzpnD/Bm++8ogN3oa08pP26ljiRU4WGMMgEDlHuwvwASw4iU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758643194; c=relaxed/simple;
	bh=/mNWEoVEcWI/xtpI0SotgYJnY7gJ3+YGZlDKZ7MjeWM=;
	h=To:Subject:From:Message-Id:Date; b=KXd5NJzdH26Wl1jn2/fwI81uME8qCRcbQwh4AqRK7/tN0R9gC7l6vaY/+PzyMvAPXb1Hozv5C9YcYTIzdkqGdk5wGS5un87QSR0RpZNaIYyG5Xef0+ZCHNSHLP5jzHSEDr95lStnGzuXTQ2p7OgZ5ZN8EQJOnclJz5sB0Z1zc5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ENnXYkNB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ENnXYkNB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA5EC113CF
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758643193;
	bh=/mNWEoVEcWI/xtpI0SotgYJnY7gJ3+YGZlDKZ7MjeWM=;
	h=To:Subject:From:Date:From;
	b=ENnXYkNBbCM2zDBA7vewNHhczOC9BWroSO80nFHPUBMeuI7L6kNlh/bVlpUZ7zMvg
	 7dMTWWtDQFOdBgkNCEbzyijEzFxGOv1xDRQfANOCMsO5+pdiDFEOm/ahjbxs5oYFLT
	 p3ZmvsQzmix7iQykCaUUaf/1XU/2qfDEqOJdOHRglVUzOLJ/6dQzkzjSIINOlPR3vh
	 IROtv/uJ5yFj6T7CKYu66KIpxeD0pLXPFxHs4Xa6Hn7pMGz6+MTA3QDbIZ+YojqXIW
	 X2LvZWTJhZMCn2YmRRJD9K1Zj6gCkAnkhKpEgFfizANlLfwxnp786l0DYRi2wruacB
	 Gup+8E1E+k/iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEEDCAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175864319357.15497.7352571131915098687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99cf46f6692c5c231f7e2050306978fcea0be4e2ec1956e2932c4bc4e34b3a25
Date: Tue, 23 Sep 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758643193
