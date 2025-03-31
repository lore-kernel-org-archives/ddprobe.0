Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2835214201
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743449994; cv=none; b=X2szP5ETmiEjGzq5THKlsFYOirRBgRL3x7dy4m8tvCAz5n+E9t8Bocy+8f2TX/TQdCk9JyQCEnZ5YEF4mWsp+Tq0jX41udXmN/PA4mTnEoao4KQaOY0nyxYsY+u9m0Qd48HFBJ6hgC443RJJQMzghHYlzXsA13LuitkesDKgsJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743449994; c=relaxed/simple;
	bh=ZzjmN050aWN37Dcq6bmtMIRi2dhFW/YQqF+uJdtusWc=;
	h=To:Subject:From:Message-Id:Date; b=rckDyWil9bOxHsMSpIErbpjJsecj/ls3C1dh8F8fgqehjwMGdf609tiOOfynozWFrXNem7ptgDeKVOp93X5d3eBzuNk0efeZgs4Buz1mm57yLsDvxjkQr2zM/anSa0gfpJ/wtIuO7dLZqOf2rsCXIRaubw1UWDR8HKqDlzNnOQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UTgWCteh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UTgWCteh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5663C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743449993;
	bh=ZzjmN050aWN37Dcq6bmtMIRi2dhFW/YQqF+uJdtusWc=;
	h=To:Subject:From:Date:From;
	b=UTgWCtehZDOpZrtGE4zmezuoN/3lollC/aeGa2oOrGqP1JmOJNEEXsuka3acLGBE4
	 b9OBet11Gp/V108vI+MJiV0iaTLgVFi4i+1X7Efvqn9GBbecschRzSqIV0Kip7Va/O
	 Uf+k6YgcS/kY6r/d0UPexR7j74unEiuNqPBaSiP+JogaViJJWr+9SJ0e28upYeiuzY
	 oHJJwCQ03D4sD6SbZ+ySHuhmjMmCU6N906Pya3y5UrsUeI5yx5bW9ZYcTOYCt4vM/x
	 Qk6GhoJC/9E3ryTf3I2L6eZjEcbcQK3fH1FDRtvo8xmFg2WmblsrT135bzyBZ00UlM
	 i9bejauEu3MuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E585C3600B
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174344999362.7531.9810781832280449166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67cb348426fbb0924d40269067e115ca1030772311fbabb0581f680dc4e4196b
Date: Mon, 31 Mar 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743449993
