Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10EC772622
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774749294; cv=none; b=osEQPw48jzpfJW/IMuKyX6GNIgMiZ92XHndCAFYA3C2yHAylwqcQ/yP1YpsUE7x3/JOYDM6x+DWQHjU2E2RyaPAaS0nG5ilWFpy0Vn37rNC67P7a0Eca5lCUQWrBx4Np3CW/JKZViutul6ghBBqZoWPqKHvG3evogWhgxpRMN/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774749294; c=relaxed/simple;
	bh=Knr5PsyEMxYzxDhK8nq9Ch/Yir/m0PfJrHEvOEqgCsM=;
	h=To:Subject:From:Message-Id:Date; b=cbD7RKGJQfd0q0PuINRNLkeyYLJ3ffHpojjCrl2dWYi3EMEMvf5jJVYthLQrnhyFK+KXKDLbFdlb7ASwV+zx1aaOmrmt98gky4wgTDyo0UgIyuWdlh8CGvCHpUOmAx4LKpn9YbFBgt+2KymxSBgRJjULVj5j1k3q4lsXT2zx7B0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CRkFqzgn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CRkFqzgn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80F3C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774749293;
	bh=Knr5PsyEMxYzxDhK8nq9Ch/Yir/m0PfJrHEvOEqgCsM=;
	h=To:Subject:From:Date:From;
	b=CRkFqzgnneXWi+uj3zn+YHCyV6PDIJZ4a+XMnqCA5ZejsNwxNR1QSR8rnAl2TMpjQ
	 8kipk9nQ2/gK6qaYwR3V/kSms2j9Ka0SUf5bFLzlfnu6SwAywcnZAckN6geC27DhQJ
	 qGcf4Tddgnd1qwFpWDjMFfO+Ru8C2vSsOLmyfQNAjIUVuBCbXr6WhMbx2jSXRGJAqU
	 HDHak5hsgUR3208Q8l2G7ROkHXc3NHRxt0AXqk+WtgajludUlF6FM04HKHhxYLb7T9
	 GOhT69/tEeaS9Yq+X8zTwOuOuPCwfEhYcX+jXrptt8831KHzSKcXgNwlSot6rwVrh+
	 4gFgfEWy98RaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A4510D1487
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177474929358.24105.14973206926287319507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aecd3b3b5c530d54f2783b56aeb2984ef35b452e7f5cd09eeecf1aae6b3b138b
Date: Sun, 29 Mar 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774749293
