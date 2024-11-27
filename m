Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE5E19885D
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732740954; cv=none; b=ArxnIR5DWnp1KlGaF4VqpTspvpK+SVSjvFr+5/jxiz/t3aX0eqKVWQaKKOY20j4wW+WM11VL7BNzCXnb4/O77StiAzVtTiDbmZt0zVcwXItVdmbQUEqXYIRIMAOMiVy69KOhjZsJm3EC9w9CyhIO3jy8Hm8q/xkTVXD28sKmgAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732740954; c=relaxed/simple;
	bh=AtnuMRceS1rS2D9egqicymWy5yjFOsTxZ4G9mdrXZJo=;
	h=To:Subject:From:Message-Id:Date; b=hQwi69TfpHlewO7dWVBsJwyA/GbddCuaXZbxfGJI/s2eZlYPT86WWiDS7vP4TIuLq4im2wfVSfdS55Htxbx8gYISN4JuTs+hTLMz4aCC6EhmeSUrYmxuIQDbCOXDVRdl498xD9WUjGA/e4RlS2zcirkqORT47dI7MmqJIDtyJY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FNXKCIRJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FNXKCIRJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BACD9C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732740953;
	bh=AtnuMRceS1rS2D9egqicymWy5yjFOsTxZ4G9mdrXZJo=;
	h=To:Subject:From:Date:From;
	b=FNXKCIRJe5u8AUwb/0PFsTn0d74qDuPdnGOw4o6IMx0rFw3J/HBmUfo0DsreaHF9Z
	 5yo1lF1D1jl24JbkrEuNDGfGtmBh6RmEY7jgSvcdXJkxndB8hAjsMS3UZbwroCq5wz
	 OOm+HpRFxXe6jP10RvCg+jYU9p/24GGSkPflNrWExTUYDH2IIRNYmvvvalyBC9Jf/a
	 GS7mZnpVZKj+wZ8uZHtxRLwLzeDXURoZ18lP9ByvAPxSfagGgw6K1F8/2pZs4bAWGy
	 L4yr0Gkj9noLdA4y2wGmwW0k4lOieTBeQQCrB/LPYUuIgnM2qp1t2C4PUL6TPuvHGP
	 tHdYBUzOFUR+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C283D6D239
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173274095361.22218.2978840782821286515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21f88ade4f07abe96fc6aa5dc66a85bfd1fdd0cbcaceafc287f20fdc1a96fd28
Date: Wed, 27 Nov 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732740953
