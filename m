Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BADEA345751
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766147633; cv=none; b=WLh33LZbCCNP1jWcaUFZWIM1MMvMOjF38AcI8Ztc8nekIG5jdok02SaWcDrdOaIc9y8cvcCoCiIWP9XZem0E23+WwZ654OqvuIPWfBxmBzgcwX+ZkJim5jvYim73yPbjfHIV4vUTkL/Kgv0ut3XrbXW4/L21NJeqqDXdbcF+vq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766147633; c=relaxed/simple;
	bh=cCPDjrBH6Qoy9xFmSlIhAFYflvhckUtINxq+7oJWM8o=;
	h=To:Subject:From:Message-Id:Date; b=SHs+KKsZZcji4KhiZ3zKh0307CkWRk2ZTgi9LaT4bLReENVyWkHqRbr64mTes1vk/NL2KLRdQviy9syDPY/41OQ1ij4StWKQTHzJOhAR1Zz1yGJw1Qhs9IgY/eRgXSxTRGdwUzg1NnuXllOU0K1iyDChsG83XWzAKV8muLdRfnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n0D6EZ2j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n0D6EZ2j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0A7C113D0
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766147633;
	bh=cCPDjrBH6Qoy9xFmSlIhAFYflvhckUtINxq+7oJWM8o=;
	h=To:Subject:From:Date:From;
	b=n0D6EZ2jLFK+Vy+oSFHbx3/YhJBQO7UEXlHj1SOg//W1rOgl9Sm+qLDpz+2+7SGkv
	 d6FdVr5OaWjOcLeXSn6rZZqIK77/sQMepLAsH8Q4tp2diwPNYpryL7McfL+5W0mXfF
	 gRYaTO9cXGH1rfzee13AwroPJuPCjwAx7s4u/Gw5S47vyKptnDUN2ttarzwCLd3KCV
	 hp4o204DYFYAdm//BxuKxABSO4ccZhTEJ7a+jdzlyW7k87W8glS9PTmHhjJR1rrZY+
	 Msp9n/I1yhG2DuBxWg6Bopu33nVJPKjYkyTMNF4X3ita5Gw/cTd4cOpsCBkz7N8oS+
	 VX7N+7kF7eYAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DC7D78769
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176614763358.27274.6463828811809427810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f299960e2e735c4c27cbe83130712f5fa46111c0690ade8d7f664f731dd2ee7
Date: Fri, 19 Dec 2025 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766147633
