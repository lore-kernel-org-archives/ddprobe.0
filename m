Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6616221ABB1
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787544634; cv=none; b=vAzQxYtl5kMaHaRhSlZMsNEJVcCW8dxAhdghCG9o/iBj0RJcWdOql+v6yFA3TNRR6uwon0b+EAt0CVnD1Pzlxl0MpUmtx1pZRwp4cq4TKEedereZMoFelUXzlg2h0nnxeDnsuuNf9LAX1VMLwlcT+D3LA+eDHB25hzkiVqwcBi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787544634; c=relaxed/simple;
	bh=uxWexT4rlGRcdIRMWRuuXOhi3ihCcbWIt3GUkDjyHpo=;
	h=To:Subject:From:Message-Id:Date; b=GiJUnE8AVgrSR4um+sX3035CHR+3vrQAji6TVU1mr0MdKrv95ALewOUY+FicrIaQSGRwi6dH1feGCoWCp7ADcZ+unlFny5S3SaRJrqPwsa33PXsgBoGq+lP9crXfmKaqKD72SIMtQLm+YIud/e4sygfWflq8tVtObMi9qpEoqSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lM5tmsrQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lM5tmsrQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9793C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787544633;
	bh=uxWexT4rlGRcdIRMWRuuXOhi3ihCcbWIt3GUkDjyHpo=;
	h=To:Subject:From:Date:From;
	b=lM5tmsrQjc7W0AiCQ4AAwRADPUox2FiUvROhd9iXisb+Gavc2anfe3Jp99L1gIWcI
	 Vs7THdIDb+9mtCLwiwKot+L33FjhgkfFDdlnN1CDxlKSKBGfTUU7pbYtn6ufF3KUW7
	 mfCYe2kCVbvE/1CefUBYiYs0P/eblUJoyMwNW+R/3Flv+mzBBbjc/lsTfsgn5E1Hf3
	 zdKflVZOxMcz3C/q1mFo97AzHprU2ppbSElb0LtekH/HcV61WKCcUVAiVi0yVEGFUu
	 appd7dH7t/rwDU5QfnEeDWD5V3TwOAJz/t/9qxY8NJ7gTHFmHnfNR/uO8kUMWS1PlL
	 e8hIaoE4vyd5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3AC6C5DF94
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178754463369.24736.8943045849206564152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f44c9aa52be4b70f18e407066ba67b297f3a71b87e2234410463a914fe5dbec9
Date: Mon, 24 Aug 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787544633
