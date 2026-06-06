Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5351E2116F4
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 02:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780711474; cv=none; b=sh0ysLT2Hwzhu6j4I7UwEm6zrf98dTNCdiaxLUb5Xh5GC5/HGSgqaYUqqeylKMdOumBqfkSlsgjwDrwFQBXKHxXAqNH+HslK6O4vaHfcqtbHx4+lZOPh8iDFLfLKhHriAHcZZ0XKJ4Le58D3x6sU5YinPuZX70wH+Ot1AS1Qd9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780711474; c=relaxed/simple;
	bh=sN72ulE6TuiGW8O2IEwIe+ccn4PxA0zcPKTAPqmtd38=;
	h=To:Subject:From:Message-Id:Date; b=iA1/wd8byUZInaGl+tXXzxE+S6+kLrkWsqhqml8H/bGAnVfB8y76KpzPjRibBAI4rRRfUbp/xuZQiXRQVlvbcjz8Mk8JmaWhvtcxS5DNuoVjnjBn9ezzN7ImNMcsdc+nKSnpMVKzUc80jfEUbmD12lqH65s84pIyHIPLT8cQ5eY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NCD1MzrL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NCD1MzrL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5820C2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 02:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780711473;
	bh=sN72ulE6TuiGW8O2IEwIe+ccn4PxA0zcPKTAPqmtd38=;
	h=To:Subject:From:Date:From;
	b=NCD1MzrLVq+eZKyVhdNqic/XfhindBuzGkJbigAFH2Bt9Gx3KA2/qtIvdvrWOmapO
	 pQGcrvNZVBUgZfe4RKrP8LLTszNdoYBHjF5h4gBV5J6ek6HUfjRKgYQ0Nld0kqWLyy
	 SnRgrAe/uI+NWk6XiqKktGiB1A1Vj7bcMHLJL00FmBHQqUKwNnSaR3Hs8q1jJlULtp
	 VEwHWwyL2T90fA6QtANfkb+tRzgFQ7ki94h1Q5WlkcoeiT6zBaxUgi0Ul86lKLoOAY
	 3gMS+wjF98t7FkrYueolu+PFPEnlyKiAk1jOmLzBYVbn0U6zOLARW2n59IO1X/Ra3A
	 PScdTImxP43vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE50DCD8C89
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 02:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178071147376.11914.4729211332779171708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44e6661bb3228402e88df7c4c6930fabde4dd4719241cf4010c2fd36f5429303
Date: Sat, 06 Jun 2026 02:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780711473
