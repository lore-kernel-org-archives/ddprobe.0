Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2523628E59E
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766242434; cv=none; b=BIlg4s7cEI0bJ8RlorgKZBXUS9+0axLUJxElsBE7XwX4cXM8cKG+WkyA6v4ttf3OgH95zQWEuVDKzAEPK4IIophUedJYVLRm0NqrhzQqIMhXLWVbTF95DWVOREHuraLEGdbF6aGaEXLICpssuwoQGmN3yAsynzX6J7m7fQzBvfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766242434; c=relaxed/simple;
	bh=lFfyzGmFuyPzsc9jvctwU0nEZns4VmLpH2c2/OMCAe0=;
	h=To:Subject:From:Message-Id:Date; b=dOrPgC6RVCfHruNrnGmkv56Ks7141Ae/wXdJ5fKEdh4oVsdrON6f2SzpkJXj8SESTwA4AezVS1x9L7XZxu5yk12ExrJdsocDvpAoYRaLUxUzr69+ywls4i0OTjnEpcyid9lGwzO6W+K0M5hZVQ9BVYpzIN/jIj3g56lW9FW5WUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tIB21I91; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tIB21I91"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1295C116B1
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766242433;
	bh=lFfyzGmFuyPzsc9jvctwU0nEZns4VmLpH2c2/OMCAe0=;
	h=To:Subject:From:Date:From;
	b=tIB21I915uNYSOMFTWqvDvupOnAf32s3pivYpIv7IcoM+YX21EJASLETxy0c7EqaZ
	 wfVAIP/kjX628WC+E7gNHfUiigvSjqLQA2AvF0Nj+kKzlGMBvk4WCLFxJi7aHKHeIX
	 ZC9snYT6cwMo2t9j0wUsM0Y9P0xtNdhmj9Yi8yLw3cojRJtgoksDQIkK6N7nmlBJWQ
	 A1xdgV9oTBm/5F86YPuqT3UTAn/bVqgurG6jIhK2Fiz6oleSS26/DtvNBmj2M5wr0h
	 3UFO6YRSuR+RoX4BVdCD4oV3YVrTBDIdZgKs2VxNp8HXFcI058PIbGIhVWkdbD5djd
	 EtZM30+TEZ2mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F710D78797
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176624243357.22180.12837308832390733519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a739190ddf2410be67cf749b54911d9a0b29819ceec8deb7b10c6a5b6bb0a3be
Date: Sat, 20 Dec 2025 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766242433
