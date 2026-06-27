Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299034315F
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 09:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782552514; cv=none; b=RcBPiVQvNusY7xcSX9/4w5btKxqN4WIRAjhIY4DfL0S6IGGv+XRwsML2qN3exWkmcmfGz95u0XGYDvkAPdcfYUNcj1KyboHLCS5mO+1WhnEDvpzKZK0oIxPg+/0TlEPZvuhmaRPbIo2rhX20J1HZWUyPVzPiMCAuOMDXr9pbjpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782552514; c=relaxed/simple;
	bh=weT4HGbggFClFnv20+6JKYGqdphIQgH3tRHz1wx7X2A=;
	h=To:Subject:From:Message-Id:Date; b=cs4Gp1rzAZ0IrBiWzy4+oVjjAzhTjnCLcKTeiwU9MNM+LU0A80pcEdp0dTHUzCiic4+K8R2zgzgwwHw4jY6F9mQ2K0ypvGOnwB6UcmaG+JoaeXOWgMtDJzJFdkdVRNfOoy63X6yLWXHQ1tCIHJtqNqGnDOpsiJpx+GNCbf8UUI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uch4vGqp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uch4vGqp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD7C1C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 09:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782552513;
	bh=weT4HGbggFClFnv20+6JKYGqdphIQgH3tRHz1wx7X2A=;
	h=To:Subject:From:Date:From;
	b=Uch4vGqpQdsYHRpHpaddCPkaidLd/kEij+tZQ2M0BA3rxpE5LV+kvhjPDzGOKJexu
	 gUclU24qCzoPOqhyGcLbo5OaZsEW0qcAaCF11YcKbUIuLIUaSsTD+y+sAHcTv7sKzJ
	 ooMyGgfkiJYRXd5lg8/PmLOw59CWvbMAWwbwRIchPtIpz6ji9xyZVt9RC7Nz9TVulL
	 EjjuGoGSxRMwROYvVPD3Zaqf2x9PM4eMBYInx7UqE9Q4KR9TXuLupwF9xiRlgMA/0M
	 dt/uDZLsJHp2VHAoJhjLB7JCeXli15R6RrJnTESbKVM42rgf/+bYILUkOrsK/607LT
	 X761w3LgyLhew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3337C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 09:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178255251378.26070.15093885980096160596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6052a85acefbfbad156764261ffbba880bfac14df4836113abb3589cd973b228
Date: Sat, 27 Jun 2026 09:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782552513
