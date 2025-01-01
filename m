Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238CE63D
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735704354; cv=none; b=gj/2hnxUgIsJykCwYZLToSnQ3W8DsBx+sRg5s4coGeY3zXHht5lX5RCYCxmOOWUrhvKXJj873KkPIdptSKdMDWfgFT2PsABHjwiosPChwW+TPjA1Qio9qWYj0ScQz8WthRtAxsxUzI/Ol4hJYQ5w1ax62Q6WZQ8hl1q8ys9t+uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735704354; c=relaxed/simple;
	bh=rPKZ3VetrFbrx4ZlvOpZoDhj4xBZQrGA3f+E9pilV28=;
	h=To:Subject:From:Message-Id:Date; b=pV7cEE4gjX8He0DW1FaHcEjwBuileoDsaEAJfZi7qHEXLB+tQ47IBKrr+FalhJiUTc+3bNnk7Pqby+e9y12EOfLb0bwMAjq7Z5NiY0/yaDOxzA5B8s3vsJJWpfNIkgk+jnAqa8uxxJ/Ms3rKknTxtgHAFhXesH/IgGj1lvilxmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G5TAxBtO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G5TAxBtO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66EDC4CED1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735704353;
	bh=rPKZ3VetrFbrx4ZlvOpZoDhj4xBZQrGA3f+E9pilV28=;
	h=To:Subject:From:Date:From;
	b=G5TAxBtOUzPjJz2IFVrTDMbqumYBt1F/WbvySTywxlj+h9kayKZ/UT4nfuBx/RIez
	 Hi9TtKs6H9RjHBxIgkFTfNRAKIZmwSVNPr2CxVPrsM8vhFgaZXxEttu3seEynY9PYx
	 mPyDrENjD3eXjF/Pfuf1xwVTPpPEgk9zL7VctYTw4bEj73M1ubhJuJKfAFZtO86O+w
	 pcWa0ogamKOpuXkG4n4VReRz7MYANnxg6HZpN2IYrjGOsR6ZpWWcRNfk2eyBCuVg/6
	 GgelVrzltsSkH7o26Ol2epcV2IH6rpowfj75hbVwLcSB7KKJOakekH3b8evUI6mSn5
	 CIn0OsZkgSi8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AB6E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173570435357.20108.7428138456574704260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7db87b708f5135f3f802d5bdfc769c5a6bb1a7588dc0e73c60ebb3b47c05e3ca
Date: Wed, 01 Jan 2025 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735704353
