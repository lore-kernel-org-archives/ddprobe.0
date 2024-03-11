Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143B155774
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 17:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710179297; cv=none; b=uAUvqyonf4bqKZ187VDrXU71jSZIj5ISxJyPGFg0jevw7ZFFHREqP1PTjKd+6JLhcmwlcF+UnGq6WY/LcgsueczHik39eLGo86qB1Fh50liBgB8iZWBOc5S2AfT34fZStaGtEuRsm0Gy7tlR1+QzS+5ig+1mdXAguJOyD5Xxd2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710179297; c=relaxed/simple;
	bh=5brx1jNUEhx4xfE6AIuT1RTYPdnGuRD8gLwdyUUnmLQ=;
	h=To:Subject:From:Message-Id:Date; b=B2ZFQtPmXIVLDPVv9E01i4uCSalsxBxLds0Zamc1udbS/7PHepmHn+VbrUA08KGuy6I5N3OTlPPqxrSXZl82Bwv1TP/L8ZBmcTSUuy68fNwtI7RV8BkB6bfNKUDGCLOACGCv59jvkh18FG24qNWijdX5QNFmcu+OoEao45aYWMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vLZYkrlk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vLZYkrlk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83CFAC433C7
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 17:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710179296;
	bh=5brx1jNUEhx4xfE6AIuT1RTYPdnGuRD8gLwdyUUnmLQ=;
	h=To:Subject:From:Date:From;
	b=vLZYkrlkMLYDynggFdBK2lb8OKBxz1hFHpkoLqf43+jUjtIi8P2Ss2fUoV/RT4t9b
	 b4UUaWcVXtzSJrOfNH3+cFw0g4SaM6QPRZzStOHRFr+/JbPhNDX43m7t7lBgz2mbHq
	 /DlS7b+dtDrPWWnWNUdhUcFZS/u1Ozmgqv19QaWHmI+Q7WLyGyeMAw5gL88ZGHlRht
	 3ZiqPQW45NSSu6Hp0+iZa3NWpwrHndtSccDvczUotbXqmMwlhjDgJRax5oS3lqHN0p
	 A521kGNBzoGIWAHHFlbLpiXZOQIaktr+QPgY1cTxuWGTbEvP3Px29VtP/SATiJxyau
	 QZF0YLIC/skWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 696C9C5475B
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 17:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171017929642.31951.11833628806653784670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b07ebaa35a374b47361a307de3fbdb909f49bfeb8eee6f8d0210e60ab819c384
Date: Mon, 11 Mar 2024 17:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710179296
