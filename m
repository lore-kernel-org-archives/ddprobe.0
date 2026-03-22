Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB345474F
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774221894; cv=none; b=agGinBx+gftqGGdoCf5EMlA4+EOwkyGe3DiF1TJDZP4W+opbjPCMgFwEh7aRNKl/3ydAQSXgm791GGpOSl5bSwIT2CgMuKjcuQRNHhGzhS43Ey1n8EgH/pNjoAN5Uf1WGqq6IACAfvojTraXZwKl95CvWnw0iPwsxhheU8KktVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774221894; c=relaxed/simple;
	bh=XG1OD4FEd3Dog/csz1JoGE5sh/1kfpE+ouc6u1xTHNw=;
	h=To:Subject:From:Message-Id:Date; b=DBlREuKf52YdV9WBlj7JpS+8rTq+e0M7xIo9M4x05Bel4teTa5G9CdY7mNTap+tkAImtysLWM5YbetfUf27Ied55JHeuPGjvu3r8Yk5MT293uDdV/BphkOzXTCpj5pjSjxVkYbe0Uii9+TcBl2SsuTX6kc3r3rzLhYrSSY3Y8Dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ttmf4iwB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ttmf4iwB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8400C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774221893;
	bh=XG1OD4FEd3Dog/csz1JoGE5sh/1kfpE+ouc6u1xTHNw=;
	h=To:Subject:From:Date:From;
	b=Ttmf4iwBR6QSGGcYNH9VVGZmnZW74etbwvwLJ7zd/0tY928ean84xcgCPFM8KN/Hh
	 xqfWLNdIP8tPJaQ23h66kxD9huriBwV5kJgLoJU3OIBVvg7+DL3uT5Z5ZKqQfc740K
	 vA6ACIWWRpZiHdfEDGGvuS1AA19MPadt5HBqL/J4oFrmVekVuDGH53dkFUt/rOc3rc
	 /mQQG7fJf3YbcbEODwog3WSo5CLgzZv/LjQreM6cTSmge/L/Uqi1jGp9zMxJ8G5KZa
	 qN2OKFi5BCdMc9DeTD7ZiR3ew3pM1roT9HWbEOER4zyGNmc0DVg1ue5cj6CvqWbQu9
	 hjq4NGEhme+uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933C5D58CA3
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177422189358.12352.3456650302802681149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 821c3f407ec2dad48df587e4cb63cfe260b75d645322903670ac0ff2b650256a
Date: Sun, 22 Mar 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774221893
