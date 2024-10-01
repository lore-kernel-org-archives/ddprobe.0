Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C047C8C0
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727747754; cv=none; b=AuYSON2toPHGc0Y5DkfusVot8Cd+B+6Ocpcf/3IKKlKT8ylZWy/kRX2JHrrCXccpGPyjWK5508s6VbTS/eIvCb1Z53eWbsGYxC4TrJeYv98m7CkkYq4Xr5xRqISzv/+rbI7EFFMDaORq1SMebepnPDFEdzXYm6+gPgz/UKE+OkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727747754; c=relaxed/simple;
	bh=jiQzpoc15e0KV4KlpfdIdXWEMhqmuqQkfp6Rxe0ze4w=;
	h=To:Subject:From:Message-Id:Date; b=ZH6KzxsRKH0OwUDf0hf45+kwrfOdsVYjqFuPoUtL5WzAZ00iN6KjnP2VoanCZYQ3iN2MpkmAXo8XtPWIkVnoDsWEGti8MREdGNe5ONnYArJqsM5aCotcnhjijp2v0lFsYmEjGeohcrA30jJO5BiIfth5f6ZjPYLEk0SfTgg1+FU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gkODuJmW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gkODuJmW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF1FDC4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727747753;
	bh=jiQzpoc15e0KV4KlpfdIdXWEMhqmuqQkfp6Rxe0ze4w=;
	h=To:Subject:From:Date:From;
	b=gkODuJmWuVp7DZbwf1aTFD0JpAAGa+ZrC5HYaNa32IBeznzRRU4vZI4BXPXx+p0Dm
	 9WjmZbbA0RweCiOGl0K0JbP5qzN2MX4WEgdEOR2KmCjLG7Bmhr/TjiUJAGDNdhMmR4
	 H1OM/Rt+COb2GBRU2imT3vV14FomQzDqt4z54tCxO8ZxamgpnkZu8nFm18OFxzfKvx
	 gaXv4VCi1xpzGHlNkijgulm4ErT/nfUxyy/rCF5p97Uf+K5KGWBZLNbfHZqcVzIO9S
	 O7CrvmcUCBoXSTzX8lZC36z5aOSUXDthCRh14/fEQu/1v9UqFAaPraGtuZ5hiRloBM
	 jCY7SnMh86tdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974CECEB2D4
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172774775360.14891.4013547485974918981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf79c33bc466f4189e849fdf2db93bd741ae1fc1152f8ef1a96100fa4a4f740e
Date: Tue, 01 Oct 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727747753
