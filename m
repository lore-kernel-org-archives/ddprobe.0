Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4295F19995E
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 00:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779840154; cv=none; b=bjUhjT2GRphMsYn0gAx46e+vJmMMm6kDSaimkPeVuusUoKzVj8pyYPkURH31kbvb4q5lMhuGaXBCc3Afi+wRvbumCeY1+UUUSZ5ae7L8vMrjFRoWuyiqhsicESdx1Cnk2S1oew6BIuLpbw6uzrJzcvRWNy3XN6zWlzGlIh/yC1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779840154; c=relaxed/simple;
	bh=IyBYnGn1t22q1wsc1esWPKnok8TcHcD/2zUx7TjBGgQ=;
	h=To:Subject:From:Message-Id:Date; b=uS6Ip+iZttPljsAIhQGJgbe1lSxSTW6X90wqb/d7NWqZ27ibx7nwAASpFCz0y6zsnR2SrQzcL8RN4JDF2hL7EfUJGbv49gthOQyMMlUe0cTfNSbArXfykVtSSFkrlhc2zKo64UOp6b/VJDE1yKO6BZWjGPyE8mqS43AAxeNjeu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rn4867rb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rn4867rb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B15AEC2BCC9
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 00:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779840153;
	bh=IyBYnGn1t22q1wsc1esWPKnok8TcHcD/2zUx7TjBGgQ=;
	h=To:Subject:From:Date:From;
	b=rn4867rbUDSIEu45Mje0TquBXDGV7ul6/wndctLyTjIJsWD0ZPCZj8hkY5HXdO5H5
	 WL1VqYhhfH15dQmw8d7Bac7TrofFCOAk+c5iJfaUY/HGA2buRWDtiOZlFZkoRb6eJY
	 AbD3OKxoQ3jADchbYjy2h0JNfMn4xKfWRCylBMnAjKTNkAQiYIoSwm8zh+a2bf8GS9
	 NKX8RAJQmzOKbHOHLJI2i6NCzPhi+DY49cqVmTjuYvlokaVYMeaEFIx0WSCAUrTzli
	 2EEeeOqLtRlzR2Fup1K4AEarKgdxiFfb+UpogTcB6mmBqkt/YVzp9IKgYXNO95ryxP
	 swX8j57OaMu3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9888CD5BD2
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 00:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177984015368.27907.6457262918791251551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c249f82774999e9862a98cb1af2b753dd386570ad1fb00c990a05e46e0338d6
Date: Wed, 27 May 2026 00:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779840153
