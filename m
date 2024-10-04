Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45AF01D6DBC
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728045954; cv=none; b=ugH21mWiBYZjTl/q9Xhh5pm5YmsA2fZbmVzFOXK69YiPLWgBOsBjhnxaaIK4F5YTAN8TpoFWeGjGf3L8rb/Jec2dr7pXRXFJCwzOwCnbABCDDt6ZuMV+bdAks91klRfUb0TUbmwEMOw9Bq8tLxWCKIEtIaiT54H229vTpiUVLXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728045954; c=relaxed/simple;
	bh=X3fFlh9exN3GmRW92w/r6m8h82oEE0jmd3Xa1p78xf8=;
	h=To:Subject:From:Message-Id:Date; b=Xp6a15nZdbdXXeMWeBLMekrv0dk1eGeqsLPQY0dZfwFe7BaVmtJbtoWhG4NeYfNCWChRlkeC9nWE9Ngp/nQjU7GKiD6hh7eTcbdojF/2++lFsfvcm5A749bup4bziAGWVmHnrVH/gmu6vCH2Xex0NYq1ix61o+QnsNJlHe4cPzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tCs26DnE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tCs26DnE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5782C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728045953;
	bh=X3fFlh9exN3GmRW92w/r6m8h82oEE0jmd3Xa1p78xf8=;
	h=To:Subject:From:Date:From;
	b=tCs26DnEUbWkMljPqhD9/gFgPnNaSd5qL+K9otHEX+2IFm8BLEBkjwZni28UrMntB
	 TKe6zPjH6wl0qp0gbaA3PR9gXREn6+wWiRGnRdtxUkgMfQ9/Hs4e6HkItPbkKjzXV+
	 UqhgenjfHhDj760Ki9sWxg0SEkhp0uN/jBJXo4UzYKJgRJzAnUWhpbL7FXd2SRhYEV
	 OAZnTWyIGHmAUpqGGrlPgsql+PeU74aAYzCK/RDimsl6+p5wyDu0B81pJp8p3NvTx8
	 kWhmkF4PRprGZb8b+ihJh1i49q3FXMbWzdvvnAHLZudfFcT+awhCeBoTOwQRVCJme4
	 eWcUVXgE3ThAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF308CFA775
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172804595370.31821.10430358994061364342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acb67c9edc25c628bcb4c147427114ae1f6fbc9bb49b0edc2df6792379a011a1
Date: Fri, 04 Oct 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728045953
