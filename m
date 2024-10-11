Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE9362107
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728608153; cv=none; b=a9wMlIA0EFSTxcbT+I5Fnkh1tZIlY7KNQhFp64oDdhY0D32NOgnZh3VgTu50feQJ6sBrUVw2Aq9Ml7UikpPOuEnacgXDC8t4+dT8npZEMUBqtANMNGkXeLsnLV+YWwhIuVGJNA+fkHqXSnLd4aWoMwc4aAg7Xh5NV9kI+Y9ud3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728608153; c=relaxed/simple;
	bh=OuSDirXwzpRjIJxR1kNJiFSmZLJsONSpxu8dZMUa2yY=;
	h=To:Subject:From:Message-Id:Date; b=j+w/+yHcFBOhjY6Du8IvYWX+UbSUPpa3+Rd7ACo3qec1jRDPWDIwaKzUgyRGhmGXieh1mk86TJ/fdnPVa6x00+3glfROpB7Kl/bzkYjO0aDh6+FLqwAYxHj1YVYNXlh1QlECbrgLv5WumHFb4sPmC8SA7tPxRaZUGLGT2Xn1Tvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JNRB66YX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JNRB66YX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC55C4CEC5
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728608153;
	bh=OuSDirXwzpRjIJxR1kNJiFSmZLJsONSpxu8dZMUa2yY=;
	h=To:Subject:From:Date:From;
	b=JNRB66YXqqldwJf0Cx4rL+/HR6UC1lar/2li9N1K9kvukP/adanGMsltANBifnO0g
	 cDHYvCm9C3v8CeX846ymHUPbPIqUqITNjigGe+W2lO/Du4X93HfPswPV6u2k2ylY4L
	 H+TWjN/KUBub/s1Ri1RCmJRyprcwcJuuFZ7Iwgg4W39CHZI9qpkXtSAe3sa3gBA0bT
	 lzIxesqCyJqLtaPELSkRXn0DMi4ZRBC7rF0P6REnZxRiqmPkH2DcWj8PrxYoRrIs7n
	 YLgm1Qd+V9FpLi+nILMUlJ1tKW03wGdSWHUX3FkAyPR5i1SWk9rG2HoCY0yhO8PzqH
	 2agop9qgb8CrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C3AED24462
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172860815358.26028.10774779894907928914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e15d437cb9cbcbaa2ebdd20635cb621b705d4bb78d4233e3ec8d232cd0045dc9
Date: Fri, 11 Oct 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728608153
