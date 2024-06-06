Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66C5A1990D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 17:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717694843; cv=none; b=fnIW8zw49LYUVes1WTBp3yZJ4ObsJjNjyxR3AkG6mLsUu9EaguNjB+daihIRKCS3b62uaDb/9ijJSAzXsyAwysVDGo/h5L3nVbIZLFQHYWqjUrHAbCRj1Y32PwJgaUDwJgWlWr+A6iac5fLE3O2t8vX5JE7IPI6JCIlRJmsz5Ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717694843; c=relaxed/simple;
	bh=y0ae3oZPjUOrTcRR12Mn9B8HJQEtwaL8Ey0jdiniF0E=;
	h=To:Subject:From:Message-Id:Date; b=MNPOJrPsMVkQ4ldE7kMfYfkFzNDo9YXrbeHg18Jy6b0jsOVyUTF3W29lZm+DmZ5CM6W6VT6l4oHSkSqvP+J6VTHr4zQyq0JCuldYQwBqLws2RoGDVtSgeCEWFFxZWk+QPTcZvELPvmDNCG0U2vTq2PfY7kGnlDfMJkUrz1FH9zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y1jkWS8c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y1jkWS8c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7AFAC32786
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 17:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717694842;
	bh=y0ae3oZPjUOrTcRR12Mn9B8HJQEtwaL8Ey0jdiniF0E=;
	h=To:Subject:From:Date:From;
	b=Y1jkWS8cmNsDvftKYu9N7hJVTgnflNX+kNGa9+qF1zmftiZZ1RrtayIHmYBAwTmGs
	 k7yWZ2AAOaaeBFmNY06k3b37T3E+pegHn3fIN36yksRLgkSWmhTYVQZb0P/lmXqW/c
	 PXGeFw2gjfyAvJlULgqqxAPXt48383b8LhHnfDzK2ZiouIHX3OMzAFdkd5xQ1rFXe5
	 fNu4fZ3dcwcgpH04R5jcntKikRxAdOXQacOofrgvr7bRdZGVnbKGLHHppwlvVK9xey
	 cspOY2GCI88DmbYKIgjUzIwtH1G6s2Tr9k9NxMzt3OBwt4ut37hu3mb1iI2d6SsTPT
	 eHeUSnFdUGjaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D35CCC27C54
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 17:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171769484285.20084.1064111253223702007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d46ee1a94792cccc6993de752f6b95f4b4d19e5d7cda72b65a99433c453fd5c1
Date: Thu, 06 Jun 2024 17:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717694842
