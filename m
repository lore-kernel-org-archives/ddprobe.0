Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0891915CD54
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 11:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706788697; cv=none; b=WWkcZ6LnoGKfDoNxjKst487aui8xOwQ7gvGEMrENMqysPgQNQ23aQplEgk6lrRrgfcJcTasuiwRZrZtCQxwd4pRf0ZBV155j4EPLesiRqXna86VV5+2kJjp1yfZNNtC9hA8P61v9KJmCmrdtQwcKViJgonokfBSMLYNCpj8dyUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706788697; c=relaxed/simple;
	bh=bL7Q88J5SnF45t0B0BugpQ3llH/JK4f66TvlgzscNlo=;
	h=To:Subject:From:Message-Id:Date; b=CXSWK7aJt0qWR6jGGaQA6fYUYrJcpJPhQRZfuCZgcsL4gO/iBIzwB3pM1/yFgQhhJZwo4vJadefI/RTWroHWQyk7Ht2wa/J4q6lMODKwbq6JtMf2qYskpjnAhUNZ1Z9XLz3B9QWXw8pJh9YkspDG7Y2mfPjlI9lyY9NBeK4oVEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hmE+PXIi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hmE+PXIi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E0ADC433C7
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 11:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706788696;
	bh=bL7Q88J5SnF45t0B0BugpQ3llH/JK4f66TvlgzscNlo=;
	h=To:Subject:From:Date:From;
	b=hmE+PXIiNORb74Wa81MB8u1iYWF8xRBa2u+OfIrVkXVMUC3q7F3Lrlju5bDbjqMdD
	 ZNKOjovQCW9yYGvan7XEK4SWXFMQPM37IoFZ8ksekSoGG0xJlTzDFbAtT5n3xKYtop
	 pzgYew+ETQ5t+jD0bvnx22BmSH6rdSVimUUB0xrEpEfQTIQt8l6joURv7p+W8ADSGV
	 s0qbkS6PqElUp0JXfgPR8Y8DY0c3QaHztHm0X6Q5OED3lH6oMWxygYTz00gS3XRISu
	 5NLbVJLJ8gH2EcuOChAkcK5Nq3w2yOs1IdJxB0wKFTSqDMX1PpC8Wo5NH1LjquyMzH
	 Al+fr04XNCbCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69EC2C47DDF
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 11:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170678869642.17227.77234121913941967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0265018cbe18e86b855f0711d41085b463f5721e38737ef1d4f033a5001729d2
Date: Thu, 01 Feb 2024 11:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706788696
