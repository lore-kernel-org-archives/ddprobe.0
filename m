Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F00144210D
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 11:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783337314; cv=none; b=euO+U2+CXwq4lfNdJdt+BnbqQxjY7/pNKPWo2/lyKtnwIuRqjUYBEaGv24Qmrg/QhZyQC0K3abLNA4kOUAPQjCvaoQq0GTC+TGgWHsWhjOyu0uQG7k/4uT8P3NxENxIA7OLvGa/flQSOJHsVqLWuInB500dB4qIKM/q0bEo4h/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783337314; c=relaxed/simple;
	bh=5aEFAzJnTwWdU/fisSjFUz2Y4Tppl2iMqxWLGZADBZ0=;
	h=To:Subject:From:Message-Id:Date; b=hZCwLvl1cLKjMyPL3TW0X3j6mA7o74/kN0J+gISbySsi1JiV3mEmzlJEomZHXUnsufkNcJZfNY9q4hvQOtc6wifVc7eGTw6L+nIhCQj0EfEQ2kPDLMixLAs4zISYDWRKZBxsPODgVCeLiA83e8EnJBEGlb9FOd2H8zRRHOfaYGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lf2/++Dz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lf2/++Dz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8DBBC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 11:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783337313;
	bh=5aEFAzJnTwWdU/fisSjFUz2Y4Tppl2iMqxWLGZADBZ0=;
	h=To:Subject:From:Date:From;
	b=lf2/++Dz/XLLfW/eJFj67WjJ9HLLZFl0GavCFzUxi2ThWwOp0lBYlkpmpFGBIP03g
	 ZlVPdYHt0YDBOqkRhPdIFwAmVQlyScxx8csrMvb3jl8jC6qMd7cGGE0rUdMuBygfry
	 2TCmxJNivu6lrLt0ci8fx8oi6HNOzS9MZhJkxnc15mgsfsQRpIz/jsgiGCZSzuuvOu
	 G8Upf9FviuT+Utq2+b/sGjaWlfSIjW2H3X0g/gvnf0+4DOz/vcTcMglKP9ltbxalmP
	 +l6GngdwABSTUKRyDUfayXYSECFRbZ7YWgSsCVkodAMpbSee6J8kr5AdqmuCuQYqhi
	 AC1BT8KPuzE2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06C9C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 11:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178333731371.14308.913423975784722302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecd11a8a7989d9404e72ab652ebe9597a2110f61703312520ddaaa3ea518be24
Date: Mon, 06 Jul 2026 11:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783337313
