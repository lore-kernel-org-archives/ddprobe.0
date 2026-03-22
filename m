Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13A741B4156
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774197894; cv=none; b=f1q7QGjIYmO/+cgpJSyAUuhUAeE7YjdxrSIahWu5cOFEw1eH8LpZoJK5JG5VVSPC/qfH/BCixfMZpgEZ7YmsspoZuwpHHK5HunqF5tw1rT0MN0/EFpCqu1MWoR4ewqOiUaAgfjiLYfjgxAH62pwuHCwrkIyVAKXArwOxV6C3gys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774197894; c=relaxed/simple;
	bh=Ie1viD2aFaloUgaYxDxW8kXURrwuxb8P6DRPjM0z4d8=;
	h=To:Subject:From:Message-Id:Date; b=u9RIlcrjLfYzVjM9uokP2+ukpTT+JRTZYOMkXIxCsd7s/hdCsFoaWjd7N4pir98eX08YPeozd9IQnreh3qKY6TGBreVKN+6DylYnA9Q27d7OMkjWmth/eMoXDuQ7xXl3I8Oo8hueHz6RMres+EQEGrXjE8lxprtI7PkdqJ97rGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m6k4DOGq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m6k4DOGq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3181C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774197893;
	bh=Ie1viD2aFaloUgaYxDxW8kXURrwuxb8P6DRPjM0z4d8=;
	h=To:Subject:From:Date:From;
	b=m6k4DOGqzS+EZROK313lN35Ax0MvNszZdL8fyjZ4YLQpLuVNt1o5rkcFUcP1UoILK
	 c4cM4rA61ZuVXYW3C6cwyhx1l94mL2GJ7EyvmO3UWrGhjKUacYgLcQ7veqHgse00Uj
	 Hettiqmi6vTZPZfbdYB1fH7JTuaPRYGMtHoilm9xSE4kg0AVrlGP0VxUmfykOTyC3I
	 nmszfkZrHTBx10gruTE64wno/kuUB1sxdyx7qDqiAP/GvWLmW8fvmep3l12xiZAtT3
	 scouKCbnUysS+7PaX+Do0iGbu3xHXhkQc8fM2/Dqc/DnE5IAARxKtBoueYrOszWnRQ
	 IhSKtdNQqBvCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9070AFC72C4
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177419789358.19008.13103241867669553381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c3790f1a9187ad11c2936a286bbb5d171efd22a06d56f7a3b6561bae8241ab8
Date: Sun, 22 Mar 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774197893
