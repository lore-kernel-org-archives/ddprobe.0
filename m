Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCD819995E
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748110194; cv=none; b=hZVcFiFy6GdoRTknUS1zeKgDi3t4wT6+CeNqeUO+fEP12fgrJyRUZ/aj4F6ra4SKDrggDm6+RFqkRCtOutmqY1T0DNMycBbzYmZJ6c6uBxAPv7Pjnk+acbVIZv9qg41GAfGrnhK7/qrG6kdUgq6guv6iJsoLH9cnImoT6IReEIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748110194; c=relaxed/simple;
	bh=675fzoKBrahHlKQwi9lqm41VLzA4slMzT9ZFVS6Vwb4=;
	h=To:Subject:From:Message-Id:Date; b=tgUgJtoS1i53jvLNafFdU2BWfRCrxHQ3+ii1Aexgp72y1yKIjOAub7/rB6QfyEdLe9yDGQWCM/PeeI5Tbw8kFzS7JHxXntge3SlP/mvX10gbjpDssh2H+mqQXC0Sd95rQoNLjb8L56kwAX8HsIqu5CyeKCZhBcne9CSAV+R31lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tzg/y9JS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tzg/y9JS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B70C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748110193;
	bh=675fzoKBrahHlKQwi9lqm41VLzA4slMzT9ZFVS6Vwb4=;
	h=To:Subject:From:Date:From;
	b=Tzg/y9JSI3H+yXB5DjVvQV1PF6vnQeG+qLHkb6QA4J4AS/rX7nq6fsAdc2Sno/ZwH
	 k0MzuumpJ/4KMCF3pWOGZrLi4xlj5h3xYbOvDpp7kV5W49Np6BuemeB+Gmt9R9+8JW
	 4KL/SXeERmzDia2aAWiokSChOsG2LppOqPA0APwNQavQ3cu6dL8ueGg75QXAX2ITHK
	 +rzKEf9DUmPlrKKI1bTBk2h5Z/VqaZPx78/feZYwiyIFSnXjEh7AfgTq2KPNv6RG8c
	 ABBKl4PyGZ0ShhdXPdvp+9RDJBomJ/6l1bTKvtM0C6BuiAUVWd7R751FmphIRKwhZr
	 3+ePVbrO0KYOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93069C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174811019357.28921.1070761889985101150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb3cdeaf84a5818adeebe00a16f34b4216716ff99f92812c3ba736789b467daa
Date: Sat, 24 May 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748110193
