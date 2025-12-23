Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2968923D7E6
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766529834; cv=none; b=DneTGP/lKqGGutXcwFG1ylWFu667toOtrSpHpN083KCYCvLx0Bqr2qhS4xdl9PlEKjw1zFhqVNfdypgMvurLqZhPunLXLhmYJI5vFnSChdfsuL9DVhBcCwhGwU8VpVm0lCABTey+qSrup3ZLG1IZavcj8jjv/X2CjTAoAraz0wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766529834; c=relaxed/simple;
	bh=LOw4Ha8kzzjC3sTzXP4GaPVrFw556yHkBg8mBJjsD44=;
	h=To:Subject:From:Message-Id:Date; b=cghN00/2Q05Rmqicud9zGMKjadjGPqLZ6VVifa/QJqJVFWzhtPCL7jZK7At/9Q6IYgrz57FUNQ1K+0VjmEY4Ju1BPNT6MSOJVQcpKvFRURRG84j7G1aU/P7WOiPySjRdGNx03cjgBljw1MiaNqVW1C2SIQ/HwstD5vuw3EO4lSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lUar119h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lUar119h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DE5C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766529833;
	bh=LOw4Ha8kzzjC3sTzXP4GaPVrFw556yHkBg8mBJjsD44=;
	h=To:Subject:From:Date:From;
	b=lUar119hvcMDR7dBp9bPJTccV714a1+4XNF6dnyWZcIF1mYK/vBZFaFGAQY2XANB8
	 WqJJJW1wujuvNgkdPzdc2qaSks0L5mD7gyQV0+X3vb+RlLkDsZKJ/SET8ZMjfs50mV
	 U9rn64sBaFyAiOuj3bz1N+20gd8niSotnFcy2h+e91U2gNbr4t48EY9K7q+eeElXR6
	 4zxv+xT10j8wLmS6CAnm1U/VYwSXiEZZ7oKyUPbRZU2tmjGRersW7BRHmPnHfrIKyX
	 7zPx9B4i4U1Zra64bdZDJetrj9U7eceoJb8UBxlAumUOlDbNPB1RcPbJgZ2PKs8DRD
	 dcYjhNAdN1g/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9259BE74900
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176652983357.13323.14621899666802534688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdb0256e7b58a833ee9b7333ecc9f32dd3d78c7f5a75c2e9ccc751de5089b02b
Date: Tue, 23 Dec 2025 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766529833
