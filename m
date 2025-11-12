Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FAC0313524
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762948194; cv=none; b=mN/K6QPwHx48phtwU/PdBMPm1NvngzO38vJgPBC6IEGT1Kfvym2uEDly7gRgvJ9DCH+f11Uz2JCJ7Pa1SiPl9MJKrdliZ1fcuwFNt2/ERWdl6jyifwYRtStWhSSJSgXF9jpbxgG1rLGJDoFWqVL/g4ERKRLqprYdxIcwmoMQweU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762948194; c=relaxed/simple;
	bh=cF0k9LNJRx4gwG37cl9+XhB1u3j30u2mpmpO0qTa5yI=;
	h=To:Subject:From:Message-Id:Date; b=QHOdE6wZx4D5AEvxYBcdIxKTw+RJTEteMfUBoijUpCeVmI0+VDP+x9zxHbndsNtcVga/poFsZZoi0BX6ZkDEqIuLQJYksNuW2Czrwk0qODlqnE+EOvXFfuS/VB5jkVnhU5lhcIK4Ylmo4rysm9i5SNV1XubiIDe1jGOxmb71+Xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qyqWupZB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qyqWupZB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B5B4C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762948193;
	bh=cF0k9LNJRx4gwG37cl9+XhB1u3j30u2mpmpO0qTa5yI=;
	h=To:Subject:From:Date:From;
	b=qyqWupZBAf4GS9bauZX/qWNcuQxY1dCxcRTTlchXUUgADByaOoDdpYRS2tXjvO/Yn
	 tBLFE/PJ/+ZE7esdIZ2Vt8of7TIondyNr+52ScVpAzVauwX+Uy/oX+BxMvKou7W+Bd
	 t25WIi7JXG2W8BsiJcwM5jzcRx2wR3OHzVAttNPIMWJyCqcLr3EgJejvUAz4yOLZtN
	 SqG3r5gaUfJkmD/k/1bDSVEPvC44mdey0LSJGfoEVPrHcoE8jNP+Wsxce5nIDv6a6Y
	 8e9igFTpnhljf/TIZBCAys2NBgoTmDqYP2kSC5WXjDp0rctznR8kekLgMRhcNYPAhM
	 fB6v/3QTZr0HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F112CCFA1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176294819357.20300.3727369639222846477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 907f0094a92c59f1694012e6d424e3050cf7d84582dcb28160a238f6ff7d1db1
Date: Wed, 12 Nov 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762948193
