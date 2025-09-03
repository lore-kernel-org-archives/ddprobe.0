Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571B71BC58
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756870794; cv=none; b=m0lOXsbwjpDUdHEjSyR1Dsf3kSNTwVxSj3JVrudVHilRr0MGEUkcvbTr4pFWnd0Im2P18ydqwAWWNot8K+oe+Lf8qdPrjR2EJtWzwbPYfqKB0mzZ+sfq6hOP1IYKZ4YHHTDiLGFztQ3RfcLXslkC3rOffGmGAXdOeMRKHvkH138=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756870794; c=relaxed/simple;
	bh=fn+/2FeU3XVKbQNt+CDis25IeoiC/rVCgh0HqEQN/KQ=;
	h=To:Subject:From:Message-Id:Date; b=uK8HJSb/MzupD5QH6dKfxhgRHoU4OLzOnUaPCynWqZ9EAwSrKmuit/MjofQePAp9SEgVIXIdvwCPl3kVpLlrvsdRt6oV6l4tA//csh7ulhM5DBorqVP2oR2fUpx9s6Qy5cJAXhdXDusFTqUlLtsBK+E1W1HAR91EHcy8A7icR+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SI+vlZOL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SI+vlZOL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A885BC4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756870793;
	bh=fn+/2FeU3XVKbQNt+CDis25IeoiC/rVCgh0HqEQN/KQ=;
	h=To:Subject:From:Date:From;
	b=SI+vlZOL0OZgY4GZJDD/IibK8wekK8AXW9AEtyZCtr2sX7tTZyAmyLJsxQhWEwlvd
	 u/UpWDBapNfTCAoTNJoLwXHqLQINtdEVWVGdOmCXmB9xyxnHS5cQwuk9F+t6e9c+WU
	 ooRmXVrYJ5Q+QfMgAcVuX6sXILOqON1QAGfPO4dVsYAh67BwinqEElCFjj0rN1z6yA
	 nqhdl9S6D86oSv5VrFEnV2M4kZsXNpzqvupVnwNv0Ib2/eX8IjgvQ04lvLrmTywbeY
	 gEhfS2+4cMNjtgKOrQy6QNIBQsL+Y8Y7ZaQEKxatjeRi4lxwcmnme6xsXAZOzdnVRC
	 2lmeMFcN4DI4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D47CA0FED
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175687079358.9424.16270890584743906520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 406ed313bf60c8d7b6ca1231099eb53d7df9d9cc33fafc0a88ffb173cebeba29
Date: Wed, 03 Sep 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756870793
