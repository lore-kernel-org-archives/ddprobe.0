Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14753150990
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728204354; cv=none; b=qn6zV5Kjf0/4nyPgy/C4PHNunIDZkzIQscahLauEkCJ7yQknZpM0K6q/Ptvlcogk1IwjZ8MXsCWyyOglq7XOedQz2zclvtxiCSPGGEOfwt+13j+k2CedjtZqBTO6rzCXVmQZAGs0qUC//Ps1Go4ZOZXNU302zFNtMCMHvKZRV/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728204354; c=relaxed/simple;
	bh=59303/ACNRxOiHSQJV2VLYdkQhrJ5jGeOIsqjCXlK2Q=;
	h=To:Subject:From:Message-Id:Date; b=uNEiM19MzReljwzTEE0dLVW0owp4Dv0Hd6uSkiPUqT+P/45vICxKlduhvNWSGdQ7juyAW+R4nC+Qzph4D3QJMjY38QwgjfBgLZLA1CISwDmNpooXGIbGDEjqO0zrDb53lDUyM6j3XDyeTOhtrP1LNOnIYNVHLK+DPFXIa5OEwCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=flS6pBgs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="flS6pBgs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0AEAC4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728204353;
	bh=59303/ACNRxOiHSQJV2VLYdkQhrJ5jGeOIsqjCXlK2Q=;
	h=To:Subject:From:Date:From;
	b=flS6pBgsP8g2yjjqnM71VosEDRPb/ZCKExWoANIwpEQylxTmkUEhEV5b4BoJ15eOZ
	 xUOd4dhT/3xO1NQPtrEoLJ4x47I2LqtmXhSenuJ+sMW95u891qtX43hKMm8MSY+B/s
	 pr7RDXat3fPuxLzmjWgNNXFLCruRtJBozsG4gCBCCYEox2bNJh8b2NjKqvJM/E+Oek
	 iACvFwhUMNap+Gd1UJ4eHAiCVzqRB6HJWcMQY6H9wSSLOHEcJsPgJl7r1tKfoO4sYD
	 XRYBxWFE6Z3N3qkaUB6sohA66jbdXl8QhX4R1DxCq+j3sYQAdzwfkIgRYUripGRSEy
	 OFklB7SaoUIXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B017CFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172820435361.27295.15867735097523968234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc3c4a8cfe43d5c118e93d3b03c1fe803f0786b6794578857f5d477854ff5698
Date: Sun, 06 Oct 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728204353
