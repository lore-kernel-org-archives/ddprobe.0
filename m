Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A0B040BF5
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 18:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720119323; cv=none; b=ib3K1HfRGTGzF8gVyK1x5NncNdNpcGGTDVHQozC69lzmKEr8CKupNxOLEScwxkBVTECnnWYL5qBeepDKJ3hW1L4A+zB9aMh6ffd+NaJoZWRqE0VwQLB1kW61odQKi/14IVOtLLDcE6JosNEiL0sI2qmyxSMlHcGsH57hU3npEis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720119323; c=relaxed/simple;
	bh=iAbMEmtMEWXyJEmFSMVLPudNCLF1Vhs+kK9JNVFqfuc=;
	h=To:Subject:From:Message-Id:Date; b=lKuACvNu+l+g+AaNPaunz/nHZSfd1kslvU11vSx1l+glCBiwWZyqMRZ1upcDjRcw/7ZKCkzVVJ5H8Q+X6kQZtNiMaYTleltMuCRpq0tHTxnwwQmXYLD408L9m90ftnpYdC8ahTxvIhoNLc/N3sI+0kVV6h9LhC0TRe12zRhrvGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQc3ZYza; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQc3ZYza"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFF2FC3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 18:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720119322;
	bh=iAbMEmtMEWXyJEmFSMVLPudNCLF1Vhs+kK9JNVFqfuc=;
	h=To:Subject:From:Date:From;
	b=KQc3ZYza2z0IMzuU+nqg+/wxQVAUdZmyqOKXudl/Ynh0a4epabNYbUIDpwTWrsuwO
	 JKg4vu4IJBT5DMYvabJ1n9xLMRKGy4ul5pMT4upEJTpGA42ryv7KnrQ+WNanh0Yx6o
	 63JVyp8CtMMSCmhSmlo76oQu3GPYUk9h0AKGu5WIgeCwnv17U9QUnjU+O9SoMU1mvz
	 DEjKprw9kAHwn5oCFENfHrtCxxa0dyYAQoh6cM86EA2I7hAI7hLgAZMysC93DZJk29
	 HdgGwhjGP8sqpfoYfNq+ZJgnmOBu98XxxJRBxSLPwOO/2bLxurFEPegpZkIKR8H5wL
	 zvpb0SUhzw74w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA3D1C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 18:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172011932281.1346.8755208736570310301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 755b2a3829c11a43cdbb172067b1d344ae05017b466ca013dda3308ba0e9f9bd
Date: Thu, 04 Jul 2024 18:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720119322
