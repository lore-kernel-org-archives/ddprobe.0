Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20116246762
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760183994; cv=none; b=lyjofQOVeFQ1IJejS0LULud8txx5ywmuR96+CxdxdIUio+uE5O9LI886af9RVeNNp1Q6BP/hwXCLguHTChMQcPbk5UvgVtD0fAmBEvYVowyoqsIshRMjOrL2eHocDJCR+WfbnV6PFojoLhGkKE6it3xURR9j5GnMTmTRTbOMi3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760183994; c=relaxed/simple;
	bh=rTHXUxvw0U0Ac1tdF/Tf19sd4CCYDrzBERfZtSDZXJY=;
	h=To:Subject:From:Message-Id:Date; b=oiJ7MZyAl0rbAbDKYVr9ubj3qDA9IA+1MjDFJaz8ShHA2naoJu3CtGqNOMMEbem4JrW29WeYCYq0ZkG9oV9uB0zp5QDoSqQwse3klbq4E7r7UcjtxmETCSNeDYvYs4Gy+YITkXljeb9Ap/wGeeybNNcYE/g4HL8tRhnB79uOZhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VCkZC624; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VCkZC624"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A585EC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760183993;
	bh=rTHXUxvw0U0Ac1tdF/Tf19sd4CCYDrzBERfZtSDZXJY=;
	h=To:Subject:From:Date:From;
	b=VCkZC624rJey0K09XNjIakqXCbhPWxwVtgsTirYra6EDwd2uEZRVgwDzrziv+W28B
	 B8N1DnCGTJa25VbkhMTrCh1SsSnJRQNsu9LhfKdbJNHfma5PliDBL3EqFlwNTuIIPd
	 9Muq1zd1Ck+AUc7X9v4sWPQ9rhbCaBkrUgI7HqcR0C9iK7MV0sI7+JNwOm4MEwcHPN
	 4d4rAjTgGagPw98CP3dP25Nl+QmV2WcBlmwzPTAwO/jPRF41A37RnM0Vr6a/ntFMiq
	 7os8u1IlF3Plowfpu7TUr+TEydpzzy2khpMNo/VTin5UaT+jNQl+1omFe86p8S+qm9
	 2wyft+uPummDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9240ECCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176018399357.29377.12733198150245626052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5db551502750a81c009d895062fa24b2d65b6a736892f0253f41ee0ed7a6b6c8
Date: Sat, 11 Oct 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760183993
