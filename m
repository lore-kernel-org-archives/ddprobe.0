Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D617A17E9
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710554296; cv=none; b=GcISXUUtmM/77YWFU5LByVw2gVy6KH+yJIH+qYF+NLcuYia30zpSPvWEvgTYMxZ2LHFvjpaDH7tC460tnllfl+5QdFwiwXJpUStaz5kmoMtRUCj+zw3rwhkH1iNbg7UkdFwGF7Iyf1tg9xOYSteS/PDj++d/tl/0vpSPdmozNb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710554296; c=relaxed/simple;
	bh=2x5Ou3UZH94LMdYPPUD7UZFTcx0iIfdqrs6hU7quHT0=;
	h=To:Subject:From:Message-Id:Date; b=FL0v/CuJjJPYPd1LsTqF8pNVCIaSqm6a1vtQnJySzKd6UcdcO6n2kz0mLIm0KKfBw1q0VCunM9Sz+2tpPIT4at+0aH0aCqsGu7vrliGWeaDPWRLstz7vQi0po0aChje1vge0E0IPj8WZYtpeQcJguIJ7EeNp34GIJ3lVekdhNCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l4abjWAs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l4abjWAs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70985C433F1
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710554296;
	bh=2x5Ou3UZH94LMdYPPUD7UZFTcx0iIfdqrs6hU7quHT0=;
	h=To:Subject:From:Date:From;
	b=l4abjWAszfKkOXfcuv4PGT3xe4t+n+o/fndoqtWMUQBADit00VV4FQFZkbGnIy5vI
	 jDLvkpUxo8HsPyXk6Uiza5FPHqJ1ZI7TpokY81EX5xmZ9uOCKMYDz5Yk+NmeMvBMdG
	 CpUPUhDszEpUxBoXjw8XVuTvyuz1uciZcT8vNslfiJGQoZq8VXE1QonDKQJw0EIdM+
	 a/RWVtyQr+gdPmg0eaDPculq88YhQ3ZT08ycjuFkwgfacNVSSNTAANPoG306Lqc1H1
	 TyVfudk6OLZGb7S1hzOf22ULzZ3qfWKz7stc2YJ/FkWhZARIRyQkeA4TaLhNo1VqyV
	 2kJcUfzld59AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E3F4C54E67
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171055429637.13372.4368693211084700125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e88dd47434f58a94913f00ae8095324b8d123c86b7b049005159897b81ded0f1
Date: Sat, 16 Mar 2024 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710554296
