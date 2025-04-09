Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4264725745B
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744221594; cv=none; b=q+QXFvg+MULST2XRavszaHi2qngL2lRa6+HuAA1WPL1Xl2Tido1hzhpnGNV1x/u0lW+yMiMSx/eg4TZGs1kXUcE3unMYL6jblZkp/jGtzE4THuG7FZR0yCNzmxrF1KDTTv48Plat3g+5lXAAyzl/pv81RgudQeolrzq71h8CwYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744221594; c=relaxed/simple;
	bh=A55fLuNlWEBbj/7zOfYi7LHutuCGMFtuRmOxTlXYQwg=;
	h=To:Subject:From:Message-Id:Date; b=GMKGgOA/d+0aQNQlpEKpfcnOKEA2yuC8aDG6CPjrlBKc8xirorfLtGNLnmjCGMfFH/KTakxV8FvQJdiYOYwWdiSsUMotMJEeD9o++IGVxcu2/wcf/nR4EReFoCEG36jiScjrk35RWil7gJKMhF/ofrGwohxFw6z62GpA6pnRg6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gqVvs1tm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gqVvs1tm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CEFC4CEE9
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744221593;
	bh=A55fLuNlWEBbj/7zOfYi7LHutuCGMFtuRmOxTlXYQwg=;
	h=To:Subject:From:Date:From;
	b=gqVvs1tm6a7jRT8a+r+hA0tlsE7jyyvzEGGBnXa/ZRXtkPlBm/2A9KRdpwnKpFmS+
	 vc/+7z4EINZDMf1Qgw7A/el3aqrZaySFTk8HHneCuxde+XuO9kWWswD73qsd+GAcUg
	 fA05e0zzKJkc+j8HFrpNQgq2rcfv+4D9ZeOlYutJo9yKPYG7QNrPI+7Otfi6MinPuy
	 puCNHfoYKnsvbVtEVf6D174STKEcXlftc6XTwjncAYzHKHYxYjIB+liJHF01QTkOMn
	 ZE8LEFJL3HzUeK57ArAlj/CGHzAO5G+IHaumKM+EDHjINYlta9GagxhXRNygvF35zA
	 /MFfzgHMk9V8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F876C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174422159357.22032.17864952939645685599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1266143a6f22929f2200a2e52352644a54bb45d7de14e293c3cb107b35c2ac60
Date: Wed, 09 Apr 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744221593
