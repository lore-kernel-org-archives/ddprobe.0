Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DAB2DF6C
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 02:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719456203; cv=none; b=Z5id3ge0qCqaJyrlDx5WTRy2PWcpHL0ZBK+nY+cER4ixxveUzWBBy/TXFrr5n5bRG7yuBm1ElnH0GhgAXVmOrfyp7FYOgBaI4yA7tL9h2xYyDQAlG9L5qE/hQhjXmUpyorF74lfchQ6xK6Z3c81XWNdvl01i+7MX19cOxz7QZOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719456203; c=relaxed/simple;
	bh=elcM+asIT5VSHikIDXFx/kTh2pr1ow62MnK4RrCYM0M=;
	h=To:Subject:From:Message-Id:Date; b=O0zIfEAeqlm+YjxelAyyANfWeT5I4NfwpMw6btZ8m8e4cIAXataA/LC5z7ZlxrCxd9y+NqZDkU6iEKwhpaNJgylAV5JKcIiLV30iT/2j0QFPPbOVFQAbhVg1hH+CQa9nSvPz6mhy8pJvHR8bfIONqR0E7BZy9Js6+R4FyGUoYqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Klek2crs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Klek2crs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC73DC116B1
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 02:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719456202;
	bh=elcM+asIT5VSHikIDXFx/kTh2pr1ow62MnK4RrCYM0M=;
	h=To:Subject:From:Date:From;
	b=Klek2crsj5+LN978V1EowzEDbJ2nKTNBT6MHZjQslf0I0hflIvxlFoz+p5KyacKzs
	 G4xEny92TnLSB/LtyyDNIJGX/IZgnpRoFEcqZaypriGq9xsURcvTrE/4jw4M1dSNjZ
	 xP65qKpPCEpMTvv0PU59rNIec/ojTQFQvx2aQyP50u08kJCR0NtqkCPFs5I9bb8FvB
	 a1j/icPWizL6xNdgfvWywf79ylYAtOcv6s0t/cXoDD+J2UE2byQz+gADWO4qvgBBq6
	 OU72iEYiZ8HjxvxN7WWq/JFM1aDjuCSFCUXIGqTdBOpWlqKCmYqtiVrZx/wg+zqK5s
	 XsMIzqeoJ2uYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF40DC27C4F
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 02:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171945620277.10985.9481028633576678873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccea8d224740faa239c3c4559cbd0f4665189e5373bee22fdf6e9c48b9ad5aa0
Date: Thu, 27 Jun 2024 02:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719456202
