Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D0751F2BB8
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750889394; cv=none; b=DzHajwM6ErwdgH/ytERPPRG3C0UcSB9McS9HDFWbN62Z3vHpD0vrKMd4SvyPsALRlLfxyeoW4+QD3ruDWQyb9HgMjDhe8yaSJT/rF26ZeWl4eCasOaLxh/Kc6aTCUbtstIto6Kf1dLhTj0LTON2CtfMbRoloVjwUh7pLfenWd5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750889394; c=relaxed/simple;
	bh=drRaGRdMzZe0a+rS9EK0Mh+d4b1pdJniQ8S8e4Kz+Pg=;
	h=To:Subject:From:Message-Id:Date; b=Y7s4D8TDeOaleDhvJJgXSm4orP5irqURk0CLE/XVQbsEB3EmxvPzSh7lUK0FUmTjZoKBDhkgL0mDECr7waz4UyWSxzV0NmvibgKG3o42ZMpMMFUO+7JUSK7y/jMbNjD11uakYIolxl5xj/bADqL0xLbig2bIhOD8junp7Dqr1+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gp9VrUpM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gp9VrUpM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16BBC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750889393;
	bh=drRaGRdMzZe0a+rS9EK0Mh+d4b1pdJniQ8S8e4Kz+Pg=;
	h=To:Subject:From:Date:From;
	b=Gp9VrUpMvez2g1gZC9Q3aVTz8rlOYo4gY8aC3B3yjNve9YYBByWgAPVBjOKxCMALu
	 1L4bP5NRtR7bon43cHZKhBAONTuUeAojOaYlp9JcGvk4jQOBAY/1K4Kq3zvx70lZuX
	 pF3BL6O3/+ca1Ou8tP8FQx6/0d6NzX6C7ODVh1W3Rkxru6rYTOmP+BPqqVgJgZTZ9g
	 lLnZUtc+wK8paRpatrlHbyJz5EtRzxLCEjO4S34NB/czUo4I29IVbUg1Goxf82JUH+
	 +whfl69vAqbthPl9huCq1Au4fxelYLBbzwznLZszx7trGKXBlbRDF9tYoniK+a4HLE
	 wRQ6B8JWHaWVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B76C77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175088939358.4851.4974987745554721303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a69a168cd318d2daf32abc00348ff144f3abb2332299bd7e32caec67ff33b72
Date: Wed, 25 Jun 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750889393
