Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20AF61CAA85
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 15:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763824914; cv=none; b=ivkzvo3MInCtejHmR24kpfnm+kwN15F2PTCI/L2OA59rI/Z0iiYKzweotH9aqUZni8lb5KaiCtMH2PeYzrnhfvpbJy5gXi3ttPHZ3/GgnYhRP48AqYKqSZEF1cONpcCC8nhNQg8GWqBTH+iRpHGisbiCokvbjN+v28QIx5X9xp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763824914; c=relaxed/simple;
	bh=Ep24XU5dQREz/lenrJARbFuonYlTDYyow3sCzaKOeeI=;
	h=To:Subject:From:Message-Id:Date; b=UlVi0hm64gvZVziS6e2926UXqSpjLAP+JXezJSVvVmrDmoLmtTg/PNwQR/H8EZCJpHEa+BaSuZHO8pxcNxYhGk8ETBVcHS4DVYvrCL8JJEo4PnE/jKhz/lHY7jUuu7KzbidDn4OSFjKm2aBAxRThxVEMatuwI3Br7z7aWYo4DLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sptRaPgr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sptRaPgr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF0B7C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 15:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763824913;
	bh=Ep24XU5dQREz/lenrJARbFuonYlTDYyow3sCzaKOeeI=;
	h=To:Subject:From:Date:From;
	b=sptRaPgrlZIdl/I0SCIADZ+DvvK/BCaXzkxJoih7VXeM+7tl1VtqcOsvcA7qFD+cd
	 Ilo4QKXvCFeKW1uvUIAi6llDFQJWqGbP4mg/RakjdS1VFF8/7OTE5OSXk5Wx5dcO5X
	 1H7/f9QNhK8jkw9fibSaShBWHQoMwKF6MXwQDhrCYdMsctMoDJuTvqqmPP2H8Gp6yF
	 B0us0aO/QjRzJJI2TFtU3VaObzY/FD1XhZZ/KIDlzmCj7o9hjA3E51UTJM4hum3IJa
	 Fdwqn0q+lbiGtQtC/Q+hkcC11AGE9Pcsd2dpUMbRyIZ7qVSi48gOIOkujS2WrU+Jw7
	 2EdOV47YxvF7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979E4CFC51F
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 15:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176382491358.13580.6473514591456473862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69054596cfdcda9e81f9752f5fae227e7a2c5da0141c12faa659b51def232a6e
Date: Sat, 22 Nov 2025 15:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763824913
