Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3DF220698
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784859634; cv=none; b=FmWV9WYorVDA6C2880VQjauc3ZpWF4sfX6x8rYrpoedA2x93oYa+VAEoG+2hNpO6sBIB4nRySkUa4P+ntQ1/e98ucxJE48MABtxL+itJ9O8Wq0Gq3il0vZxExs3+PtHX94v/j3yGDZWXrk8xXPYXf5XSqwn144njniEksn2M134=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784859634; c=relaxed/simple;
	bh=yb6QGWGUlZIwf786e6DFp8t1S69iW8duhxYKAoC8OQA=;
	h=To:Subject:From:Message-Id:Date; b=ni/bMIOBBT68lv/qPqeJ/f/GUECulguFrnc0bQrY/q8ODhEk2fqnxgpxt8i7Pcnd79Y+jSjvdvm2oVMPAD5ULmXeC5YLmBW83nFnoDCmCyIy+0/l7f0sJL6kgoN+KsTo2u9y7vu1UkXirssExBY+Tt1qu/TzLrd+NMMx+FduB3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XYTVZM1K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XYTVZM1K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29EEC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784859633;
	bh=yb6QGWGUlZIwf786e6DFp8t1S69iW8duhxYKAoC8OQA=;
	h=To:Subject:From:Date:From;
	b=XYTVZM1KigIHMGX7IeRH1O3bt1zM3HXrTjI7sbvUDcS8Qu7iqqOkaE28Y+yXlu86M
	 yo79kOWg6mQTPiEUSemLtVWyPzSTYPbGxlawkE9H5CVgFED6MWJuUrwXLXbSrVmDQI
	 fsVrZ61E+7lIEAgXv3sci4V3VHruMa8XAfRQUJsCdd8B9ihKppiB5dXiaIWYKTEkjo
	 cFX3svwX+JEJZ0sMC+ZrASGP9UoFT4Ur6VMjL5zY/Rx61+43iS0yuQh+gMkmF9oZ+1
	 Hp3KU/f18XXxQr9YVSI9sT9lHQlyF/Jy99KwX289NkVsaBiolD8u317pvspWNQzKpu
	 LyZMtXNxUTtfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3E4C531D0
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178485963368.3501.14736587652914342023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb794cc5b1595649d740feb3d770170d006dcdb2a50ec7c97bf01cda822b49d9
Date: Fri, 24 Jul 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784859633
