Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B052192B66
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724932554; cv=none; b=cVexzaf4ej4ZAjbaNav9aLtmjar5bQDSiBP/At4f662hTRAbsH/ScCegKITk22VxKXDNW1EE9uDcuWDMQ2MWa0QBPMwgXL0KXypgjL/+Rgi7EgFYONB/tfbOn0o8Pv3/hn9WbxCk6o0fmth8+EGeYR+vyifz62NMGRKk7SmFjEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724932554; c=relaxed/simple;
	bh=JSuSlJt3REIxdOHIE/A0+z8QRVhW8OXzrUTMoClfJSE=;
	h=To:Subject:From:Message-Id:Date; b=fjJu7Ic/OYf5KdwTFvNDbOBTI0GpCgNtv2/cGrWaBlrS9pMqVmz7GPKybBuhP+eCP6zy7iJw/X8lBpoLmpFWKVbESCLoEIQoZwbyWMDn08g0KFWWLFpP5ZQM5hUNlXUmBrNmWo5fTZUJDum+PUJ28SXyehyC9KwLhlqQ7fNF1CE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mjHZvQTl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mjHZvQTl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA14EC4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724932553;
	bh=JSuSlJt3REIxdOHIE/A0+z8QRVhW8OXzrUTMoClfJSE=;
	h=To:Subject:From:Date:From;
	b=mjHZvQTlIDlO9GWi74wvdzyRZSYZ1SOEIWNHT1bZ09YeyXbUkPp2HBvKX3+NGPlCh
	 KZSKCstf61OvOjXrvg4lBJ8Nj1JpVt4lT+GoYWOsIKmmBoxGC8OQGZ2r2VXdGQ6Snu
	 hCAICz6LH/+lcsGOcpZyxzFi4xxm2zAVEAuXadjFZ/SgFxvdyxFTkQe5MMP6jn70Vv
	 vpuEGbaWkMP34uht2+LtWB+ZVzStzJQ8Lg7eLHZnRfJP1qCbFGfX3Fd3+V3GRSGGpq
	 hV33HNi9BdSUG/7UAOHXAj7WphAoDDbvBt9cLC6jNEBnZEbI3W2L4DhZlI4y4e5Nc8
	 Lu/00eM0ZNC1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96939C83F09
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172493255360.1623.10941272462759749905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a97459c61cafd6110d8c2ea88aa455a4b33a4c8798011c7e87f9b45f751df3ae
Date: Thu, 29 Aug 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724932553
