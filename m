Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F810382
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746317394; cv=none; b=R7D1cqzZIvt0rhVUdox7J24CFkaxFOCQjEIleHDRaIMDejWLXLD2ohgwZ2e5/KCC04eLXA37yQU8r4TOK7FvlTzVPtyt9R+qMRcDLCUM4WPaK3qF1JFKweEZP280sShHxf/swLR/ACXLMTrTJZudHNpW6d12H6xkQrjAam4fnsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746317394; c=relaxed/simple;
	bh=yW7EmitUqtvy2EcmBw3t4TEvhG7xbrG8dnaAfJZmcbA=;
	h=To:Subject:From:Message-Id:Date; b=tY5lUIA2xi8WtoQwpjz5cpfZ4Af7f+w5hIpETf+lQj3JXlI+Fyg4sJpeRjNgu8v4z5h35DVkj/5QFEQB0l/2tvM0T0vgr72Sv2iFIDnlw7yCUwRD8ipoDryL8Fud6CpM+PZrXGGSArGELY7E/lvQRE8g8GB3SOZNvEsP31BcUtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FJBlAhv7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FJBlAhv7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A90CC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746317393;
	bh=yW7EmitUqtvy2EcmBw3t4TEvhG7xbrG8dnaAfJZmcbA=;
	h=To:Subject:From:Date:From;
	b=FJBlAhv7jsE0TC31gElmiIU2W5fpwLhcdIW/xi+g53uB0NggiHUGTyiH5GZvNRVbJ
	 JLNKbBwDRt8/zPlWNi6UPnb2dcERe5HO5++AfOoLQqXdp8ls6InPA4ojwRhTUO4Whe
	 X2l0dHh9wEmnfu0lysVXVbY0RMp1odYNNIkDG+IM373in3bghq0aMOBtLRxt6P6s4e
	 elrQd3sQFCFZENDKG2WnIko4S+28bTGb78WOkhlqWONYpQ5ic3/QuD3/U552O4Jk/4
	 1gOwsfTbZeTOb6z0MPesUMyR18Np5ieCEuzIab3Sf63Halvb04ygK0klFWA+qGqGNg
	 DqT3S8acQgwRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0C3C369C2
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174631739357.16298.4052808531232078172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d781460a905813e4a820b587751010262830dddd6af7f941503b1a846308f31c
Date: Sun, 04 May 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746317393
