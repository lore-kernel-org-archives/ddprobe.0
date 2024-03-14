Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B848F7A
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 06:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710397097; cv=none; b=QVI5ia5JiERYN9mxfZL4PgOy539QPtkmVo2kdS3Cr2COJ5Jw9cUlzkmWVPt+N04n9TwYZDrdNMe0gkrhdywKvYKBOsu49KdrtJqB+Ux0+EjfVtmBRt2hGTAU0IX/NuEul40HVq5YPp8RT93/58Ax+FAsfGT3Ut7KSWfW9Bhy1pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710397097; c=relaxed/simple;
	bh=kq4QCvDhRdvZdhJQ01RTT0SntbLuYw78scqjzdt7lbM=;
	h=To:Subject:From:Message-Id:Date; b=GwLkqlZadZG+RIz9oLSIz4LXARzUjEjpTKvcq4trPxuOX4mb1Q7yV65DDXbjcbgfOst0g6tfpWyBFKAdJmlwbhDCwb5VvjroyRRjP3nSInSGs+zp6qb5mQ95KhdvrJcHxyx6gSed8qNNNdL7/I+EGTrBkZMMyDA2ahAHqtUI2zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mZiGyY5K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mZiGyY5K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81076C433C7
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 06:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710397096;
	bh=kq4QCvDhRdvZdhJQ01RTT0SntbLuYw78scqjzdt7lbM=;
	h=To:Subject:From:Date:From;
	b=mZiGyY5K1FWzlr5xxmfyYUNlYwYWcIGA83RKLxgJYw1UA+mEU3jOwR5Dur246rwWO
	 7JourGcqKjHw/2+/HjowffBbo2dmzbxsvJhb64hrH1TF8+Y9V9EzDT7MOBmaL3J0hP
	 dLZcHGXenKEoUUht4qkZzKeMVnVg0faqBkcnRXYE+XDTZH+MXk1t96XkwNXS8zu4tt
	 bsaC/DOyIZujKmZn53CefypBhys6jUU5v1LIZyRQJH/SVSUfwHszdHqqXo3UIAlmcQ
	 JXP/VAP9KvBmpJZjQBfDEA3yP4UGY99fM1aWWoi0WBrPeOmcHU+fRpRdqm8BH4YqCz
	 +fKYwt1MFj/cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61EDEC5475B
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 06:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171039709637.2459.13547124787542536415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50edef30e849a2c5702891932a6ee808b163a3233ed1c4def94687a12a582a31
Date: Thu, 14 Mar 2024 06:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710397096
