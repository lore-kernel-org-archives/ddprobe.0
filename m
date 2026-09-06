Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46FC9223DC6
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788711034; cv=none; b=XIfRAeAvOEuKFKhUEA1bMWQ2a84t7keQnZwb/3nQckbqX3NYxAaCR7vbjaAldxKw8NUMA3JJrpd7Pu5XxAww4eEi0+5QPrtYK7+MzSxDPWZnIEFCKsYsfS6Pq6UyOYhz57tp3TmCNnRT1QbTypCMvqZtNEZo5CMOqsutNLKN7Mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788711034; c=relaxed/simple;
	bh=I5cLurB9Qjn4fTfBXkW/PsONxEiaKVvjLxo2ecbS0OQ=;
	h=To:Subject:From:Message-Id:Date; b=i9TecYuDDtM3i9P0ZwDQOWYcR0PKRJ7nqLU0Mcb18dKw1ccCSTKSRmX7h0foCqCSFNVveLNPUsa13rVUuLQTIGyh3R72dVVdKCPThziEwUs6Wr+FBfkJs2KKJNmbI6WRImGvoYJ/84S7UTd08bBseW7PWgr0Ot/9x0ZHc8x9fB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJvaa0Ci; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJvaa0Ci"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA81EC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788711033;
	bh=I5cLurB9Qjn4fTfBXkW/PsONxEiaKVvjLxo2ecbS0OQ=;
	h=To:Subject:From:Date:From;
	b=gJvaa0CiE02o6jk7EPEfotYfYjxSbF78jqvj5I5dGlmbsYdw3s5AEO5AIpiu/mSHz
	 zGzK5Ft+T+4i33yDZD+KNhr8VOne+hQqN73+9l2bqMaJgMjjicdwpCXw2+WNLbhle8
	 pOxdbqVTWmiawFHVqgVjzLvC/l3W/Y6u35XsV479jNgAQIS3C0twuwb2QIJnQ8i361
	 3f8t6TvhRMmLEfTZbAdBAL4wyOOtE2j1Qkj7Ocv5iAmnOGiUIE+Nz/z2SKobn9clP/
	 d4szn8DVZqUCZEkjq/xVglzGytdYSQBQH0sGfTTbEqWVXUOY+FVOhimGBDLF4TxbNF
	 3HOxwMbsUmREg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7413C79F85
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178871103370.19185.1396650882570269285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 152d159d3ad776b4a4931ed098af8a53a5106cbb44a8518be5528b7a81b73c24
Date: Sun, 06 Sep 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788711033
