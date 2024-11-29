Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D44415F330
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732914354; cv=none; b=Rd+SKV4tFoOKXOehPSHxLjdlJYig3W9gcjbBzMAhFAJBRSpxv5Ucsw9pKetirm9DUsScDrVUQfuAlcGaNrDYPKwBlocnqrw6rXWnwHA5Qdn9COCDjpAJotyk4QQDzgsOcHIXrPBEFB7BMgA6hMNdWilRDYJ4Ptd8+OINqeleb5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732914354; c=relaxed/simple;
	bh=8uKDcfNnEZo3EtFLC+3llwBjmHb8xndEKh7syfZHnuA=;
	h=To:Subject:From:Message-Id:Date; b=SsRD1Nyx09UDF//V3fEpRbxvIWAHdoereDIUh/b4QOUSVdhpqzlHcUiu9Hy4xwekNMqHlUUqbeyu7Xc78z0wXqSO8sczS50rpJdxhO9seNctc+US2ChoTSZ7EEbb8voGO3L2FlNehsZXI8ONNEC95BIoQDtiUk11M8sQYwlWci8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=brTTpRbF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="brTTpRbF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA033C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732914353;
	bh=8uKDcfNnEZo3EtFLC+3llwBjmHb8xndEKh7syfZHnuA=;
	h=To:Subject:From:Date:From;
	b=brTTpRbFzegD4/s7D2OGbyRd7MozRE7a24Orvod194taIhxYArfcymGvQsndAc3B7
	 LRqwQl48f6eXJOrylvIcyBH3SimNPEwl5QqIQKyjGf4P4pM1Y0r4tYR5FGQxTTl5hI
	 jrv3SdlZ7owJIPqxO/WLKHs4a8SsCxNYbd31PlHfx61h1Y6wGudG3OoZ3FvZffNsgZ
	 suzMUllnLDrJLzc5Djnrh08hWNEvrTAeRtICU9DuNkp9ps3I9B24vN8t3llcEfyczY
	 Fz+fgYJEhiTNaHfSW8bbfJevBtan80/6SOw0UnGfQkYnWB54MjfAnkEjIDmiEevYPF
	 pYAM3su4xkDfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6CDAD72A14
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173291435363.2112.3458077697903108238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b719137f415df4b884231f2e31c8e1580b110ffb638fd6299c998e9435e5eb38
Date: Fri, 29 Nov 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732914353
