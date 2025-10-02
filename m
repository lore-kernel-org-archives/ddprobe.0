Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3395B30C368
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759404594; cv=none; b=Tw9diQKCQDmxcVxlO4WdzqZDLP4jbTe5bVtLArHlpOj/zo5/KIokaHGtvwNptW8nw3D294/psc6FdtJrMLr5axkyf8mWAVJNYYEbyjj9n3sp5vchPTr1aYzdfxc+ODHM33ENnGPFFpZouFdHbWW5vzcBUbWNnvjQfzaaUjAT+L0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759404594; c=relaxed/simple;
	bh=eFqSIKN2+YvyivBnAcc7IbC7BxDLlSHVl1LKAsJK8yI=;
	h=To:Subject:From:Message-Id:Date; b=JLQQQ0myMI+Xnd+ZJPRAqzxbuaglXhWdov1eJEaCptMlwGrqAJc4oJdINXo66fiRw0zvyZA4n8ynVEv+xcJIcx7n60CC0teHo6J5a3yOTR9JuzK7ujm+oqGCKBArPeKAWW8MUZSwo+s6CbjDbvjAlxAolMaoguhESeuSVFAuLTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lyY9Xm+5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lyY9Xm+5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8659C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759404593;
	bh=eFqSIKN2+YvyivBnAcc7IbC7BxDLlSHVl1LKAsJK8yI=;
	h=To:Subject:From:Date:From;
	b=lyY9Xm+5+ZSKMIIxpoC5MH+rE+sMf+dwYitkrMc2tBuTC2jrpPv4DbZpM9kNHpfP7
	 +/D9M16OwEKCooY56wu3ENnkE4SARhbSCFnICDZQ4DkQc9mthsk4OrvkysZ3Eccddq
	 0gHpQWt7nSaLf7NN9xzBGmtsldCleQaY+Uk7RM+zvYm7DsexAwUBbWz05Z297Q8z4v
	 PoIRiwSEZNM/8NHF9Se0SdRn76MvTOsZ01qf+Kx0eIjprpQXiFuDPD7S4pf48EWzI1
	 RHqxHLwuNXdbZkV52qcTjvIidNi3jv5biozMNtJZDvzfH9BwTqdeGVt7cGFo+TC+Ev
	 V3BL8UiJxPNfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925F0CAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175940459359.3746.10756987853553755690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bfa4d1ea786315d24b207fd3fcf8091de1f810aa10001379c69262d9516046e
Date: Thu, 02 Oct 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759404593
