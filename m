Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20AE7EEDE
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750906794; cv=none; b=SlSsGwa3uSu+GVd3+yGvfxYXbGbyu81TL7natocXBfe4w95N2TglP5mzn0bFAeBP7dG3EvOuTEFs2K7BRHoZCauLk3CYIQso2PH3xWbgBUUjrFsetklfcvdEG53KlcssHXSEM1nPEYagiGuFF3qpi16w+hE3yHuUTX+3f0ugyhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750906794; c=relaxed/simple;
	bh=3+sEM+HztzI1mX9iiSR8HECEVjUZ8bGABG79p5YIjFo=;
	h=To:Subject:From:Message-Id:Date; b=rZEFAeTT9mM8OFHidE5g1scqOC5HDRV/4SYfAqcjR22y+7whb46QUgS3nunHFyNJmwFAYHUM4gryLsC2IDjbZ3C7m/CDQHFNsT3ltjj8XsW3sImfRBQ5B5DLF826bmJTKR6U2fyxL/m7NsebPa7I0QBq3dzP6PzYcwdztZ49Z6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TiEMMG87; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TiEMMG87"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42DCC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750906793;
	bh=3+sEM+HztzI1mX9iiSR8HECEVjUZ8bGABG79p5YIjFo=;
	h=To:Subject:From:Date:From;
	b=TiEMMG87LUBCvjyVBk9C6Zb59HVV3sdKV8d/ThLQiNGykoxNNJkYhiXntQwHAT1J0
	 ZBqUy1b+6LzJr4P5TdLiHPC4D7sG7VK9xVmZdS8TJJZE9+Lh92MKjb40CJ3wf8IECw
	 VICBnW9wBVsxbm4gRk6fRm+uak5R9yMU0Evk76+yeacdTlwXkE2XD8kCSEPSdqPD1R
	 oPw9TxA+i0JqjFGdxOCPCIejoe9gVpOlCVlH9y6CbeyzCPrH+wb37Tc8htlsiQqX4z
	 VcRryXtc4V2ea7bBqVsAmoKqfS63LYkz6hGvXs8xMwUj8a05lI+57FH5yc2V8MrCXc
	 EgwQ7UETo4kfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F870C7EE2A
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175090679358.1017.8579681920559021767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fbaaa7f16df16efbfc4e843673f83f5da9dcc56c3125a286609a55f5f40ce08
Date: Thu, 26 Jun 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750906793
