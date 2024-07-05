Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F0A3139E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 00:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720140323; cv=none; b=rE4fNsLhaX5CF+oKY48NG95Db3dWg/7WpzQAYX7R9P3VK1rkjnb3LApuwWSQt4q6vYplxsWMdb8ZWWklMAsqPRArba6tvWODdOIfdMy1dMDFdDM5WFYy+nEoM4XuKgyXa/QI5wAxyug6JB9TQ/RaAqxlQ9KRrfyJddvihu1QXME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720140323; c=relaxed/simple;
	bh=pz1LOilxknlWi9iXrp1+QAn2lyDf4nnhPKfaAI5vfeE=;
	h=To:Subject:From:Message-Id:Date; b=GCm4uGiEdVs1NTJViYkic/+jsVAzprZxvV4yNLcNlFCBbUuyGdQkgZP2G8tPpZYq9xclm+jD+vCezqLJEzi6YYPLzg1WhzvrtoMVP4yyHmYZ4/LSBSM7iiK6xAmhELqDLJl2tcZyZnqFFYd1l5jgp5JtPKRn2qMDhfySAGB22rU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Djpn5JlU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Djpn5JlU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A01C3277B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 00:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720140322;
	bh=pz1LOilxknlWi9iXrp1+QAn2lyDf4nnhPKfaAI5vfeE=;
	h=To:Subject:From:Date:From;
	b=Djpn5JlUPM1uogbpsn599Dwko7oj/y0uwFnK3BF8XWYCuoyKIr5uwTSd/5d4zEd7K
	 DlcLB8LciWi0vzrxtOKvPuyqJAOJDT68EpBZ28AfxpbqQe7TL2QlH2jZ0T9PuE8YDy
	 ycQlwipOaVOX3fb/xn8xos3FSGsSJleH8CjAPkYnBRreLRuY9qK3/4XFYi0fdCRqKi
	 DckhJX5adynjClqi0WcV3A5gptd7klt99LA2oRFxaun0CRXq20Dme0rdGkZmLZoeVy
	 SRpfgBvrhfYPxrIAFq4gkqRkf52Cdjlby53hy5Om5pUFT+uY8q1dLGhPWTTkNJPlP8
	 Qv3BmMYdGf+IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3079C30653
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 00:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172014032276.13177.17172958545827407739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7d5a341576fec3f99f0596ee5327723ab24ce118c927e2f7f7ca87e44690445
Date: Fri, 05 Jul 2024 00:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720140322
