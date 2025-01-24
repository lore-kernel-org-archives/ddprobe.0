Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ADC420ED
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737723354; cv=none; b=uopTXEebJPjsSJPxxec1YLaWoCaKDAOLmcCI2ndTjyXOSF//DJ84byv8UGepmHSx6YOdhfRUdm9whkoSX0EUVC+51uNiRm75nzMRgkpScOGYnx9afSJdWvvE58NBrWgaLY6OrZrSBmDLBMoRt3lMLcs9r5x8cusGDzqz/XYep44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737723354; c=relaxed/simple;
	bh=VSkYEIt4e55Moz0pHzc04/H5S7tr40gbuFdrFrWzXXw=;
	h=To:Subject:From:Message-Id:Date; b=WJPR7Jfd5GtRDCqu1Lhy8z0bKPfgcDjnC1JUKjwhl5TC7y8bdTuivz7ooAKsddB1SfnvKkIK/xYkgGMLxpvasSN4/KwHNd4xHjRMlNxzgSG294LmRF1DssvVFpNpVLcFjhC9J+G970XP/ZRjpYTmA65bte/GGf4BRzz+osGfSz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PExMTJie; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PExMTJie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6507C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737723353;
	bh=VSkYEIt4e55Moz0pHzc04/H5S7tr40gbuFdrFrWzXXw=;
	h=To:Subject:From:Date:From;
	b=PExMTJiegJQI2n110LwxVEcWJEzE3YSjibMyraCJgqBevYHjGipz0javMtaIywXvq
	 Imzcs8MnbPs81BfEzkB3IhvtOrNLAx0QlanE4Ta7XsUUDRL8pk0dHscHMjmWUUMFuA
	 T6gb4hPTrpVgtnO602mz33Gc6mB9/AtORx0Gpro/BGhfvoZvCQyyv+16cKbi6IOPNt
	 0+F3q9gk8vZ+Gye8907HmLwb9a/oYjTXbv30TzZ6odPQNdUWNSMlGhSUL6Bx0ApANA
	 6m0+Ly2k2EV1TDzQl0rkicy/yxLt6ig3HkiQBfhjc8QdIXX59uu8Ivu+qVY5fnhaXy
	 ovti41KeUpg4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937BAC02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173772335359.11621.5441396382499773591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f98e29821c97c5427b8bef2647d57e89bde485bbb7fdc817c3daaf90e1ffc2e4
Date: Fri, 24 Jan 2025 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737723353
