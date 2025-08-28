Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EF78625
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756356595; cv=none; b=IGsQK0PMexwnEmw6mfcYQwuPGdWZ4edLCzXOcnlOR8jq1zrmBxDQRX9aNlf0pLHKuFB1/QJOYLHVu7xrlmyXAtinqNUDy5fXjN29ZetORaq6BC9rd1G7ErsViFDNUqlaFGhcq65laitlyZ3aivI9QYa9W/uOFca600zua/71q4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756356595; c=relaxed/simple;
	bh=5ZcYhlq2BvPfbGbRRfRupLoiUNhFLOqycRGOr4G8YkE=;
	h=To:Subject:From:Message-Id:Date; b=RyMlxIglDXti46PQdaCgJjVMRm0izi5ISJMSX72sgGmTpoJTFlKS3LG7Kk8QRUUIm46jXHTh4nvLJKdSBNtp7tfmdf/eCJQJ2OrfYRYIknMqXH8Msx7R7jCf6/RHZumBalOpD6AjQS8+B1nuYmduaPSvAeoBUJOTzCrnCzJdvBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=StkR2dmd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="StkR2dmd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EC0C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756356593;
	bh=5ZcYhlq2BvPfbGbRRfRupLoiUNhFLOqycRGOr4G8YkE=;
	h=To:Subject:From:Date:From;
	b=StkR2dmdZxeAbWP3DiRSEoXc8z1YUxG2cMAIT1zVwEJDluspidHUTbIqfssTJfYpt
	 cFSmWSuAfsJBMNnm/UgtOzJsIFRiy9aiTvZaGEyVMSBCKmyg1kSyzM1+Vlne/qHFvE
	 4Hhca14x/tjcnAEPKpHCmpKvOXlGLz7eb/Tz9XGWlqtHEoFnwXEvuZdTBMIIr24LRU
	 NK67d28vEqgx62Qh71gKMvKGeGrP1/dSzWX0Y0CPydzeifomXJB4L3kb8KKuMsjsDr
	 ySXXwBFpVED64d8Wi70xVu0WRldB9ApgTFTmxPET5pjjDVzFwmY2vLptW4pHSCgJPj
	 qB+ykwAORv/VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE70CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175635659357.7472.16838568364872008327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4455048737df6f107536c4f68d15a5d4b5a2a2e82e80c602d985a61cfa6600b9
Date: Thu, 28 Aug 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756356593
