Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384F63DF009
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 10:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775037934; cv=none; b=Ti0YpJWQxZN0i5/jDW7E+9bbcOTGr4+5mv7MqYF6fa3Y1b+4qwLxK1Q+OkQYB92MLfIOPEzaox032zPHeXtsbjhbkAPU6Gd/BkOxIJOTNoAZOMch4I8Uk4+z4K3ictcbNuKG+PMJAO/pUITpX0MQuYoPPXNNY1X3TfODBB7o1Sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775037934; c=relaxed/simple;
	bh=eJI45x1L2wuM10ow2Ui+MAbdsuJML34JOwSN9Qgvops=;
	h=To:Subject:From:Message-Id:Date; b=KZ3IARtaMlPlIIlK71L6530D0P9LI4/6S9QcG5ytrU/zAXju7UTigZXyStvhBMhc1Uf2xWwh0kFkZGGYM7PSTmZhx4TypBGx/gtolL6y/grK21stVxIW6OqwoTrM4IUWWibwaYNJKueptCkDR1lRkkDT4QaKtGYOFSXO49n1fOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lH0bg1sN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lH0bg1sN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDFBBC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 10:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775037933;
	bh=eJI45x1L2wuM10ow2Ui+MAbdsuJML34JOwSN9Qgvops=;
	h=To:Subject:From:Date:From;
	b=lH0bg1sN+Jl+gcSsoJcsxnzJ7rWTFkq4CEizvHnUTZ2uL9BDBybKbHGX842KLPQRk
	 YleKan4S6HV1BGNcJxZKb5ZnKbkgYMngnfXIm0kTJ1gWbE1+yMtuzEF5QEKKK+4oJ1
	 7ooHGIhl38rGqhv0qk53Xy0y+t6Blt9pV+sECZ2BhJo49cKz8Ytwzx5tApd9YlEjcb
	 EoSwXAzSbdZlYFnPcnpqMuC+8TvKpiBHYuL9r1oOwBn3cr1yrbiAJkrYbVW9IqVEJK
	 W2LuT73ZRL8B5XbQ3e3ppnCbXXQoZtZjg2VtQPotnUbmqdvEhRnaxv/RiRPC1D6DCn
	 TFkENwmAq5i4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F0CD3516C
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 10:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177503793368.1732.15006763809771139322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0d877d31e6d33dabbbe74cc83e8e96f907cedcf1d4306a74f2614cce5f3ce47
Date: Wed, 01 Apr 2026 10:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775037933
