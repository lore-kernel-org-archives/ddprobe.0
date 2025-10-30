Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB6681E3DCD
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761839993; cv=none; b=OXd+XqaUC3JDZWszoNwe+cVISidmIM6Kl7QMrYG/cSWzk8gFlNrXeLZq6kAkQ0TnWLylRr6kvoQTMUL0f5y4/mgS6PKQx64P+B0rN6yXc6+acsl29NTRx9tlJ23IAFfIQcIwkOP5XvqZ1QIQ/kl0DfONbfl+FCWK6ZzgiiZwmpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761839993; c=relaxed/simple;
	bh=AmBR6josdceEzk6mDnP3MdQsuUp2San5/BKwlJWRHnQ=;
	h=To:Subject:From:Message-Id:Date; b=QvT0TxHgEV0W1qebsRMALFcZ54nwTcaZc8RjK6OYS98qPaEk96mL0Ox+Z6gDLz3ULbKvvwTHg4Pxn1orHRgWnHdZUb3m/EmeLVEq3cjmZ7Q/4tUHC2NhKrxmJ5a0BneL+/jTvE9BxScOhYJ9Wh5EXsXCbxue2rrm17wwXx4Eaa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KM6NPiS1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KM6NPiS1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AFE4C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761839993;
	bh=AmBR6josdceEzk6mDnP3MdQsuUp2San5/BKwlJWRHnQ=;
	h=To:Subject:From:Date:From;
	b=KM6NPiS1isKdsgfT7fSL8S8jP08WKVnsuRxHDhKTMamAFdNRyMJpXMchxN2NyU+o/
	 mT+uAMmDrCBah0se/b0Xov6/M+11uAkN3gJLotHz6rgcxnA/A0wOt4NjnH1J+qJcW5
	 R6HaA73MeFaChJz1MSp8z6Jv4yMm+sLF08VK+tTvhWh+0bLsvRUXU5YQq4kz770sHF
	 89PxOhY4CD5yVrmlc/TK9QGI0KBbwKV2Hc3GuTwXEOWhW74TV8OmfGTL6VlZ4JDnb3
	 dU6+jLgqTsn7Egokp3yTG5sdmJA5rft90/HLHdBHOJlJ2SrR2SYj7fFXQCq7C43PgR
	 6Ud424btO/eDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDDECCF9F8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176183999358.13117.15163906367280818522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d7c5eb6a77ab892a7391cdbb908b88cb41111483d9cd658dced616feb79d3d3
Date: Thu, 30 Oct 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761839993
