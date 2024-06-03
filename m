Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E25B364A0
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 05:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717394123; cv=none; b=YZVBSHPpplIAj++UJpTFW3NnAlCsVVQXOZpbvWNy4/rT5mn198Sc66b71nBu/n1DstHeMjAaX6HRIMSAEmOJWcWSb5P+iEtlC4YGa5g15vv4IlsOAUcHOX+NJWFaofW5fWt8R7cCPTN7uV0iJcMUV2NzB9rKl1RFwMo85wcnkqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717394123; c=relaxed/simple;
	bh=q01817ib+GCxyqkjE5H37mK2ygGzNDbsrzhI7GMzysM=;
	h=To:Subject:From:Message-Id:Date; b=iF4dX8oYus5/10M3vpqc+AfYPRIvjWR0x6r95zwzZ9wglFe0bbnI4zEi2yNTu7K4y+lsLFGWCM62TPR5g+7W0NNUGN09ANJtg2CH7d4flYh9dakgAsfRiFIVxR7rDNfgZEHOKQW4Y1fSvPQinrRfbe0Tz//zzfa64nz7Vz8TO2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JRTOsH6W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JRTOsH6W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDADDC2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 05:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717394123;
	bh=q01817ib+GCxyqkjE5H37mK2ygGzNDbsrzhI7GMzysM=;
	h=To:Subject:From:Date:From;
	b=JRTOsH6WMT/gxnoBpnGNNgD0Zs18FVqVLZEoSrUAv5D536ajgZskOawc7KDOmXIlD
	 88MaJSvIqWp6smdY7+tiDvggEggXZil34P65OdQTBCKFoONnYr9z52lOm8B4RVwxnb
	 S8cbEP1W1qHlYdQyBLGQP1fhBMzmsiCU+1Sp4Goof/ei1fGTqHo/uTEGQPl12vxNsL
	 G9aUTjHzaomsL4wkRsjGvvAf6bGjJK3t5evk04YAKKXs0OnHCzu0B5RJ6awzpzIS9r
	 o9kbnrvM8hgVEbZ6XHh04Pi65KDS/lipFhrX7fxvJO9axei31MSqWyCFahnX5Rjgjb
	 rIx7brlntIlOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D532AC25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 05:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171739412282.16476.7695501873599409516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1de7eb91870a45bb8f6b04ebe356258b82023270d49efaa45f8367639b97fd0a
Date: Mon, 03 Jun 2024 05:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717394122
