Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF6A28EA
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736130954; cv=none; b=sKZekkssL+eYUWy3W0PtDGfcG11CIazeVm0zATCDixdNhtEQpdx7wohLNYbdLuN5zUgyH5NNFNw7fIbaHy49OfQhc43iuoK1uZcezxCt3wD2H2rKJZu1A6h3L6Y4/5QCKJAGuyH0LS2NRv1DMzg1s19VyyBpU8qfQKhL3YpJNXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736130954; c=relaxed/simple;
	bh=qx4VGdCmwgPfO9AfeipMq1kYaEfiypzawUYALcO6P+I=;
	h=To:Subject:From:Message-Id:Date; b=b6I2p6PO6WSnNMAMiFx7HAkK+OQYr7XADk+CMn3xngc3cSXrdmu1e+O0RtrsJE3xgl1RUhUCrGn74siHrFDtCKYCv5L5bzmfDBpKQzdxKDGGoDVeq85NZKs+BvoBkk1kP+xQWnnGJnpxIFf00eR+gpCCif7sspwUr/asFrpkg6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYoyEK1n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYoyEK1n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89A2C4CED0
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736130953;
	bh=qx4VGdCmwgPfO9AfeipMq1kYaEfiypzawUYALcO6P+I=;
	h=To:Subject:From:Date:From;
	b=CYoyEK1nYIx9SioC/xEoTPU5hAjR3FC50fxOwWy3E+T8/amIbJAg6YEkkuZbHHcua
	 BKMSUThAmz/DoghCdD45550jhttEVl1B06JgG+rWVGqgs+E6wvV770n2i9npA5FVb/
	 ziiKmJh2fdmSiKxzUV1/WSuzLQa7PFaOa0GLGVTjQOJ5jtv7SLo46CGaT50/0VWou8
	 A4UxZ1qa4R/czkgUEGH2Np7IoZIkUWoF1xEJI1oyZtEFDvFCso0lG0BYpJlc9owjEn
	 vc2psjiJMraPWo27Ya+aWh5UTqfYwS6xzht/O1HrmbZEgncLfe2mJJTd0SYYeAC3vv
	 l5e4FZ4suKvzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FECE77197
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173613095360.25896.17024060984298409841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07e6701d7c40e883094c1576d696cd76eec5f2708d8cfb6ce0b861a3c195c541
Date: Mon, 06 Jan 2025 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736130953
