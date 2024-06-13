Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C31513C838
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 09:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718272103; cv=none; b=sW854tDjEyd7i1ksAnv1TLByPcsGpZKBug8MIn3lLiQ5iCvtvYVcCRhdqEJDrSH5XM2BKjRwI5SxWI61Jdp93IXwiV1qqsSz570ppvp4/HTWYtB/GnW3tH8x+1n4wku2NbHjPhoDt/TkrVmYdpBZZoX4I1H9gvPiX28i3hMmXac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718272103; c=relaxed/simple;
	bh=ph7rvV/B9rXOZ4h0wTIl0RfDHSZE66u+UYggg7vHFEE=;
	h=To:Subject:From:Message-Id:Date; b=fj50Op0BXL8umD2dGpWNmGLse/widVqg+YJGOZmSS6q5MBl7EXi103ZDPBnBqjAPGhHxeL5EcWm0mu2rFs9BAwEnV6Cdarkw2ttttIQG3UV3Kp+zNRFx8jmunNfD8RXPdc6VqtQC3QpEKrpo0lp2zatjyyrARtfZvvcJEz7N0+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jkBeFyWm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jkBeFyWm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8112C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 09:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718272102;
	bh=ph7rvV/B9rXOZ4h0wTIl0RfDHSZE66u+UYggg7vHFEE=;
	h=To:Subject:From:Date:From;
	b=jkBeFyWmoH+Z1FqdzR4nhHO5D9HJfK31adYFfI4uJubjAtXEY17Iro45ZM1hw0sx4
	 COdaeQ0sbKavb/dM8plZDWYc8K80PBVqpWLu0yw/Ws1fiydCkCmC44jOTik8H+GFJC
	 uE3AHsKmk2VbWTJa87tqMC7T8/aeouMzT/zCfmAFz0KjsTRQ1HMxLwCsBQA8SryPU/
	 QRgSxAJ9Q1GxVo9MkpVtOBAmKmCu6+JwEU/fwcMrWQ1XhwfQY8j8sKx4h+xLkdOKmu
	 CFGjMcVux8eTpLq6nN5wiF9uly6f4eQOIoC2vQSdJJdZFnIva7wdwF2mtTZo8wo8ed
	 XwIDtt4FPj+dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C32CDC27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 09:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171827210276.5577.5632861588576946721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31a196975525e48614870307b7118f1907c64877f3db3110b36bcabb8ff91a37
Date: Thu, 13 Jun 2024 09:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718272102
