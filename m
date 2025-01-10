Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409332063E0
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736550954; cv=none; b=S8hqd9rm3pSnZ5QGSouayMwIrzMigBbApXNpAcQjbJsz+zDK6V5Ph1m183gNGyr4R6evjBURl6pw6PsnmoV49FRIDLby5jCI65SYeerhmAarCLj6Tbka++51IeJh3zATYq12+Yl+dAWPU1kpq+jJGt1pGn3/JxCbTE+x2bDFyUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736550954; c=relaxed/simple;
	bh=DOJvfks0/MHTd+q0Ys8giHXrITkSGQqhVofWr2IuXkk=;
	h=To:Subject:From:Message-Id:Date; b=fCbSQauU6R8FicvwlLRGWEUDW/VNXMedxyE0Zqw4Ew2zL5JzyalZdChuEunu4v1JqhhBV4hcNiDsstfB1xr8OvGym322l7FpD/DuzP8M0UpX8vuAYut86DN4UU97R/341hOC4I2J4Cl3q8Op6gDN6K1yD7W0Sa2oc5dQpfVyHnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jonE9X7b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jonE9X7b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB44FC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736550953;
	bh=DOJvfks0/MHTd+q0Ys8giHXrITkSGQqhVofWr2IuXkk=;
	h=To:Subject:From:Date:From;
	b=jonE9X7b6Pn2sGc32cWXExL6ZsIjYOXhl8pRWdPm+tA5fR2TL2kmKetaD7xtKsgQQ
	 e5knUuqwdzk9TJK06+aRxunlz/D4iRaiSNqtdflLEBv5/P5WtTCvDERKVYGnGT/8pL
	 G2lptf7echR3KSKtd9dl7OR88AJ0c1RYxwdS0y4CgXXj1cQ82cX91hDzfGkI4MU49V
	 56k6ClMnB+MmsLW7cpWmDFm4qJ2ygbepzrHRc5fUr4i1QcoCmGQ+t14uZTAieZOD9C
	 cbcEJZSOMAJXaOKHRQgx7exxZrOf1CwqqlSqlhVhUtkH+2d9rQxRoOArxvdCm4Gud0
	 njVhdSSR3SOlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E42E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173655095359.12807.6850465259903105772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 453423209fb8b0d76cb46ade096023c30401321b9ec175757c7d791be6527eea
Date: Fri, 10 Jan 2025 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736550953
