Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1216323D2A3
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755199794; cv=none; b=FDB1worGL8BYa6OL8Fe90cer1sXi0r23kGLosW/gZ2/xGgSIZmPeR42C1idSgXg1qTG0gSVGMUJFSu5E7KBa3tdQzCb+f7lULal8IblQR9gRodO39VZZx2/BUfp7cF7vDXBV89u1vfNuc6Kjj+LfMlUs1WY8RfsUXJ3oQs5L8X0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755199794; c=relaxed/simple;
	bh=bUI6NyhYuu12Y/ijCMfUhi9GjhL3udnGr3AGfk8LOMg=;
	h=To:Subject:From:Message-Id:Date; b=kQYRQCEOhR+cZnKTvGLdPVEzvLqheH/ZM3kwi0jJsTYQEx24tON0HtpXT4ejmkqryV1YwUjI+mogtGgmWJlNRVoz8IDiyh5JNFN2M7BbGNpPWVusBPOcniz3+qfNBkQ4SSGkEmBFIQLvuRobXQCg87iVu6LfWWUsQP93IUh2gQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GdQwGASK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GdQwGASK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2080C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755199793;
	bh=bUI6NyhYuu12Y/ijCMfUhi9GjhL3udnGr3AGfk8LOMg=;
	h=To:Subject:From:Date:From;
	b=GdQwGASKLHuJTWg1dUE3H0eG/pn+n2sRx3rACfSskHGwIpN2PJpY7Y5+oqanvai4w
	 6u+iEOusofp43itY1RWEg/LlTNpi+06OdaasiS/AcIyqM+A/BCh00rFS7e0O7HGke0
	 HPmryhXzasy9jFXl1GMiiH1Nxeca86K5c/e1P37rAPBA5ZmvQeibyo18piaNVzkc2w
	 ciphlPe3hN+zMUuNJ8nuyWPGA9LiYT5TPqhEEHrK+HgxaHbcqGJMPpAxZ/PTzXz7QM
	 zBD2sRgX/cq/PkrhXiRkZzrpECyLcDQJcyFXP8mUxvm2C7v2MQIo0Gfm1FCkFl/+zD
	 Ks2M2/GyJ75Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD36CA0EE6
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175519979358.12976.7369327474655997192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd6736319f13f0da93c49f9d16c1bfb972ade7bfb38db2b66dd661b50edf517d
Date: Thu, 14 Aug 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755199793
