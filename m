Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211B81DF73C
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765915434; cv=none; b=XneUZdHculiJFtkIzSjlNpLaOxhDFpSVC24dzl18mJ1F82qR3LOazuDDiZcXRZIdzcI30JRzTvPfdzJ6OTqB+i64FUQ1gUo/uU07zm7ARM2yo4zorcqLUOUcudBRDNaO0yZ7wrd8wpLOZiPi423F4CoXzoERlnXWyPbUm+0fPv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765915434; c=relaxed/simple;
	bh=hv/FDOIdgJRtXA0aUpump/bULEFSgIBhb8XhVf4TfmQ=;
	h=To:Subject:From:Message-Id:Date; b=OHPYMa42UPl0o37mlWRVj6vtZisaeYZpzxvbXn+KaOpApy9kwhXqZbmIyBaprf/4QbJVzUwtqY8bk+v859ZcxWdpUjhlaCJhJ+wAVrP/Hr4PO5JliRHsri5LRnl5kHYtgHaV6tEjQU5NI7dBEriW03zl4mp4WJv1//FYnINxniI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VxyL0d43; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VxyL0d43"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE64C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765915433;
	bh=hv/FDOIdgJRtXA0aUpump/bULEFSgIBhb8XhVf4TfmQ=;
	h=To:Subject:From:Date:From;
	b=VxyL0d43/+gZrHoz3sbAlzK2AyjbwAQfhP8WDh/VcmD4j3fD5NA/yD86Hu+zapsaJ
	 4a7zUsx+NFrePACPWOOnXb8NtE6kf7FWWvQVuyYBYlPVp5M72hr+NDp+F+AnKEK2KX
	 cQaFFe2L0ns5/17jDs6zdu7TZDN2QOsRkcf6PwrX2uQruAoU47XZZZjt5QzPTKfd6U
	 /K4Iwhp/jJ0/uNUSsXATW9iMU9Kz3342j32pM/u+lgt+WiaoZ+WWAVZndp3T5AO+XH
	 vad4SdPuG6mZ02zn6qx9spO8qM3VOuyCGcbxJD7I3yZtUZya2JX3GzejLYvnEFD4aj
	 Hv4HRG6i6ag3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E41D637A1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176591543359.31281.14427535803401521520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f93e50c2c54c08dde63b5068b6164436cca184e1baa17392561ca3807e63f9f
Date: Tue, 16 Dec 2025 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765915433
