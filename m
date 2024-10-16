Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CAD818D634
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729064754; cv=none; b=qIpu3aZTkcoDbt30CWqkzsF4sl8YPNgcxN/wH6v3/ZjhSyOgfLOwcqy7IjEXUPRjU7OLdeMtSiJ4HDb7rz5Z9l9cbSfw+/Bbp5NrFp2ZzIBjCWX6NiJKpMG2JSbgKKT/6q5vQ8FnQ227lENfaivfmh7sXQu3rFFsJ39ygfdYzVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729064754; c=relaxed/simple;
	bh=7cNEXllkssyAzeJldikBw2u9LOh4MRDbebAQB+duBsU=;
	h=To:Subject:From:Message-Id:Date; b=lY+ujI+6c2gVPB7Ti6BvsZ76IzVNDK190KK9S2Y8+V6Js4Btg16McBeOuDb4mcpcurkeY2aqq01HbXvYZ/9bFd+BZjWDinac7NjrHhj0YV5SqvVR5bDjP/Rh8EyVdyf3+pIe42EQY7Pg1SDAMEusQKln5go0ndhPPdBaFgpdal0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJceyDpD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJceyDpD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7997C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729064753;
	bh=7cNEXllkssyAzeJldikBw2u9LOh4MRDbebAQB+duBsU=;
	h=To:Subject:From:Date:From;
	b=ZJceyDpDPrbFbxpZit3tCL0ixy3Sbgu/vjtvFFoabK8KKiyYcgIlDSlROwM9NNoXI
	 /Lbwp6vddJHAAeyhYn9g1epms9pcIS6hQsEJW+SUEenIhDEaedFNeVzNNMEGfN0wkn
	 xhb2xKdu2y4dm1LEHUK/yitYOFlvNaIRymCsfi7L1BrKIeTO+E4wM1uwagtKoSjh6t
	 PB079M78bHF2QM2aVh+5pS56Rv5ufEGJEFdWd9zwZXoxafevfZlXRIhnhUKpBYkdzf
	 Rph3FgTIe3OBQKai6l4w0FoLZjHlgOk8O0ZKc+EFSedTpaqf+a/xyOcnR9CXU5owUs
	 UKyvVWLLnfeow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93212D206AB
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172906475359.22989.2158286208007023703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da5ca2faf4ff93e480c4b0aaa61a1ea9d6700178b932b31aeb3c5122e02eb9d5
Date: Wed, 16 Oct 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729064753
