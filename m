Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4395F1632F2
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736302554; cv=none; b=ok8RgdFbyVJOde7BQHAiau1z/Ek8CrjKoU3L7JCzBHA2iXwd94TnZdNuuK9N5xq+66Xy2P3YkZWnTsdvXI6hGJuB6VyFHYOfhIH3AsBTWj5cY85OVslPE5WO9e2qmuvRJTfzTrx0cJ9E9oUOaEOT+AIM+PtmZHbW0H6DSxM5L/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736302554; c=relaxed/simple;
	bh=ie18LFrXugh0Wny7JDQAwURQ1apxK5SkuL5zIWOJdPo=;
	h=To:Subject:From:Message-Id:Date; b=jd+t+ATPbltp7fxi2PS1DY1zw21Ds/zHowpqLfFGQmIY3TjyrV1jvEaw4BHm2zp25UEMcI4z4/+zKNg+B52soWvosrGczWF3g0QBOXwf26+t4O9gNH8qvG5KawPa59A8Rao5ydtHofJyT+vCFCTw/x2UrWJtCML3jBbGxF0Aw8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYYSI4sn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYYSI4sn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A48C4CED6
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736302553;
	bh=ie18LFrXugh0Wny7JDQAwURQ1apxK5SkuL5zIWOJdPo=;
	h=To:Subject:From:Date:From;
	b=NYYSI4snxHhuJdxCndKqrjOrfLjSinS445TXKyNH+Ay5A3Uh25c/c7Upin+Jys0bU
	 17b/4fuNKrx5kbjokr6dLQ90ClmuoQ21MhiUn79IaiAcaV/BbS2z1rrvtpD/ZK8jGH
	 D1rjj1Ix0TtWSOj1ppUG8YX6MqJ0aO4bULmtFvnKQmEhL/dN8HXfVbxRjXxZQcQRgM
	 A3AypEjMVYTBtJogQITkpm/a6hU9j4qF06Db2sb+RkTauHtb+GUDFqWxTD/zsYFB6v
	 F4Le+nJJ6fAtzaGFQ9nglGdQ+W9+lGDUv84/o1BbUOtELEd17NPjTD8L7NUUYdA3jH
	 h53u458/C5L1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9281DE77197
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173630255359.19607.10505992770124386576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c84eeae083fde88de7fde334e9635be569900c4fc63b27d78df3a765a60238a4
Date: Wed, 08 Jan 2025 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736302553
