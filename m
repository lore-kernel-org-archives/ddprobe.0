Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408B61E50E
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743857994; cv=none; b=DDBs4NQDaNHn8o0Kn9NX+V5kucRImERlUssE7/sT+q75BVN1lt7VJRfuzrhp+F4xWYgnHNjxiWnD7PGeAUgJ1W8VzCmU25kIec6chJe9EnwNsE4Le1BLF1tq2RS7G85sZ7FG4uVi9NJegomguIjJ3UtBgzhHzd+3+LDzT2BYSyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743857994; c=relaxed/simple;
	bh=NNkUPu1XhswEvaheOBaxHvpWiokbKAIcUd8gMEfz5zA=;
	h=To:Subject:From:Message-Id:Date; b=mQOotdki+dNCwH92ooFMz1qqFI0Jq6ipfCD0JE/bszcGZY6sX5G0RMW0jcCCappefGgyoa9o5eaKss2x7hZ3TXN48CEacx6gPLMA4QiD2veam4f6Hy36qxW1Y16Tkc1KtjW+bBlSNMSzTyeVwbcjlB5/tMEzFig/pM8pHxlXBm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=feE6uXnI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="feE6uXnI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD55C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743857993;
	bh=NNkUPu1XhswEvaheOBaxHvpWiokbKAIcUd8gMEfz5zA=;
	h=To:Subject:From:Date:From;
	b=feE6uXnIweD3p++tgir4gVn2QtJoPd7RXN5+2MeHNayCAzwLzgzTXG65Gb3iuBOAY
	 lznPyqGlFN0JbeMwfHyF6CkAapfLojH+vziK3dAnD/9DpugQk9TxunpoQNzwnkELiE
	 mAHrhiu2d/VTtcNmnaNuoLEX3RG9pvlRD0UOW5ACHomx8wyHmKpE5pCveUCigMCEol
	 iZPTCX81OeJMQwNjewx1Q6Dp3JspbdVumCul6TRAilZgw/3q9L2fs1WyN6h90ltLat
	 BObEvfSpGkgo6/Lnnzag0U4kYhtmQ0bkYihlJMK2vrmlVsorZctnjMcd8JLgmQ6pBk
	 +/+PIQDucbMDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA14C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174385799359.18964.17689947895422297958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8161d36bdef7952832f810fafbe331ec6c284faec01ce1472ba4f49c2ecf185a
Date: Sat, 05 Apr 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743857993
