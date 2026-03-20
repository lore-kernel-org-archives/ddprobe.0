Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 103AF31618C
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774038894; cv=none; b=QcMSsO9Bf6V4FZo7U7igCMLKqqAiBtXVmWBycDVDFFMcvL54MdA7kg4m8YGjhWCCqJdZD9Zm4utxX8bQcKXEy0rPhUWxSjGdKeWghRbOi33cAHWNm/8BK3UtBJDmvfv/A/W6PR6k/hbtXv7g8asVHgyItBserxoAlfHta8CZrls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774038894; c=relaxed/simple;
	bh=3eLBv/q4h9NgOoC0Pe/LIycXep2MtIIysihoWdlMFuI=;
	h=To:Subject:From:Message-Id:Date; b=imWmuJdhvbxlufpmr3eiFoIWTyPJRkkMh+kL4mq/A0Sf+ZxCHav4NPCUviHtGXr9BbTptict6GNWIbTYLs3KROT2stYZvnlEyN6R8JOJZKe6gyGqU5Tx1umQRXjxp8mkpeNR+oABxrWXmIlRi3h+B8v41kZMk4VXczqMh8h67iI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cy+Nk6ff; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cy+Nk6ff"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A5FC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774038893;
	bh=3eLBv/q4h9NgOoC0Pe/LIycXep2MtIIysihoWdlMFuI=;
	h=To:Subject:From:Date:From;
	b=Cy+Nk6fft88ac5KmKwbol5qB+IVqyX2H7boqLiubLGz/O3fwtdh38JE9m82tgUtj3
	 uCY8qbL02sWfzgnrWmL4ryrXVc83SUy1T/J2L9OIsj3uQVBNFwpmkoC+bJIfyPUE81
	 e8MZ2E0vOhlpA0Ir21Tw0rNW+yfO1BfX9bFPt98yN8sNGHFSYB1FqACTXgcj1agbP+
	 R2Kig651rx2Mh1282y1gyj3F48Kbieajs9U8QC3GkVdk/3Sben69aD+Pat1Oem2mBE
	 tAe9RuI8ymOJ2LGtaaciceDdT5V2dw1cXMqgrnz+YQHraty7h5rfLOgCT3DKP9Szqo
	 xIymyM/qegR3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A191099B3A
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177403889357.24060.5783597961941212616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfbe240fce552f7de39c312d3a360998dc442cce49881b9bf57a4fe5e3855f8d
Date: Fri, 20 Mar 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774038893
