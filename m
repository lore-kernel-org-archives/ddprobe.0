Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367012E62D
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 10:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720521383; cv=none; b=YQh5umXdt1zGGFixFWoUTfH5QZgBD8NcQZe5NYSs5YJAqQeoVYv+7cuo9cFfb894k9CAwy6TPy7r8Tna1THufPpMAHfVgXvWdnPMAQh/yMIYa2kbyA1//c6Wi0OMHdVscagp6JMq4yq+jMZiWWITw0cQqAaD4/csWciqfOOfvsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720521383; c=relaxed/simple;
	bh=iimPl+jF6BVIM4jujvcJmjQt3KXkE9SjRCD9OehWvjc=;
	h=To:Subject:From:Message-Id:Date; b=hKmNPLzmgM1bQK5gMykCTf+PXn3Axj6bLAaf5+x/Z6hP77Rup7A4v0VQcxTfNReYeZtNyWxexGJR9WHTeWMfXRCgBUqLSZwhp6nKR4gNceruMxij9qsSkUxQx5aIboZ3xetKHp0TQATw8zjz7RRGawK8s1n660vRW79dnhMLQ1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jC9m8mxH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jC9m8mxH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA58C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 10:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720521382;
	bh=iimPl+jF6BVIM4jujvcJmjQt3KXkE9SjRCD9OehWvjc=;
	h=To:Subject:From:Date:From;
	b=jC9m8mxHCSHzWbxwJQawDOTD+bOZawcPaH3eCMBLoLuC4eWLFQV6k10vELacsWmGU
	 wScz4vYUZuGjTX9jaBs8B/oI5uDPL48dng3xl5TkX3Hew0YnVebE1Np2uFfaPX8RNr
	 YlYYTSQY+XuDDF1o/XtOF4IQ5Xw1UyhkZFdmdSjdQbH+5GRnR+Gw4FDtpodst0Tswt
	 MhAloJLYWYHdTSGKD9BuUCiUuvaudKGqmrv3dAAXn0uy7efaThQG0SIK9L9KB1oC+J
	 Uqdzo+RyOKUD3YdY3eqg0LGodVz2cws2NBmvdi107CucHUNqCsUYqPItS/FmLRszKI
	 3kreKoFra64aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE5AEC2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 10:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172052138277.8994.3522884613608957714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e9423b1e052045af99eec3bf9da8eefccb79d98560ca43ce4f3f80ad875a5b9
Date: Tue, 09 Jul 2024 10:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720521382
