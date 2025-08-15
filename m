Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5C625D528
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755239394; cv=none; b=C9kIgzb6ovsuGJtXPTEHWImu7z/DUUSRSdNzjpobdsYi7mnRmnrrVEWNJA1feXPkCgs9BSnRzzCNr7bQR0apiOtjsGo7b3hDZcdlJ8eLMR5LThYZdzNAr30hIjJmrNEsMToilR7Se5JJcDcjIh2jf351lfX+QxLd872T/VozLyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755239394; c=relaxed/simple;
	bh=9X3X5JrYMsx75qUVR5hD+im+W5XhrTbG0ktLlPz4HPU=;
	h=To:Subject:From:Message-Id:Date; b=lX27AVQqyRkI+zkGIVvm09MXyBAfXxZmRl0l9UqLHTRJW6K05xGOn9QMDTKlR39PCMVKwWadtdgYLjzPUaBTfwTEpNtSl3uLY07RLWyUm298KH/ATzMpQiEeXNbD92ELpsMiEv8+bdFCZ/EwuNQ1J6eHf6EpYSpu1AHIkMeIJtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rn5q35pv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rn5q35pv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2F4C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755239393;
	bh=9X3X5JrYMsx75qUVR5hD+im+W5XhrTbG0ktLlPz4HPU=;
	h=To:Subject:From:Date:From;
	b=Rn5q35pva44ElJSZdUF561aVN4zQF1qdQMz/OGCmqxmAtHBYdBmT7XVDDaQejWYoo
	 bDkCjnUNZZIQVg/8xPhcEnO4L2OavLgrQF3PTIUmgB486BzqCsjO0osajhYjWrZW3D
	 oQSrKudJDnMG/pgktxJ7D0pUUqGbHXwLw52U0e2GTJATf7G6mERdQmADPBMEsE4q0Y
	 MhoRAPgmxnnzvGxnrSBS8MPMJtwZufsS4VveXAGKdQ9QYXATmAAmUBTV4FM9BhLThN
	 c8fjYI4C8yrb4u4SDFcvmWqJ9Fq8qoGd4zWOQG4ncQExE08p2O66fIsSNVF4tVYKtS
	 sy2ppmv1RsqQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B18CA0EE0
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175523939357.4239.10370528553654454691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 343c841bbe9a21ce59688bfd2fd04f12e003b69aafb27938e90ed484b87eef4a
Date: Fri, 15 Aug 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755239393
