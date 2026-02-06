Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4161F4181
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770353034; cv=none; b=IRU0FFHELf79YwyPASBRmyhQwVelhfSJYeYKOIeO4Wna8nh8TVVDIdPDkACAZpJziiVaaH99kWgKzkl8PjXDFjUt3SjJbTnysL6aXBoC7dcTJhxoyZxFsHKaeyww9mbpdsq1wHjyPIHQV0vxPDWKcCrchZ3XGPuBDZk1DM5POsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770353034; c=relaxed/simple;
	bh=ca6IpQ6Gc76xJKaSrxoyq/cgca6ISh7bBaJtvHglfx8=;
	h=To:Subject:From:Message-Id:Date; b=QOh1ozWvpYfwpB9xt/M2GNIoeM6VOKyauGKFSiqKQAOwcIFUeqqWl/Kje9pY9Vr4TpXMpn+9WWJz8ZjPxen5lWhMFDtqlhUakMKpAtpHFfvh59E8yClSR84cAyrWX4zjosWzOITIpmvTXz2tpwgjpYmgTEgVrgmsMkAyG9xqMZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y6Erw633; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y6Erw633"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B265FC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770353033;
	bh=ca6IpQ6Gc76xJKaSrxoyq/cgca6ISh7bBaJtvHglfx8=;
	h=To:Subject:From:Date:From;
	b=Y6Erw633o8Z7TeJ3mggEggG2lKywF0fjKwWPFz5jwEP9Z4ProoBdMdlL+qaLxHLWT
	 I0QcV67IRU/S/Lh+J0mb++lqeoLa18uJhn2rU8C0tB7Je5EO+Fta1pYvdCP0AUswlX
	 h5swLnTAOgklyddowlMzRdE/Q6IFTbOxfewIOh82gV9/yEw+DBfWdJFdwbACK7XwiS
	 /cwv1/13tdZmOZjgmB1oyWxxbKTj2A39pTRvrMqeemboZ3b0WBHYp8qzKif4C9x3hO
	 t4U2HdGzauTMuZWbh3jrFJ0HebQO7ODnkgT/WowYZgYp9tAYHnpDAPGkddykW+kqAW
	 k7Z9xtclk307w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FD89E9129D
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177035303358.3556.4811516983521122643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9966f5b8355a983158997b59e54d0effe8933bf26504cbdb2717ff5a105b0fbc
Date: Fri, 06 Feb 2026 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770353033
