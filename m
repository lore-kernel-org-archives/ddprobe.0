Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3151C129E6E
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753534195; cv=none; b=eJomxXWmvpeWH+1BfkDVf+fKfOgEZE3+u/+7t2dIFabgr6V3B6/31UKe1IGrmk/FPQtm5HPqyGBtbpn0LeNck6UnWd6q5flDfO2QT13FodoApDmozthEkjxbhtyRBHVF6lBKD91UuSr1Squs8XqgF5xd1PQbKepTRxNZSMhPehQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753534195; c=relaxed/simple;
	bh=KRoc829NnI/7R2VdVXv75++kPEAK5XgK7VTuLwcX7a8=;
	h=To:Subject:From:Message-Id:Date; b=m/losZVxiLOJk4snDHnldqUBC0fN3414I27amEbIF7E3Dxzxo8XR6+KTo8+vNP8JDDV9aVC8YbdlKH29BV1zC8L7olSTpLRLSCKWCjb7DmkBtnX1yYMQ88GVQdOvPBoMBBEk1Jho+PsBGVwrSy1fkj298QCUbFdHZomxO9Bg+98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ToTSlIV/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ToTSlIV/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 998C0C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753534193;
	bh=KRoc829NnI/7R2VdVXv75++kPEAK5XgK7VTuLwcX7a8=;
	h=To:Subject:From:Date:From;
	b=ToTSlIV/p1/ZBfgJazngOf3TKjn2KZYpXM3tT2eWopvsnky4Lu+DJvB0wU18ac1ss
	 eTgwVQQ0GU6tbDW4/dx9Q88KQoCf3mt76uMVqlTl+Ih7Du1uUYpO0ioqOz5yG6PynY
	 2kElD0OlKbyPAL2RSx5F9OKdkyzczKQGUvqpdd0ZB2GrqzTIwhdABLuHxKu+LhrC+t
	 DVVXxFddhENxZM8ZvdV2rw+kgX84Macmxdsrak2Dl0PEBU4z9YGyOZdNYSp2DF4HUz
	 fdZKcqZUwHIKgXChw397gUPq6QI6lkbRY4eseJLXYQEslQVEyR5JbG8wO/aR8m+Tcd
	 2YzBglYqGfcGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1DEC87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175353419357.29096.13431037272242958323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c56374fd4aa151732ec329ee864b26effe96c3566a7e12094436cfdf09e32df0
Date: Sat, 26 Jul 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753534193
