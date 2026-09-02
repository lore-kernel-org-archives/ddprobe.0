Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4984A13AF
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788357035; cv=none; b=Jj7jQZpkAB0dlysiAxgQbaImkoA1IzeqCLuCopdOdsRgcVYVp1vaiYFPsJnYW/7RRG2EQlq9LmayL3uqlaAbd90XhntMJU80zuNMadqDRJ0Pb1/iO09MidZ/H8UVUgxmn6wW0sD314N4ANzyGqDXFv0BkJ/ayVk3pvv0tgBRAcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788357035; c=relaxed/simple;
	bh=eWrB3ZWjV6+DQ9pLTz20piFzulWFw36VsI48XYtBMTA=;
	h=To:Subject:From:Message-Id:Date; b=jf3GG96cn9rT/C92+9lyeT5XMvjTRMWjItKq/K2m/pJNgayDJfEJ6kU5FVpHnv8zDtnXZo6x/PLCn4fJQ6YIbZNyfZNaK0TnuSShiiT8hyKjFi8K8JmNfvz2cDMfjNa0qj86461db9HbxN3vIHkqmvZltzf7CjzCXvkC4V0ZmRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RR1EqVH7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RR1EqVH7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD1DBC2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788357033;
	bh=eWrB3ZWjV6+DQ9pLTz20piFzulWFw36VsI48XYtBMTA=;
	h=To:Subject:From:Date:From;
	b=RR1EqVH7DzmIJu4xPsKThyH7/zD8AXBmTpkujlAau1ioBlkvZ5CwdZWykN5dRabdX
	 aYFpz/2Txc6rb0nwxRJWu6EPm1+FKxFbJv+3f99jpyj4tN4f/Hj0/ONFs5epQMy05N
	 D4It48sW9xJ75HodTzL803ARMx+Zm+CyXcMuFoHazzb/HC/qe/XQXmxizdp9sHGqaJ
	 7gAIfK3pmtL/SGBqsCecrKVRmu8YGJ4TcM0QJxQwoiq4/fWqI0kP/EYlkkHmgjvbO7
	 AFiwTWnKNX2VQ1d43sgMwn77b7j2I48Q9ZLJdqYlPH5lMTuq+rKaOJAgVREtTf76xK
	 avUB/VbFAI9HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8C0C624D3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178835703368.1018.16308896415530558203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f5f773a974fe7e861272bb398dc5676a3b91b10616b56cdc92c2e2bc65788c2
Date: Wed, 02 Sep 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788357033
