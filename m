Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F12221D9A
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734602154; cv=none; b=HRcvN9TeKJb74EVtL453y/UMDsizvrw8EzcNTGRE5QvNg5cq2X9b8Lic/m6xGYvqg40QfUejdHwngsXMbN4VadbyNupE4ezAvsUdiDoOv/BkC0iIPiFLjZkc1wGvY00hom5/dUwf0Sg6Htd5STwuIeC4DNrbzrm5klGbWe4qqmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734602154; c=relaxed/simple;
	bh=txdXoZ8dfYuJ35Z6P7NrzPhn8oopWRezVmXOgTHU6SE=;
	h=To:Subject:From:Message-Id:Date; b=AlIOCSzNBqdLM6XzeBfK6VJ7guCf6yS20trWv2/kzS8xbNT3HRD/EMltpQp/cqIVOaJc0qyvlIGhKNMcMhKGxa+9/JYZ6Hy5YRWymtckHQeXnaWOBrLXIl53hyczXTALupDpDU9tAeWzjYmNd6VtIW8Z4/1UVRwnOlYlsxix9lQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oe1W33UX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oe1W33UX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C2DC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734602153;
	bh=txdXoZ8dfYuJ35Z6P7NrzPhn8oopWRezVmXOgTHU6SE=;
	h=To:Subject:From:Date:From;
	b=oe1W33UX/ASgU8edzcnTvo05VGmKlqGq4xgjPhvPVRG9Jf2iq6sSVlbxDyKoYrOhf
	 BmhztxRmpVw7o0N9His95gymS3ni2cmUv6HsbJCcT65smcXHxaemrvGUSADpN3wtNm
	 He9TigeFQb8ezuhRlJUVfUWL6Bmuao/7KHc8whOy2V4ZmnCMPHSWRiHE39HZqCHuCA
	 lEH4GFo2wFfgYJKlAEHwJb8tgXHPdqa6Yn4mxgioHs3pEhZV3tEtR3Oi+XCl3Om/ip
	 GPXTZfUONqnVGGIx0zl5zeVeQnaQv/uDNOVWb4pPnsK9bEHHK5ju5kbX8ijXHDjAi5
	 Rdxv6xhQHfn7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9599CE77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173460215360.25716.17584111255688898365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e83dd475e0924db5837871c8067fd8b36cbe751e65f028ee178cda21b347fa8
Date: Thu, 19 Dec 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734602153
