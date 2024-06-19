Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6233FFC0C
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 20:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718828963; cv=none; b=haJ+E0dd7qe/yNSnsShnHHJ02O7VxEpCHTWpyLQvE1ag8cuLlrgSkZQE9yrVmahrhhLOdS8Z6Y/GCuRHmUEd9zodUUZcwLwmoDc5YkTWOOvUXLo1n6p1cpwDC39pe/5Ag5+Yux2oIfPczZprLRbSEvmEmxPz3xVxOjlasLlt1UE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718828963; c=relaxed/simple;
	bh=XI7wrc0bipUOXXlVgjOhOiJAonDnXSSnvAt77Wqqk4I=;
	h=To:Subject:From:Message-Id:Date; b=VWKWLSUwfBHl6AR/nTNcgD3yyVTfspd3MrbhLmVK+ahNIaJYNu+ffqgQzQhg/mvtjQ0Ev1c0/i3SKMYWwgybfujVlK4XSs3anUNGwRxgWhD5Zx7dnNwedh4DgO3RVu7wgZ4sBRKDxdpfLipQ1O08SMpgwcti5SKYNlTAX6qK4O0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FXwrfbHj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FXwrfbHj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E15BFC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 20:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718828962;
	bh=XI7wrc0bipUOXXlVgjOhOiJAonDnXSSnvAt77Wqqk4I=;
	h=To:Subject:From:Date:From;
	b=FXwrfbHjIrtS3t8OGr0760YmVCc/PQOoSwJEtBJGdF/echVMnuQNtIv3/ySGJRLI2
	 PzeaZS2+BREShDKlbsaMjoytSgWlI3+IyAFVRget2/wU8Q7l/Wn1Eb4qrN5Ogxc4WG
	 1/lvPHxHqPVqU9YA/S7PkedU3zt1NAmYaEnJDxI83JV7DmrLdq8/oVI6xNOv5Tzj1q
	 cs/EV/UOh+6vME5VBnIBG1BoJqmTdfGlTiEesMWHPhLvGTXrI23YwAUijb0DIf1LTG
	 p/4KoZUmI+lLQHBDoeg+Oom1EoEcishcco18goB4v2C8m5WGIwPdne6QzpPkYmIt07
	 HM7gEGjmoxLEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4D1CC27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 20:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171882896279.13514.15953476845851530230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f8e21c99fe78b7557110d5be046c093e792957075a114bffd3cbd085c0e1140
Date: Wed, 19 Jun 2024 20:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718828962
