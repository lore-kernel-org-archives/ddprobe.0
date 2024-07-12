Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C964A11
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 00:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720744043; cv=none; b=lAwEr0XXkGY0HBoo3jNXpRdOmhxEfk+uh4Z2/6A4evf3N9Nqe8RNZKoi8/Hd1yt3Zeh1krqMQ260GeLvlsOvTgmWBqm+cACSXRLPg/E8HqabrLVZSummXW1mzu5hqWnWfuGHfTTftD1jl4tPwEQuWES8LLUyM7PVP6QKZNg2Zyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720744043; c=relaxed/simple;
	bh=G7LV5Nl2BcLTn9bmb2+x7B+Jg6xHjU+Wr0PhEkJhrUU=;
	h=To:Subject:From:Message-Id:Date; b=hu8WDg82inmULELSJ9ipMRgbfrYo2ZX/oTOxsLhcMJp5H9k3BseIKc5QPNXjlZokVuf63B2SMcl4+0yFbP4ZKkYewL+0C01D/XWLcVPzxk4rOi4eAGwHX8WWI6dnqG+ofQXO+9Fv55WdlZIEjZX43ON6MHILtvMRiDHDpYE8/d0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LawC8ooG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LawC8ooG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D81FCC116B1
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 00:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720744042;
	bh=G7LV5Nl2BcLTn9bmb2+x7B+Jg6xHjU+Wr0PhEkJhrUU=;
	h=To:Subject:From:Date:From;
	b=LawC8ooGB2quUYH/nGZEgaNgxeT5zjMAx7yR9ClACBBl3jujLt05x8FbHFOxUG/gu
	 4IG/d0ulX0OFnzF/uo9//GAjAhLo0W5Rrih3O5Hf2MJTf7ofCfqR5R6mrq+8r09kj8
	 q72uIW7+NSwHnFq2zP1rh96Qxny0WGErawDqiewH9B+uAdIPp4onI6JtzIoRRi7yBd
	 eHElffKFaYYh2atzWCqSMD2Nw5E3jbEYOui7qv1pZwlzoen5ovBmSuJdulD+mmcAlW
	 Hn9dk38jKBolAuuZWj+BymUEGHWJVgLdD/2wDPi/iIR5gbokuGV4+zT1opjvu/f+u2
	 5RZURlRy74+MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7434C3DA45
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 00:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172074404276.25301.4061361242595825856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d7f904a89548e9fed687abd7d829576c52a8d6aeaa76bab93b076a9d74e91ab
Date: Fri, 12 Jul 2024 00:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720744042
