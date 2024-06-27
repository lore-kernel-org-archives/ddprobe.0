Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F96B13C81E
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 10:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719483863; cv=none; b=t63Oxr1DAqwsmZq1gDzbqdsALXTu5TncmAH+XN0F0EXR0UtcZAkzVVcaur+TXPZG5NVUSmd+/U1cIqXzK/6R7tygG5ucgA8E9iieNgTzln2EMxGjpSvNM97PEo7QW8P2HV+S/NxmmhlZ2ODLDEjHr/r0T9M3DoMtaMASd7tJ9xM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719483863; c=relaxed/simple;
	bh=sdThCxSrOPs7PzVmBhSz9IOMJaXKZXef268mSMzoZZc=;
	h=To:Subject:From:Message-Id:Date; b=Zrm9SlpIUpW3KzshZzp3kH/VoiOCXfthYTsKbLjoby7xVtzFCqflNWzwiNcvL3koOFDIYQqfO1oQbsLLcRX+cxyOMnC//9SEwFLKGSAw6OpVz4P9RsHaBwee/dAq8qo+wxsty0y4RH7cn1CKXJx7bLGI/Amdwtf+QpRC0yK7+l4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VSEhUdcE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VSEhUdcE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E63E2C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 10:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719483862;
	bh=sdThCxSrOPs7PzVmBhSz9IOMJaXKZXef268mSMzoZZc=;
	h=To:Subject:From:Date:From;
	b=VSEhUdcE5Pammkl2Z2usSTfbztHF7ooy/+A7C1v3N/DCsk/Z6ZCy8KFfhWk7gZMKz
	 ogwGBL7xtMy+RQFvFKexGGJpAsGQ0f8bomvycpl+C4A0RutbiOcyp7AMa6Scc4EW9i
	 sibN7Qa/aXpN70zuHXnzardyEDygUnXfvXgX0nf5mdxI23sjTAYdMQiusdlweW3q72
	 IS2YvzhKJnhczgQSnU7lAlLWQ2zNUHfDUAjDxxTubgKeaI4KyZzCOq1cMO+DBifEaf
	 lftLKfQSLjmv1axgzkSHUSXEUa2gMN5prKkaGBCB1djQ9xIeMHorqymIpejfloFIeX
	 6gQTa2m/69QEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEE34C3064D
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 10:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171948386283.31659.6172882515769137419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9405fe1a2c0abbdec4f949e5484449aa2ea943913a8d58154b4f3f324b03a9e
Date: Thu, 27 Jun 2024 10:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719483862
