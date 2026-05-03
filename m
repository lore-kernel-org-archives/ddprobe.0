Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D00BA34
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 01:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777771654; cv=none; b=I7bSzaN/q7rj0EpVSF6KJOzC/fiDmi+wGxNtRkqt7YiRiu6MFYhHXDnyPzZ4tDUePKnUQcMpJqy42wuNLUG5fp01Z+ElfzmxvHYV68n3APU+995BgfNTASn2sPz+Jk3he+nVJAmHe8qhP47mH57Rb+eKK+m51463B04H533sBVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777771654; c=relaxed/simple;
	bh=CJtRQzBeahVEdSZciSohz9n3ZtsRuoHtImgGgwUxUKI=;
	h=To:Subject:From:Message-Id:Date; b=Ey/lTIHx82mLoAlIroiLRCAKnbKyLWFZn5rNnZFwSfV9p7PxPW+VIrX0lRWoi+I+m6y1J9BcQL287K86t80Od6kiFXvpvH+1rRrNArLoCpLN+kGHJK+qhS/m/smmi+oVkZEj3ZyeShZ7q32CLEbkz1gjUhoY06iTytYh1QUsg+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ErO5R4+U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ErO5R4+U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE76BC19425
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 01:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777771653;
	bh=CJtRQzBeahVEdSZciSohz9n3ZtsRuoHtImgGgwUxUKI=;
	h=To:Subject:From:Date:From;
	b=ErO5R4+Uav8rHl5G67euADOLynJXJd9qo+sn/4qqN6ppi0Ag0EV35cU56mo+u/vDY
	 H8lZPbgpUQg5nPxfLZ0uv+QYD0cRd4DoLF92/4Bk4o5Q7eDsMTx5oAGazKZGKkGhoz
	 K7UhhNJ8UJRFvjDDpDYGvfMuAT5aBnBWFD1QH+1dpNeXk2TlFdg59g+8TbbcZSgYZP
	 6DLGu5dw/ri9tQ+rI1I6PNeB6NEvVUnPggYKMykO2xMb7SFfZb3Q+YP3xS7ojev1Lq
	 TKsfxQpdzVLcn39onSObMb4FvC+tWAf81aySkDzzcUcGIHD8VuC/lkJv6x1EPefRoZ
	 KiiIscjhGKkoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD79CD13DA
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 01:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177777165368.824.8597430488971765413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2442f4f8d386ac870103a8c70f5487acae18fd1876533387764c9611ef05c5ad
Date: Sun, 03 May 2026 01:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777771653
