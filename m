Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A6837CD59
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785426034; cv=none; b=ueHY2bdZaTHbs7Gk9SW+DYuF8dSnD1rg+DR2uCT8x/drlJGaod01YgBy/TBtYBu95WlPWJyAkbK35Kp5KCJC1or7GV06bynG0C40FkpZgBEzeh7s5d1juwGR3SeReUDQz0Ud4GQVcSMKQOgDvGQvKEiwF+EGjnFcJHuass1jmDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785426034; c=relaxed/simple;
	bh=9oJS+O4aMfIW2fK+KG0PlqV2iY3s7Q/t7iJEHZlzWeM=;
	h=To:Subject:From:Message-Id:Date; b=pjbuziIU6HDY5hM+2FXyxJPsS9EFgG2FKW9B0Vd4mLXLy5YhnuxrL+gKZJg53D/2NRCukSx2jG7350yz/f5nbMVGf17SH2eOsq6qQCaC9QN7wSFKAcP65cBb4UiOtHGMXJ/kaPl4eNMzsbfsw+ul2XefIIplSG4jWOMrmo2+x1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j2rS9G0t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j2rS9G0t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D89BFC2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785426033;
	bh=9oJS+O4aMfIW2fK+KG0PlqV2iY3s7Q/t7iJEHZlzWeM=;
	h=To:Subject:From:Date:From;
	b=j2rS9G0tRtbQMZ+xi98E24ZwTgPUCU6W/pr2+iFH88ZM/Lgsgz7A5SEFbSsAvF6X4
	 8GwvrChA6088//TRvbgwn6LhHot01hNrk7Yxc+HpsGC7GROzRlbOStkhIK9npmSN7e
	 q7XfuAlqJNN5mYGcEb2e6Bdp5080sVTIhFKUnUIN1rLAHPsRDqvKP1SB+wRQ3ecBEi
	 CaCWVKjvV44HHr8txilDnrs+Ncxlst/41h6oChKZSOtwD2PThO/ZSb2OyJHRgfl1/Q
	 Cgk4uGaSTz1lD4PLfe7MiKR6N6C+Za0YlLocD7+gyWjpxhVQ0f09MBsHzCVEH49bl0
	 dAPdp/U52U7mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2910C55162
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178542603371.4229.16668922090705493694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bdf37646c1da04945541431a3fb7cc5d3ec1046dad07b5f18994e5d637adf2f
Date: Thu, 30 Jul 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785426033
