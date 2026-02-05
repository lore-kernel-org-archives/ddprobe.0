Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE6F1A0BD6
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770251034; cv=none; b=GppgiW9dPzVeekWcGsKtMchR6eclKaXzXZqIM9B2tuiX4hRczZ+Gbe/fr9e5uuXAuYzPVtCxDVnB6emmfxh8QMkVONW8Mxzwx+kTv8TjgD8z7/m7PvMQLgtIhH+6ONIw4OERkE9Cf+3OCszH5xjEMsJpvhzz/HuCcWD7ej7H98M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770251034; c=relaxed/simple;
	bh=0I8mvT8ekmGN1LtecbX4liYMyMQj6fFRj5Zi+qHzTgQ=;
	h=To:Subject:From:Message-Id:Date; b=U10OYm/ql7xN9RtETeCQBNRmu3y3mRQj1/0N8s/og2jvBqghshfHp4N5R+YjgAK0ihdkuiKxCEJ7FNaGoCVP6sQT7VgcrhT3R8BEohMEdpca3DLGT5obT73T6U2SjvsmpzjdNr/pay3W5lAz1xxSeXMs7Ez0wvL971oZTr9jFo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vt/KzxIQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vt/KzxIQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDA9C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770251033;
	bh=0I8mvT8ekmGN1LtecbX4liYMyMQj6fFRj5Zi+qHzTgQ=;
	h=To:Subject:From:Date:From;
	b=Vt/KzxIQAMhRVFlVSBQSQdDSN2M/ds88JfAncGD4RvuoMMRgNy1FeTUVTsfXciczF
	 VzTUZKUV/ane2FCWy5hJMrgChVAMTPK5cQ/JtPHJqeSQMWCC5J3Q4VzZyIl55jxCO8
	 m7cT2T6AlzR8pc9ZJUNWXf9Zz5eHWr6cH6Hbwlno16hOysMngcIVoDwX2u7yx5XPSy
	 sNLNHFXKOZCGs4uX+EAws3FK5OaSrgR5LcQ8dClqC9J9fVVD6RFsG3YR1pB11+PMA8
	 5dtvudG8CU66luvThTKIp7D0X8Yp/H5ijAbp8PaBib8e2uVx8sGY/DKXnqgwTWPzxF
	 CpF80AliM2+0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C822EA794C
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177025103359.30747.12906034733185298126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83d02fa659d9a5c72df6c8dc62a83df9998a700bc0b2eecf23c9961221686d94
Date: Thu, 05 Feb 2026 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770251033
