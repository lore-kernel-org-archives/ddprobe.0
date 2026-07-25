Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F77A3859D3
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784994634; cv=none; b=Bs+kdWbHyXYXRt2whn6ha4IP5P6LvvfDeO0AU6L5hwWeSj2a45njoqtDTTRRx6d2A5SXJTYBhxGe999ctOhKkTqXBYtHSlEzqZQLndDwKQCuvOqK0laFUzjs7AJhuHNibGNh8zrP68hboWFijWxxpwnmOyWbdwwRCCxXnzLpYlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784994634; c=relaxed/simple;
	bh=sRrc1gp8EKjNvcqkMk1BJtZwiytWUR5CFSXqVc2pkbU=;
	h=To:Subject:From:Message-Id:Date; b=GpJ1XgSXrpw7Tk34tDzvHPaCPOsB9kXF5Y/FvPCV20oziLKvNPSG41f3uxVMOoaEiOweQLsMqtdXL2FuR41A0QQspP/r3E8lqTLI4CySgR4vnm5r/+S3ItirIXgIgwjab5js/Gzf5tJjKroCqo42vEJKQwF9aD5FiBQZSpqv4BE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WLusHr6v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WLusHr6v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF857C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784994633;
	bh=sRrc1gp8EKjNvcqkMk1BJtZwiytWUR5CFSXqVc2pkbU=;
	h=To:Subject:From:Date:From;
	b=WLusHr6vOmPH+1ighK0NMpVbHE9uJWKUJRzGNy2kl3tgLMwzfKCjdExDn+34mQzQg
	 /sI5vcl1dMt/575I7QlHrfdRRPyzfwKIMny/Slp2xVN1Pyo2YvnYzgp+qFdPGOf+DR
	 m1wFf6iyCfoIltVduEeoXXj8M3bBSISieCcDX3DhWOUIwmRRTzmEn4EFdoMKvgvJwH
	 7Hnr2ihfIxEsAKQJneGS7G69OGaBZl7uXlf2QQ6R0/DxlHgPg2dQPWdAgwazIIFOBv
	 FxBrSqQ8nS6gkFdjhotQPTOPA20JqaCRAqCXfthh9q49pKawmALPKboI+7boyT139D
	 uzQlYdu2vfQNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5A4C531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178499463368.1859.1987416403182057353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1698f44cdced7d2245c341a3c1b55adb1d251a4a2ee03f7d119828656313e3af
Date: Sat, 25 Jul 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784994633
