Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A871BF33A
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722945354; cv=none; b=FM9I/gQS5qbfstEizS28HwmwHR73dtMSX15yV9RXWSO4kqX/28fL96DJja1EYrvdtEmWeWoLYGyrt+5bss2D8slXASJB7HHFqq5KyNvrsHn7J3xMsIGw8HovM6SC/zcDTN6VEUmqG7YJDfOAv3M7echU3JyvcRvlf+ykpLT9/bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722945354; c=relaxed/simple;
	bh=dYjwpTa4HmQMu1HjArX59JA9X3IgphNNe8vjl7vrcVg=;
	h=To:Subject:From:Message-Id:Date; b=hw7oI8djDlkEUN73HLsbAi+YKwe1TkihheQaaHn/xp8QA4dSRsKM7U9b5jfJAJ46T70rPSQf3FFHjmPbHTUYEquu+wcuJejZLIjzoA1rbZ0iGCwLBCAcEnm1KsLsXt9X3YmjfFM8pYrcdU72wigeGGTfFRdHkoleJ2IrsMTd4wY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pNAnkwgD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pNAnkwgD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADAA4C4AF09
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722945353;
	bh=dYjwpTa4HmQMu1HjArX59JA9X3IgphNNe8vjl7vrcVg=;
	h=To:Subject:From:Date:From;
	b=pNAnkwgD6aKz6OyHZhpzH+kdLwtrYoUfydvt02J1Z7R0i/rPejBmESpg0wc2kFGYU
	 lpvBu9/BmNbDPP2dYjp0mPLELNzJB1vjCyolgrGa7LbmAl7GeIe/CoUKICFVS9y8Qo
	 F0T7G0EUChTMvQOKJ62jJT9V2Wlf6ZGmBruURm8vMT25O4i9Y7jRThvd4ecaRjbJUh
	 JnjHhYWZP094xOFm0GHpAb/cC+OxCuBYziu+ftknqAZCSE4rl8bU63hJIUQysL+/v+
	 Rf2uQ5T1pncMC8iLmESgNgICy64gqJrCxVhTTugO3t0PZYC+u1UCpFGpABjKdToQ3W
	 PAMHBIgWFlCQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A356C52D6F
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172294535362.19921.4171996561938336051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7263496c17f07db89a7e10c2f03294eeae536438d48edfff7c503abc24520288
Date: Tue, 06 Aug 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722945353
