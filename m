Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CC49205E0E
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 02:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713839423; cv=none; b=a8EHNeYexbhJF9ljFWX/prVMDjxKOBm0lbWjFsnEcdV1bHs7OoW7G38vVI1QOcOIu4yRciwzwR6+ALJ8Dypu5WWl97Ur3sDGh/DCLRojBuLw13wtoVJ3TyH3ySO/h6YoybrKO8EdiNAP6nhC6NB3v0kQl6T6XAHBF8g5WLye37M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713839423; c=relaxed/simple;
	bh=duLkh3HpLqzUcYeC1SxREbG4Qn3O7Cm83mprGuyDSwU=;
	h=To:Subject:From:Message-Id:Date; b=K0OMcrt0u3UGD7IpvjcWtKY0ssPr8xPDsaL/aPclrtL6FW1BSDW47iUWktu1CTF15ygdROQ1ZuQIyBUBNnyQeyn/MwJ/7ZzR38qQSbH9KVa5JqF/NsoI1xzvSDs4xv1F/VmMH9UEAzxTDX3MSXWYHerFF45L8BEnCHDpJNUuo8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QkkU3hDs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QkkU3hDs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F9AC113CC
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 02:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713839422;
	bh=duLkh3HpLqzUcYeC1SxREbG4Qn3O7Cm83mprGuyDSwU=;
	h=To:Subject:From:Date:From;
	b=QkkU3hDstt0fnF8xDUxBCmM9KvLkTbwoYA1+NpunBU7Z0YlILrxEg/UXqfFBTmxEL
	 hHxZ1QAWZfiqf/8uegkqU6VOWGpaU3qQqWAAADYXiQhHoqyNLT7zy/mUREmQDrxnCe
	 dihalenMLiYJWKkUEgigtC0ZXUIoMNHiaKFp5LaidKGSEISb7U+UO7UGPYbPWCIllS
	 6JC0gWGVP0tcNc1kEMyv8C0NcHrZo6GdkAd+n+tXKlXE5jSIoKotiEfMqov4el0qHm
	 KUoZBSX0MbmkPLoGJFDEfX+AAEJyzyuBk4WOC8ns+Ds64BDkX+BJ/LPgsTSyoiwj48
	 ECizzfwmZlP0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD632C07E8E
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 02:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171383942276.5787.12784754255912823582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e3b6f876e60281992c623cfa45c2c179533473f6126c512fbcaac5195a42a62
Date: Tue, 23 Apr 2024 02:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713839422
