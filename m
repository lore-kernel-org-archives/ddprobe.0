Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A1E3054C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762556394; cv=none; b=l1qVctMoB19sCYPbU6v7gBNZ7bxbWb8YpQ6arwqFHkOnu2gGncDAYMyOO9I3PHVKHj6S1JQ6/9WBhYR54vUcbxfC84sWwwnP+bh7yXAjTe+mYzCJ2YQXZPnr7nIisBXDORaCQrusC/3nNPYSTBvpZL3pfe8ax05/f1qI0MV8RHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762556394; c=relaxed/simple;
	bh=eQgIe6DTK9H747hQCO4DW9Y9ZcIeytlD2x2yyZgWHJA=;
	h=To:Subject:From:Message-Id:Date; b=EKv7UOANVQnWW0LZncWlR6fqAvsHWxeDrsIIQlG/gCRmljsWH/Zc/cY8EJhG1MbIB5IUnigr1k0TR0oCP7TVjTzV0RWbbQ4S2rPqmFXC5XhsvPeQ7Wl9b+9PuVupg6leUTjGSI7I0Z6YHxQgyznmX6y2MO1NEdbxHR2aJlSzLxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JVoBoLZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JVoBoLZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71A9C116C6
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762556393;
	bh=eQgIe6DTK9H747hQCO4DW9Y9ZcIeytlD2x2yyZgWHJA=;
	h=To:Subject:From:Date:From;
	b=JVoBoLZJdeqveB1cAtUEJz2zTcovM1fyg1iCi2DoCw+wjkhXNHcHNmEjCRJWciKH9
	 ibYwHXtI8e0497oP1qrL/ENB3iGcykLIzEfGOAZJ/Np0ShcLK865s3UCGT0U8oPEzF
	 94lBku9fhwSmLbwzzzK3eKMfXxWoc1aMw2qkAJ2UVJ8O2fs0KhQOeEAaGh4Su71hwL
	 Z0BgklnPTv4lc8VaVJrWpsXwxMqP6M3KX3fh4rAXGFn+QbgnyeZ398JPHglo82IoS+
	 QD4lSGvSRf9cppExgqOokmHSr+/sfE14b/PbGGGB9zJI2+aMpKYcFkXmAkld/T5be8
	 omr3plOsZNOdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C21CCF9E3
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176255639359.26222.13266905567596534089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d5284133257b9228c6d1e703afead87b6b5c608151504aeb8ccc3bc915cc3ce
Date: Fri, 07 Nov 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762556393
