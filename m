Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D2A14D430
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732908954; cv=none; b=PN+KvpQhQJduOaRkVXXPS961koQ0/hyXm6433wcRMHwyLejoS7G/HyNQ8TuoaKEd/9jMh8asV4EVriLaitl8spzcd0WJAiqJxi6QmCh4N/4nw6EbKaHg5RNPwdB/5LWekCC1yd0wNK902fkciSqLwMGLAULFL6cEZUa+5tJiM1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732908954; c=relaxed/simple;
	bh=k4bDNmo2BZOKyJDqVn0H2Q6zYxOmhtEwuh2Pg7uQqBc=;
	h=To:Subject:From:Message-Id:Date; b=kkXIY/iXcL3YJpoGL9GA969G9+OX3ajTMX83C53y3fRhHNTrOu90qrH3pbtfByq/jNViOB6Q3+nOPp1dL9nINfJ7dTRwqOqZ6jjXWrLic9vNe5OPcKKFp0AL//YkcMA1/Z5C8JYUS8pdmsUXmUOrqnzM+WokdB7JU2udBbHuiOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k9ooaYwv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k9ooaYwv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4970C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732908953;
	bh=k4bDNmo2BZOKyJDqVn0H2Q6zYxOmhtEwuh2Pg7uQqBc=;
	h=To:Subject:From:Date:From;
	b=k9ooaYwvAWQ71E1QnknSp2vi5h+iO5Q4oC8AtPYrTD6FVAJehh1oLpkhYdJUlfLCS
	 oYZ1ZNTys3toXV62ZtVh7lfk2Xc0SN2kSn3hc3pxNLVB+ysTsyIqkmEMbC89QyQaJZ
	 dAmmZsIp66r3mjzgKEb4Jt8JG115vH+GLWm3By1vmXQLv0aE8pamVs2Q4TRRdBbVQu
	 ptiYaNz5iJ6oS1V3tEjRoKJwQN9VgO5NwGMF5ta/GAp9ubljabKQVIKFLBp9CDE97f
	 QRhYEgr4l35RxIp0/Lk2A2jFgaLQoiwjuveNUHhLE1d8ijIazRYaZTCenAFVCU+qZt
	 O+OY9CtTuiTxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FC4CD729FC
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173290895363.28218.15017630362419764998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f890ceb331af65b2a433df16fd121fc72ac98d9f8dc2a4d9874a5a614ccf314b
Date: Fri, 29 Nov 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732908953
