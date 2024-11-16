Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3564F372
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731758154; cv=none; b=NJyNGvGm0TcKzDF44cRWOk6TPscb4+l4nZUzZu+XTX5YRGtZau0BzM2OR5wAHXdwE2SPlwNxfyobHb9n8uwzu6lgLRBVH0MzM342h54LjDYG00eFCygBb7/CpV8PBYisqCrzJDg71DX96tpTfETn80zRNPgfZg81Jrag6bdqLwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731758154; c=relaxed/simple;
	bh=PFQ+QfP4jB+CWjHTsnLLs5w2TkK3bDo9o5RwW+WTArg=;
	h=To:Subject:From:Message-Id:Date; b=tnefj+EOhYpb9AgWN4BrVebwyF2/q7c+icX7BR8izw07Mfzb8wrAfcyaVl2FK+ql/MdhZN0xKaKfF3xTb6MkdFEx3bBi7DulEJ2hurEK+eUp0+zfI1utFs94aEcTbZOz//lrEvnyf5vFCmP1zee/jxxj8zxVgTqKQcn1a7wwIjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kWlsW7ye; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kWlsW7ye"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA33C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731758153;
	bh=PFQ+QfP4jB+CWjHTsnLLs5w2TkK3bDo9o5RwW+WTArg=;
	h=To:Subject:From:Date:From;
	b=kWlsW7yebBsz6+S+fqwJcYiW2VeHd2nyVsy+uRR5TC7l5rHIBsc5LL577wQ5ED51E
	 uDM+RIB676jcBNDvUYbObq+A5EmqKSIGJcNi79w4y2uVaqIiY67ykWWQ/wXRuCGQQM
	 ktK1RKze+QQYOMCa/X3kQ8PHq4WdHHgcG4r9FmpAu1ixWbcQzu7v7VLX5y93aUraQW
	 Su5ITP0ALsG+jugGezynjmE3S/Mtj+vtXbsZQW0hT8uVZevvfrLBSXDilxEUkLb6W8
	 M79SQnoI6H4tF2myUpkrRL3kf9W9r3IwLQOGBtkeWn7rNE/csMdHsM6krfFs8fvXZQ
	 aqLLguw+oWzFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0BA8D68BEA
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173175815361.2427.4714677289509346845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba3adff60c6e900a07bdad5823eeba8edd8e8ea1273a3aefb964825ae2f9b73f
Date: Sat, 16 Nov 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731758153
