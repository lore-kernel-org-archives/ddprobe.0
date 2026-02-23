Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2B392253EB
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771814094; cv=none; b=a5z4ZYp0pgD/3mQ+mnP/4RZnxXciNa5VKgmK9cwByzgMNlXJX+dFbqNgf0b0YT3IYaQG1zveBRezApriEuZTqE23ITjYtxru3BVSZoGb6/PPtE8esFZrhf+ecZ2EevtpUKflwPmL76RdzxKcJuT2xwGHdVHDsrZni6UFFp09Px4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771814094; c=relaxed/simple;
	bh=L0xp+gxZox/1ie7zoB24FJ92jFDSVIUlwpKA54GUhr8=;
	h=To:Subject:From:Message-Id:Date; b=LxhLqKyPWn0pq4/iBXc38dGNK3gmFJ+yhHWSDOQ5ulTtHD6+GJDk/3QZL36ib94THIM5EULlg1nSNV+OiVdsm+dTUEbK87odrw8yy8geSwMPo8riEtImamWMcEBGey+hwJmVOwIXXfeaGdgV/ykKXMOnTWexBzFYSKyrfLKUaTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vOCp7Rey; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vOCp7Rey"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7878C116D0
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771814093;
	bh=L0xp+gxZox/1ie7zoB24FJ92jFDSVIUlwpKA54GUhr8=;
	h=To:Subject:From:Date:From;
	b=vOCp7ReyHOU4hIT4WjnlC4en67hy01vSwT4NiP8hz25mzfrcZQ6i3ifwSYlHrSUu5
	 l/haHz67qp/FEPglOgpF1kLJEhMNytjEc717C34y7XSgdEcY814BxoOCQ5vMzN8trs
	 3NZQtEWsULlpnoyeHVTNHrxx/Wzf/+ojEU9dl1HJrHRG6ShxW5QehWbtWcIXD8yKTU
	 alYSNbmkmZBYnvHPREPAf0BHaF12VGQlRy5PxpqEGeGXe4KnYXaXMMRQs+PXOOKDTP
	 3nPJwXps9e5lKHO1H2uSpccpEpMcIviQ6lcgAjvqD8AGhACg6uzxbBz0xusJm5EU2p
	 EXJ/mJl2cxbUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A7CE8384D
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177181409358.3523.8769129565606099667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4be9b9d6d74eed943bf5c3bc6471059255d0f0a340501e3d314b718ccb04590
Date: Mon, 23 Feb 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771814093
