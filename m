Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267A9364BE
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726559154; cv=none; b=vGUBfmadCSjT492p2XV5vGSZnOn0gdszPS2TuYdcpmq7A4d/fYbDJ+3EoVDEWrDHSvbFecLUqV3JAOkDOwiSXIVbiMq6UevVzgASjmOhnSfJ7dnzL9EKkuX9yeUgWRCQ+9zYjvF3FMJhqQHp03AZdo+Jcsc7R9IH76tC7K7lbvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726559154; c=relaxed/simple;
	bh=XUh/M1r/b9sQ3bLlA4FJCL+Qp0xbTTs/TK7CzLk/4eM=;
	h=To:Subject:From:Message-Id:Date; b=TvYp1yOiT/Opt3FyPclDUYFBkrvPxWMo3P0dITeaiJ1UY1Xj5aDAM1rLJY/p7e3kFuykCfTT4GaidTECYqbM0SgNUZWlhuZiRHLKNPKAbUDazJosnd+6XkZANpbk+mC+h6Docbb5RwxWp3daEN8/ZucADHw9nZ17y72p9jCxqb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BtiS19Zy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BtiS19Zy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1FDBC4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726559153;
	bh=XUh/M1r/b9sQ3bLlA4FJCL+Qp0xbTTs/TK7CzLk/4eM=;
	h=To:Subject:From:Date:From;
	b=BtiS19ZywGftUBu3pfE0N4EdSBWAwVYJh/mxLCWT/yFJmlENlZTRBKs+40McZer6a
	 H1yu2mDKdfoZv/nuRHK2ndZiW6I6ZFausujUxK2vJGQVdcrPJhQh3/OKGOkeoZqpQo
	 IUPbQW/RcTT2LBy5mmYfeDG5eRKWjWNz9Bdq/fZOpnOBiJcnTjL6z4rTpeeMY4mCc0
	 1iVp66Mme/qr1LRZ8C84m90l47qEstDBxXyK6n1vBgYtWnngrCXyahaXEUw3Fj54pd
	 lgAjGEcxf9WTXi+hYY2Y/OdDhV0FRnO2AivMn+N6yYHpdQbRtnzr7L5d9hvj27vN26
	 wDE8b72PXJHyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A153C35FEE
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172655915362.22762.17648536973676237364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 981c381eada0f6d5ffd590fae9b589b0cdb8d1fcde9203a61b7adbab5bedebca
Date: Tue, 17 Sep 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726559153
