Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1FB30ACEA
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757337595; cv=none; b=Pa35WvoclDBCJOoHYbttqOphfCE2+g3rC8LmS3WrHss/nFx+BE5ac9yaweNqrLfKCZJicCwdBML67BJ4lHxclgE0/CE5i3JJtRcj3FTMYbSg05IxISI/Guvkh4vg1g6vIZcJLYBx/eLHM9UbgORmDzIetbAEP7fNQ1iNp+9gH90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757337595; c=relaxed/simple;
	bh=ygwH/ra+rKf+ExbBDTvYA7k1Z/MAPE7L3s5gumDuu+c=;
	h=To:Subject:From:Message-Id:Date; b=LPV0dfVmILkebHPoeEH6+ZlPAHyl/i/1tNJE/ofGd8iayHpEOIWH65MNGl1OIUb1zNM8klu9oV1/3Q3oD8z5tiNgTcwnp3OyMAeZ6eXts5uLAGscQFIHX1z4piLmmX/N8uOb1/QJ5WnI3cpw537Xxy0EUqEitlragmTSmEochLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hK5Yk5ms; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hK5Yk5ms"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C0A8C4CEF8
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757337593;
	bh=ygwH/ra+rKf+ExbBDTvYA7k1Z/MAPE7L3s5gumDuu+c=;
	h=To:Subject:From:Date:From;
	b=hK5Yk5msTmFeOUBUJr9GZSOnrOAGNTEzEwLB7KLGcB/WCn4vGit70uF8EdKgyVnbD
	 f2YdSmuMLjBqniBDA58MpDnsnlLtu5E8r2sQr8eFt28Y/n9R5eIwX/E8+7+TUL5RVd
	 S7klfQKNR4/BtBvyd2slzO0oqrrBiXS2mX+s75E/NuYZ8UW8Vs62RKZ2rSongQuWjB
	 BFDH5fbSTD69YWqJz9BPIBcQNoJlyJUzKOwKZVo1XLV+a2/om4+dbHJSoD0XcxW5xp
	 GPKW/brDbVktWBRzRc7OCh/DBXgqYHvIe4VG6FGEYo3iN4RoZzQ2IU8Ons3ObddkJn
	 jiGvZKqS3n/gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E81CCAC586
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175733759357.8335.14882538628169131086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3427f500b78e1be6f7a398425cc73ff2d86110dab092db50519ad2b3afc9f247
Date: Mon, 08 Sep 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757337593
