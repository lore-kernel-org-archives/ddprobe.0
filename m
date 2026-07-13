Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C37406804
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 16:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783960114; cv=none; b=b0Gsj5hywDxPqB1IpOcyvjHMN7Ky2hscCJjhXB9FxL71SW9cSSDSR4rw3DpDKyYmjg/eC2h9kq8ruLa1f1ZnLBw3+P65RPVfNbD10wpoUaZPNYBUstfba2U0lGwU8ho/hHEkm+89JrdJ9CNdKBlU33jGRu/mML0CCZbP2IqT+7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783960114; c=relaxed/simple;
	bh=Jamcpmj1PqkDkemnatQnSrW0ti1/WW9cLUQ6G66l1sY=;
	h=To:Subject:From:Message-Id:Date; b=LhZbznowDQV9qIBd34XhOyiupwp+WkFBootpOAK9nSwSzrEcinH/CTUzw+xJDTlv2DXs1Aj9sMW6z5iYxHGo2KGso56xIejQCAOyIzgf71AZBbuPFDlFr4RrC9uiKWA2hQDj/kjdIIf7Bfou23gCb5yAbD0Uc2FKJupYlXXvK2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iWnXbj1e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iWnXbj1e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA5D5C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 16:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783960113;
	bh=Jamcpmj1PqkDkemnatQnSrW0ti1/WW9cLUQ6G66l1sY=;
	h=To:Subject:From:Date:From;
	b=iWnXbj1eG5mGMBwz1DCv25KBqzy85huFw1Tiu+CCpOR5q/SvL63OtNc9Coj1AgoS1
	 25PmUhWaBFTd12V4FampPTnPksvFN0wGLBdfpv4bfQmSwYrQqYp8b9LNxLh9kTHpBJ
	 szjvC5KQ94VGsL9VEY8QlJxa5hMJYckISNUdndNypvvLnuMIQO17GfxTpFjFtphE3P
	 CE8yesulteXpG97ELW33WOMxh7onh7dpbtq1/Tbd3sbQg9ReHIk39oyCOQNxllBhRj
	 hWQgzvDDo+8o7C0oWXA33qGf3NjztxUyCQPQN/Fq+H32uX/Sij7izC7lkHwpo9QrOV
	 6Mvf5si27nagw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A66C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 16:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178396011368.6443.4460795188796810662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 422725acb2684084bcde28739a943243ee5887fac5e8f6c6e7bdfa3ebb250718
Date: Mon, 13 Jul 2026 16:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783960113
