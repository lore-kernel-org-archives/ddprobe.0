Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FDD19E819
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766276634; cv=none; b=e8QErTG9HD6xhwxtkHlIHPCJH43kIcfkM+aEKo5A9NJ5jrG8tuj9A1cEZQc644E4G74votyWi1eFbhTMlyD4aPTHyMcJetkpemYQp6zOu3pR0iK6lRcUxGVZhc+GHjntSM02hJEpct1D5oRfHdjdwWXFzO78ds1T5hadR8tJD78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766276634; c=relaxed/simple;
	bh=uLM278E7A8q0p34hVvXbkjAkvpkbxna5IKWe8QleONY=;
	h=To:Subject:From:Message-Id:Date; b=EKbG8FhP0wWzUUjx9XostLHOCFT73b+iJl0MURxrw/RAg9Un9Gbog6nt2Iq9w1VKxsnivRxl3cxGFVIySTzse0EsdmdT1NW/oihew9bYPG+la2h+iiMBjyVfF0muydbFA/VtsVSpnNfIuBrKz14gAp1yKm0Pd0ev7ZvRk5R5hes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OGfCNs9l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OGfCNs9l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F38C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766276633;
	bh=uLM278E7A8q0p34hVvXbkjAkvpkbxna5IKWe8QleONY=;
	h=To:Subject:From:Date:From;
	b=OGfCNs9lHF6R+bPzgXqh+98yEASRy3kfn0XNAHxH+ZB2DSBoy2usJhkUU2OOC2RYC
	 CJoxIAeU0c6HQhUhLKasESijrkn4PaAhQ4jcUeOMy+G6qp6kePzvEACGZef/WB6SN0
	 4BgKrBuQOe1bEc8vMWU/hjG5Cx9+wPXsDDokc54qm+pXVHmzRf4oK47trCR7A313zs
	 BewWD3ICvPFF+cUSqeadX2yY7kZnXrL1fVg1g6Z4cspYDBgYG/I0S/mgas/7XUvJuW
	 EFyBpTMPwn1XJ2kcX/SINlNyET/vz29NhdT6z0d7rbl2AQU2qbTy9ddeugLK7wNfZM
	 riExhTv4FfKmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9471EE67487
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176627663358.24280.6408726484330848719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8278cf514f3b110e231613b56acaa119929d6a0bf6e0e89353c726a7e3667602
Date: Sun, 21 Dec 2025 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766276633
