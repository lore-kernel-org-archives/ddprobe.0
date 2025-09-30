Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2937120FA81
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759256994; cv=none; b=iWV+c6B+xu8WkNX9JZ3kFe1LsrfhH5mXN8nrePI3MWgWRmuF3Mnl/ZExyf6R8zEcIsKPg3+i/EOfOVyFUdeI9/Xo1IlW6YADxnJuBasSDQeBU82li8iwZC0wiF7TpUDdap8N0rUQs3HJtCOoilnWZOaaxrLXjU2ltMY1iW8mFlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759256994; c=relaxed/simple;
	bh=TcrGxtmUz0Lm4FWBqYPeEIhvNFUG9xEi0XwkQkLURqs=;
	h=To:Subject:From:Message-Id:Date; b=XKk2JJ6mtwDk+pobRJksyaq2dH15UiqDiFwjSfuUKck+PvG23U8m7pJSHHjYn6EIxo1B8Xs3FX73YhaCjeFqUBW5K3ICSAHJ1BPSENHXVAKINsbo9yPc44Iof+10SvfV85d3FidATbppD8O02pb0ZQ4lpmkXVg/z1etQ4gb0WD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iThofS6N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iThofS6N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA227C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759256993;
	bh=TcrGxtmUz0Lm4FWBqYPeEIhvNFUG9xEi0XwkQkLURqs=;
	h=To:Subject:From:Date:From;
	b=iThofS6Njeid9Tm+MHpWB/OEhi5Q6b3lHjmDETe/LnflcodrzJ40cjFOMpmTCGV7A
	 3W4hw8Qvk0Ohjn0/YUsRBpvIKbVFqWMC8dtdxqubFYBt6QyxoV4c3U/0AOJmSbyaWD
	 fbz8jVy/opNafBJFGF62MJQADw5CMEhjgzQy6kgHh0BI67WW6ILsgCQNc/+OKrFq89
	 W14rQDfpizubvhSuvcMFyFX+hLWp0GR/p2iM8CdcjiqwlIW8Ey72LmTMpQJXce6c70
	 TfPfvHFLppAyF47P/mdy8GPLdH6SoTJICyd/5T7mGakRkv/QGmAo1+b1vubfOXe1v6
	 pUpdMfuaHBrPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97172CAC5B8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175925699358.19627.11119959650958644493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd0347ce726fc00982833a93bf0f31ccfd2837fcacec0cdb1c2fb467fce45da2
Date: Tue, 30 Sep 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759256993
