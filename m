Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2C41C1F13
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733387154; cv=none; b=Q/chm0utywUuRXgQRzpb6PyhtT1XOcTw+Hn1fL7+dBcAD2JcngKl4/CmBGWZvOZDynSaifnoKFfhUeM9fvZLy8sqLOrun3RkPw3j9KNF4ZvOR+wNjiFskiNL2HTnGdZ6Ym5r8wUzBS1I2puqgjYdzWZFjvbeQ9tbg0RROKVdBpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733387154; c=relaxed/simple;
	bh=KPTzQB9QwZMuZYc7zyb47yY81pOzX5A+gOSlnenogUk=;
	h=To:Subject:From:Message-Id:Date; b=vBKF0hLecgi/J3XvFR+vlKNjnbCeuPrjAGOtfQbb7nf9AaVveXC41JcdqaYXSbnkOQS49ee8yCiPcxu6ga8VJq2r8S8q6v5r+YMHX5cCJihBKP7lJLDAVn/P3kM83CWBJo6WiTTozMFiiQbOdgz3fnfXLy2RT/elKKj78pIGmnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MFo1AxTN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MFo1AxTN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A918AC4CED6
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733387153;
	bh=KPTzQB9QwZMuZYc7zyb47yY81pOzX5A+gOSlnenogUk=;
	h=To:Subject:From:Date:From;
	b=MFo1AxTN4NI7wJWESoBBfrfYPjXJMcJk+eVqMcbDnJtOcWrYaddHZbQM+H3XoU1bL
	 ZNPC2XAchv5qc3SHAypgzg2YYJ4RPDdec2OEOB9eAHi8qFuR0sYt7Tgey0DJY2hUJV
	 QsCf1Te3KjvcwmQFl5SbdbyeMbv4Q8gtOvpAByaCtuV6/oRrdDq7O2waKZboRUu+h9
	 yvR2X8ij1yBPZV4+agm12B+hmzI6EJrrPjE2Tp0KgijPcb9r4mf55osrKUQ8+FoluP
	 4DFsnRhoc+nQBQN09KA5KlX6JAo9dJah83xhcdkOH5vyLICEnvo1AvwaD7avejeFYd
	 B9c7ugI4rcLMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92586E77171
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173338715358.10432.10407365690521546531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f77bba23369869f813ccb3d80f2a75e61d453427a5070ae6917757aeae8aa6b
Date: Thu, 05 Dec 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733387153
