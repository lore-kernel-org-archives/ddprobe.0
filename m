Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE8829A332
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749758394; cv=none; b=lfqStdC9dYrpnjs96ZRmklpo2sOqSnIEfEuwJPn5oiwqjsXnSj61Ql9YvwIc71NeIgf3S9lmRWkwRrhQQSh8Lai90MPs6FZmLz7d/EAKzL1vSaXMsjvW/FZNL+TS+zdBf6ITOvl6Aqs7FtnVVLKJ7/harO0cED4gFXJUdiby7vQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749758394; c=relaxed/simple;
	bh=W0YWGTCxsAKaS55QrXr0wOfAhfWQGYntDPzwmCO0CIY=;
	h=To:Subject:From:Message-Id:Date; b=QTH1u/oXsyd/5TaUxW1N5V4E0HVcONofSbYHDSpYDHqu534ZTsodHfOyv3c+XS5Q9WO2GkUhLrHw3sWyN+ECFtGGbiRNbK/ZC0+jFETcwkn5vJiWfkTyYf+NjSnd56Y/yw2xhnlft98Dy065il/aK/OXw7ELrvCR7Ps5tLvQcXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cYJWv4L7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cYJWv4L7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DC9C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749758393;
	bh=W0YWGTCxsAKaS55QrXr0wOfAhfWQGYntDPzwmCO0CIY=;
	h=To:Subject:From:Date:From;
	b=cYJWv4L71J2CNY0v5zXV7jrbJQm19jGuxviC8Sz5Yzq6oCCRb+Nsr/tEK4gL+d4fL
	 Z4ETZ9GubLmV5sAWXpdMVcKc912QjwyU+1jigEgjlgZe3ufGGwtJPtukD1aTvM8c4A
	 zxs03F/3hZsbKoipfq+JneusvxfzYIcS0+tEo5uotjI4HiA2Jole5N6K8jlsQzWC8R
	 4/djCnYgR7Gl/BCsj2zZK4V0ptSIaluIdXyoqP15k3u+GFFixe+44I1AGh8QOZODHB
	 KTVZfnh2euothUexqLvJCV5a80gYPiXSDJjQDWWXHQSjH4EsB8dDm27fCIsLkWynWG
	 hwHjRlKBmyrdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939E7C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174975839359.9415.17563224390043098949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f4efa05a33eb060fae998d1c05e86e6119a33205dbcc7e018a05935dfef9bee
Date: Thu, 12 Jun 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749758393
