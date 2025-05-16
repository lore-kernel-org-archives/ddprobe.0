Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C9B11B6D06
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747417194; cv=none; b=bldEunmdipRs9pBBoxSWgx4Cd0DhZNPGenVVid89/vya26IGP9tr0sUSixhVvuF67Tcmkx5n9qo7lgwUMN/MerSjSPsMRDN1ZdaW4hqbhtbKr0li3MrmpuAS9rsKxxCLEA8Sh+pi+i4DUsEWul1CgaGd/TXATxhUSihzJ1JMMoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747417194; c=relaxed/simple;
	bh=/KPc1UclCKAAJNnunfATNa8l+otggZBq2fUF3YqrhKU=;
	h=To:Subject:From:Message-Id:Date; b=g907CEjMLj4FH4GvOnJwL+icZIrUSKKDJDInIqel5Uj6ZsYbXSHA9gTp9vg6QIlktA/tbWEOG8jit6L5MUgriHBB1rVWczKbu3YnWk2RGUZFCLmssdj4KUAJ9GPFbxZXWEOZ0cOVdgMlPaUs44it0yu/rCa3UhgNWmfQRNlwC7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n7HTsEZb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n7HTsEZb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFEC7C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747417193;
	bh=/KPc1UclCKAAJNnunfATNa8l+otggZBq2fUF3YqrhKU=;
	h=To:Subject:From:Date:From;
	b=n7HTsEZbo9nRoVycnTO/hsoXR+0AvYH5/Ga0b/3VCMZ5CVLfLN3PsTB2PaZLJmLbB
	 0BMqKdAfKcVP55RfKxSQHELHYW3TOoQ3yJJx6TX8x4GIA3JFli2jH9elmzz3EwsoTD
	 06O6qpNiWqrHMcBObIOSPpNtraQoKES7aeAHU73+MQFCiZs53eyf7eJpeT868/L8XX
	 fSq/c8fdn392ZR/mtEh0Nt7VFFYlFH6DK8dK6NVI1jfsQJD9kDDwmAyQqkgA3UBMqQ
	 mgB2V5SpxdFLNjUIBQwqGpFtFIlTp81GeIncwDeMYXN5O858wUUxw2mBj+ylADUDNg
	 t5H2ZBBFlJdEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9802EC3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174741719360.27939.2547596392958716622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c7005190a1e6dd3d88ec4f7f0ea264d0399aed53322eaa121d4f547b5bc80b9
Date: Fri, 16 May 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747417193
