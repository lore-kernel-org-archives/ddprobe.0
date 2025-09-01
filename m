Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36EB73043AF
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756717794; cv=none; b=htzQLdtHvsqThDripjn7hxuA9iDrFdoO2mPZGkmgrMnFMCtYQByApcfGg6kcUHO1B8ShjsUilI6P/GCUjSxWFk7EmeMa7x8lmrsfaRmrPe9i+8T7bH/ZPa+VdAPYWluj+IK5rg1rsUQAmsfn+G9NpMCBl/tjog8xMkHQw+2v/F8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756717794; c=relaxed/simple;
	bh=jc0DEZ7NrpHsBsFmMgI/cfEPiiFVIntZmUe6bL/OO0s=;
	h=To:Subject:From:Message-Id:Date; b=uAEoCwQNWRHFCG2uJqrSgKjK2DL/0eDo7RTSxkBDT4FN6yHL30z7Tv2Q3lvj1Z4wsOAi5qOedIq5DpCqquwj6O2ALK7svgQBYunlVBBWqD4Qb2a566ewdUNe85uLt5HE5J93uPPnJqihfVdj78hKh0nN3nXHXXYEC0ewsoWS5KU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fBut5DwC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fBut5DwC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38DCC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756717793;
	bh=jc0DEZ7NrpHsBsFmMgI/cfEPiiFVIntZmUe6bL/OO0s=;
	h=To:Subject:From:Date:From;
	b=fBut5DwCe1mt7G6Og3k67e5UTBSglhRcKKFLbMf0NrbrgKr/3n2g5Po444akDi4eG
	 7DEMrY9sZm4LhVYwHyhLAoqsaktpzAL4sH8JAe3LKoVBAbZvYWKUnPEcbo1yCswxXN
	 WHz45NVvGGW5aNp9YieqLi/9V8RXCfbfpaLvvlJKnOdhqub2eAllUASRNJ7zwJmnji
	 hgeXQswqjlwnEDFxZkjUWwJ7Q75XU7ImQmjstfxgXlsNxKH+A6XnQQ0uMQTHqaEHxt
	 JtD80Fyukq0b0zm01LD2Bq8BeJHtwhLbQFhWm4pDTA3yQo2TlOgKM92bn8nCFC5juk
	 UgHHQ2LpRGrvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9240BCA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175671779359.30888.10914656534136035679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03211db03369ada3952c83920cf77ec352e72106f21d0c0dbe0ad7c66d404648
Date: Mon, 01 Sep 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756717793
