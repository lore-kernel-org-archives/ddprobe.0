Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02BED1EDA2C
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771925094; cv=none; b=kL3Ev+zNjy+hvm3kATn0yIz0BcJXFpUh4SZQ02IXn2h7LZUCT5bJs0v6o5JlcSLikwHrMVC7hIiaPGtQBrMGsuMLOnwBVtCQjXCoMLCJIIB2UD3xMTrFxKhqzwANQ62LTzUaRzayqfQjIt3NdZHyA90ZC5Pk69GyrcIvEsplQtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771925094; c=relaxed/simple;
	bh=maXGTXXrj52VQFiUuiM9YFZTO/O6mWY8a4/g8zFNhDA=;
	h=To:Subject:From:Message-Id:Date; b=L6J04JdYM6W2vX6fQ8KeH+a6+ZW+KEE97n+dp86b10OTXOIMdA4NX6M639t87MLqGQyvP6gREoV39nGPuvNAzlQ+20mDMY9ni2v8XyXD0LL672ak5HVTxBnHL8SaJkLl/x3XkKDq13aF3IPxXCrDMwYi70oOQApH4H+hvaGvGg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LL4BxKxM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LL4BxKxM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2888C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771925093;
	bh=maXGTXXrj52VQFiUuiM9YFZTO/O6mWY8a4/g8zFNhDA=;
	h=To:Subject:From:Date:From;
	b=LL4BxKxM5rJ9n9wofO9TgsIyv2CCF3X6Vbf9SElEjw61+lQbgc78tfumBNeFLeXeu
	 2UG2M4TTofqj/6rhosLPEGWdEa0NHBx7a1rm9ZuqeTWdsACwpoujLm6tKP7k0p4VZg
	 r4pLkLj2xn0vZ3vnRcjhF/Hw+8BazC8fWC6XaEPU9UGQO/L+F0jO4w5NFT+DSwKG/S
	 baXr0W0MFOUNAPY9SqiuGl9xvCxC0lxFaMuBHw2webQI5VFILnvNt2HcI20Tv4BCvj
	 a2YzTFmxVGlSc4WA/bgtZQcErzXj/Xm2HddcxuqmBIHWWydRUXi5ySuC5GW1qtvu4U
	 B6Lq1RghMCt7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927E0EA4FD7
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177192509359.28963.757121236469624790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1abd928986472d5d6748578a8189e8f63ec847ee8f470880e71f123d1bfe8f2b
Date: Tue, 24 Feb 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771925093
