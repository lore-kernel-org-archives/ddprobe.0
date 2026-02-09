Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36ACD3033F5
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770621834; cv=none; b=V6no5gBBdYbTGEZ+/fTkKIqSU5i7doavrwNVgmMEARe9o4Vd/JEXtP9jAUZEKQnTyNfIrz4woe8uQA8Z9Hx4gKjtbK3qacUkL4C6zfNUwXIGvlY0bcE0orEvhGf+mKl46SIC5eAs/DK0h7WCJ/zgKQnLz8r4G3UKJCRz0AqZgsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770621834; c=relaxed/simple;
	bh=bv+Ofh6a4+wmAfmgoFjW+1lBQSvBuqsy4+RJE7OhdEg=;
	h=To:Subject:From:Message-Id:Date; b=BHiH5/sz7qelZ8IpSrlyTJTq6t/WFK/gcVBVpELdone3nAPV42tf7NixASECmfHGaQSH4ADhYIkosHeVNzZqJ5L1qtS8zK5M+5FOTLo5ArdvJOHWRd6pbC31nlaEg5fh8JdXSAJRp/4W6Al6Mjznb2uiz04rTT573WgrTtHsaII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ow0rN/fT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ow0rN/fT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F9BC116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770621833;
	bh=bv+Ofh6a4+wmAfmgoFjW+1lBQSvBuqsy4+RJE7OhdEg=;
	h=To:Subject:From:Date:From;
	b=ow0rN/fTPM5ujBJfZSIWNVf4EJk6NGyz+zr3kTgF+Fbgs4ujor+vBo7pCFb36Eb8H
	 TrbsbcaMh7uZvkDDe+1Lz0ouAPe/tAsq9wRu/v4CS/SNVVzJtu9xiH6ny4CtN9JX9V
	 kv7mesjTBDmDI12TeKU/spIHfOXHUp1ILsVoFJyYvvdqhDqe0F6umwhbKhhH/8qhiX
	 XgWOoeyl9Dqk/HJgRKITwcu+8FjqYu7vYiSWHxs603aMCrNDQvRFJGgxqzBuO7dS7L
	 Y3g+uR/6qoJg3BOaY/RJJY7f44Jvw91Z/yL7n8WIWnUXn23WTKx1Nz6jvVfzP1RSnO
	 e0s0Puo5piiTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A45E8EF071F
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177062183363.15211.7667237380132769576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf4d4dce6b40f743547aea5690d7ba84303d06ccdf25a03bcdca0b6b71b63961
Date: Mon, 09 Feb 2026 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770621833
