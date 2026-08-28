Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81AD7438484
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787916634; cv=none; b=FHitKdMWnEaEOt3g2Ld5wQlqr3QHGipY/wtjgWMtdBgHUtWgaZxR44ZJdARJlOLFXCs7HfYv3KjHyituWMVEFj92C+qJIDfYhMtZUgIvy09RmWtLrsi2XL+L6IKzjI1rhZhBSbOs3aZUhoAv7/zEMwjeuih2mkxGEjQDDS66JNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787916634; c=relaxed/simple;
	bh=bUxgfjuEcDn5Z8OIXqSZCpM3Do9wNA475j4X6qFqCpk=;
	h=To:Subject:From:Message-Id:Date; b=TIjTJCiususo1H7VxmHTAobcgJQGyv20QeTHCiS1zVdt+X4Gf+ltO5/hOOQzNc/ibMEvT5cGmJ9PZnJG33OODSwL/w+YrLnB1x4tJI9NNASqvw+dT7+J9DC7q4CttvwBMnlqXgOwn1bK6oXc+oz8gUhHliJIr0FFtj0AmQSr/sE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JQvlumvi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JQvlumvi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE3EC2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787916633;
	bh=bUxgfjuEcDn5Z8OIXqSZCpM3Do9wNA475j4X6qFqCpk=;
	h=To:Subject:From:Date:From;
	b=JQvlumvi8Rj+Ckbu3iworEu8rs+MEkFj6o6Hmgo5MeVQ98yxqsyDPoDF0Z/oCAGEz
	 5L/MhgXdhr+qXxxcXnA4LYH8/5FV0/89HfX37IAuMHbLee8Uv93DDAdrMeTrBKurDk
	 r5kSXknt/lpsQS0HA90daIc1AbJmlPiTzYFOZLAapNdpOFYzQs3OwWt6IATwocgtLL
	 y3l/LJuEznzPm/c6upR1eyZ/WE7DGkfpToQ8qfD7wL+Be42cV1bDJkiaTVdvE7r1IS
	 okMx0BqUy0r1Bc6dx99n4ZrYXr7JM+Zcben51pEZkId8/WWNplIFcK/8UsWPOhKuIT
	 0n+eU439m5PWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA60C61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178791663369.27137.4443010222605681849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 923d334710391c19955bccd8e1723d507820e975eaf2cb70fdb5c3d333389fa8
Date: Fri, 28 Aug 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787916633
