Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267331FDA
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727088954; cv=none; b=n5eK+nUOxyoaUcT0GubomLANCJyENOxODDkN3QERC+TaFJ7AO9qPkQb36u80cgdRbWiIm1iu60XYggXmKK+Zp48WZ2qy1+onN1tJz/xtt1mjWjAVVb+S+7Ai0nlLw2O3AUcrcao/I3xx0ObdDe+5I3j0G/JYxZVAp5ikXufSh1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727088954; c=relaxed/simple;
	bh=IpZpDg7P6s/tD5srbfFgj+2Lwv7T66BSlAnFjQK58Ws=;
	h=To:Subject:From:Message-Id:Date; b=g+O9gPSA/qEpdIIFv4F/5fovaT25FDONGKdnNZjMZnfjDG0bqnyYx+Ue+sh+Q7M8W4S0ZWJjimNZuc7fySyG3Y63ov42CPzI81HsfCiU5dk+Oh5+uZyYNRiJ+5A2tx7p4k/AB9LwY1bMT3xXqw9bBUUqH6jyskuoQemWG65OhyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sYNgXEv5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sYNgXEv5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CEDDC4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727088953;
	bh=IpZpDg7P6s/tD5srbfFgj+2Lwv7T66BSlAnFjQK58Ws=;
	h=To:Subject:From:Date:From;
	b=sYNgXEv5ZGedHvGpk1IHOKcsnJgDTiXMi6oFJQMuP/xQ2I7u3MiW7vAH6o7/PGNJR
	 eNUfhoIN/UJaCOo/hjiE7qcKD31yi+Dac5JMf+qAFmksN7ZSqgVjHqAJRd0toNHNvZ
	 BsH6hHq4szkPHkWgoo9a0X1C6N21U4o7xWqV3RHlaIRQN2kWUFn5nTB2JqfvYSHyYB
	 j1Kl1YxHtpdaybvPOrIwbgdKzo50U/CnJmrtzAY/kcjxry5PggsW95w2mcq9UyQ0Al
	 /8DpHLR+CrstuJyGL3OgoDGJpR6t5T0hkKs1fEmALFpJdiNb8Z1BxmWdyHl7eV/qkN
	 9s7yGO0OSqBsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F01ACF9C6F
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172708895357.21140.17346557848100267210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6456c6b32cff75786f8c3e3315b3091315ec42e8188449291dfe82dd84832243
Date: Mon, 23 Sep 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727088953
