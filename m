Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD65126BF7
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 12:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779625354; cv=none; b=Uols6PhItmGaMXG6xd14NY/Xb0Fvq/7NWPXyqEdjvBLiRP2f052RFWrmfPh4pugYfoILnAP++4w8URT3Br7AssjUJ0DmZc6J8/OKVZnAgWi8mrwRaiNExszIoFW+vh1UrBP2JpMKOmuQ+qDdyxQLej3EX7BYieNDwESFQKnd814=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779625354; c=relaxed/simple;
	bh=kHkUt5MObJIbD8YiS7fglZtD5AKq2RoVkQ6pZcipLrg=;
	h=To:Subject:From:Message-Id:Date; b=PLj7JOyPR5XuwHpdI+MuUJXbx69PzPsOEaqQtXtXjWLdJW80Hpmf2hQIzMykEl7cpjDh9uvmR+Zr2ggqOplKH4Js8LwXcSRaubc7CG7O0iXcCApTI5gp6rQUpAfxKjx9NP+xE3jjzMHG8qKoxV74e+1C4QyZ9nHTi9l21YFt66c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YlRSrBCz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YlRSrBCz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF74BC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 12:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779625353;
	bh=kHkUt5MObJIbD8YiS7fglZtD5AKq2RoVkQ6pZcipLrg=;
	h=To:Subject:From:Date:From;
	b=YlRSrBCzCl5o0J/3srxsYYsFj2TxXQ/0CW4+GGcvM1r+i8TNUEkt4pMulnPBHXC2B
	 YwQurrHuyOc+M4NJkQLJ920gGCHVradSx2lIZ1cfnhRuZaswGHIMM9Eznj4h5dMdmu
	 zqXq5TsbZN/vQM7f2ivYNxMC7T11Z7cstI29dyJU4Y4gyd82qbuLYGRoQJbJuELJAP
	 LqIuRUnEUlm7KjXt5tvpgT/r+3F3A8BJOljkDkag5ZCEU+BO4HVKltfL+V6zzQM1uU
	 2Jd5XcE9kGzfJIwWCzDgSHM1rwBvQH0JInK3KOx0akdY9/9kfeWrjsY/zWuuh/woh7
	 gkdurGsxDzw9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E54CD5BB1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 12:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177962535369.14666.14926208178323315627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72b3ccdae4820ed0f7e5e3f13675084a17dc844e2a550d190098a719f41205f9
Date: Sun, 24 May 2026 12:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779625353
