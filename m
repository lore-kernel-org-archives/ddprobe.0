Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1D11E49F
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770899694; cv=none; b=GL3jBl0VOgYasA7dtpN5IV0FzZNAmDqOCKd9JGMbk9/RhJXy/VZdEpiGuNrFGPYtoQfLIkxF1GnmQFh5Juwr+FcTL4rm4NQm3wTC/t7BkPMTOl2nTDIcE88glqHOHOtdJEWN6rwvAvvzcyncsNYH5q1b3NJNJB/hS5YdIpXx7nQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770899694; c=relaxed/simple;
	bh=lrE3NNtD8EP08AALF692tF6K7Tw/I/sWz888CxXQH9A=;
	h=To:Subject:From:Message-Id:Date; b=itek7u+0a4MsUC8Pjnji/8FzNie51POiLJxC/frr5mFafR61PLk+w3BdnWxaJrOLzXisCM3sWvKuioghzhCoU7+x7WHEUQ8BJW1rUXXUuM/MA+9ifLOP0RJp+ueYL+kGPm+y+4Wd2pSwVUzXHnq7XcZoQNjkSi5BbVw3v2yl0r4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nDD/rz8a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nDD/rz8a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8768C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770899693;
	bh=lrE3NNtD8EP08AALF692tF6K7Tw/I/sWz888CxXQH9A=;
	h=To:Subject:From:Date:From;
	b=nDD/rz8aceEs2NVb16Avm5crbFx33ZJ+iXYDKptLSUuFWywYIC5tKMUoOFFmTxiU2
	 2UVnRn/8B+qcN3mOVa/gVvmlHoZjxMfgyvecJKhLCVspMqxZjeVF1wN/SxesKtdvZb
	 OVCMLAkiMmAy6mtT61tieoDPFRS7FPlgqvNHGBz1hTpLv5nJ0tzAeJm5iYomkEZfUJ
	 1QePVSuKp80s8lRL6e6cU6LC+wvqhe9JSH2NEALkUKqUGuZ5CcIeBH6NARhEXUPfIW
	 ddzlBP6+MDdMuAxz4BGses/9bq5FG1qq2SyOTjGg++faysgXEz3JCCLiaV7XiPAdrz
	 ZhftShWLroDgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E12EB4913
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177089969360.22402.14357130553319413900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 311bf044435f5fa74fa8c6cf5b75c69417ed844091ce7948c26bbf08a5d3bbe3
Date: Thu, 12 Feb 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770899693
