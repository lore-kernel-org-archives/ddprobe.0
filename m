Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CED02C158E
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 18:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777489054; cv=none; b=q4Q0lhwnE8Ip1XwwjVwMqSsDG3XA0cuzF0/35RkHQN+5LL4LJQItPSuYa2NBYQVuMh3POhTLvRHA79EK9iLP9xDEMTz9/oF020po0NDEvID2IkQ1NIOov2DAwl5TKPyoDKUm+6sQDmpXN3iUwcarnbJ7TEe+63XP4R+aKYaLs5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777489054; c=relaxed/simple;
	bh=RrjJwP672igHo4enmfg7CFW8vWFpY2j8tuC2ZZyx2mw=;
	h=To:Subject:From:Message-Id:Date; b=QETw2OwCT9+xYiYjCEo6gcVu0p2VQ2lN1bbpjGAkozaa2vqN/Az3jfRcsZhOQ5X0WNjkutW/QZWzjNoCrNX9dEWtDd6VH+2A/HEvYr4J6+qCtf9CDtRdKfecPj7mKHWbDPDRr+3G24PNeVfDMeEMZXjfmuAReRYqyB+2NCejS5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RpNXhi8b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RpNXhi8b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8BE9C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 18:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777489053;
	bh=RrjJwP672igHo4enmfg7CFW8vWFpY2j8tuC2ZZyx2mw=;
	h=To:Subject:From:Date:From;
	b=RpNXhi8bxzYPtcmyxw9brShVdL8dddXP8G4dakuDOQFpCGFtBMDkkh/oVBF6iIJIK
	 l+thKqEk9/echw64Z9c4JyNGYN/mzKLNl5uTjglLYw+NVOkHsDr8zlylBOJ2Gq+Y1v
	 j0UpuIT+8IM930LkUAQiEmGjTot8I6MyYKQrotNs47DSkdtmWfhRjNJaR+S5oIaseR
	 xD2zPIc0o3T/QWJAPgZwIfDTxoJ1G9gl8CdHVUamm/cAbeQOZ065IbrrFVvejOa4zU
	 X67otF9pcAipbzjj5GEGN2bQpfA6Xu9Cg6TSdL/svM+5A489klDRkNH9F3BfQnU7sR
	 dMAY3qBhJhGIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1C3CCFA13
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 18:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177748905368.32222.12871643157323514148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d710df93dc083879acaa03e258e4f9261dce54bfd62a8d17a0dd5373ba82a7b
Date: Wed, 29 Apr 2026 18:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777489053
