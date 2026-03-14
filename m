Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6E1EACE
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773493494; cv=none; b=JFiJYGzRjnfTFiDt6Po+UNaacWe13wC/ExxZB1vGSFMtIbq7TWNRrgtCWT8xz+Sat74Z+giyuPK4QSxnMMbH3A4fJqba01fS/oV4ZYbqgBnNLadZH/OlloSbRXK6B02aCBQkIgckO6ZtyrQlGV4YVb8sgh4M0KmtVH2jpLTFQZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773493494; c=relaxed/simple;
	bh=0zi629ontIuKCqCfmybGlVQLaXenZdKEVKNiOyApbTI=;
	h=To:Subject:From:Message-Id:Date; b=LrPDnYPaFFu3h+FSa4n1boFpVuwgac4JuHdOFbuvYfO9AI89QtGEJlKiw+kfEbs0rU+g9rhzaFJAU5u26LE4OSUWLmJFnOelFoGrJYH3y+7PEgYP9jhHYeuAcinhYbuys2/lLIiRHvFG8PW0muvxiX7zfsn24TcGlFPPrwskuPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WV1GEhD2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WV1GEhD2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D18C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773493493;
	bh=0zi629ontIuKCqCfmybGlVQLaXenZdKEVKNiOyApbTI=;
	h=To:Subject:From:Date:From;
	b=WV1GEhD27s0tMeIRMnSViU13f2TN2JlBcG8P74Iue76RtOUo97m+QrKhCdUIBykBa
	 IGmJ9A1B+xEldkS0gtAlPZVV7bKkaMXuvIaxBOjNhyCP0NC/MzvCpzdkG3f7+TB64j
	 IvAmxP2VFvLhzjrUpDlX0x+k1gvz7eeFZBdzJsNT0TDh/VxXTeU1vnhRUUAp+1NnC7
	 paE1spfnDPlZNTCl47kql72bE5oKDEYA7V6OFyafIfWWI5hOFwRd1GEMjfZae7b+gP
	 xzsUHIAC2BkpDW8JCCOCq5rbQQaiPIfDHwiNkPLJxao5iWayvrESH8d3ZiXZ8lm/3g
	 Eqf3raiM4+nTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9254F10706D7
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177349349358.5955.611419477226485871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b5aaabf68db5a43a319c58ccd8f028c0f7f8e52bb71d889be740493d96c8e61
Date: Sat, 14 Mar 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773493493
