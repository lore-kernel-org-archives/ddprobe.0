Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6C01362
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743553194; cv=none; b=QGRI1bg3iV1z+A6ImkS7FpCRxuJCL2+x6ZShlXQ28eLOr8A/ePGnUwcGd9qfpKg/OkyWD31NfzyCz9fQCBNB2lUkuUe5JiXVmvd8dkAu/fIvfNpxfX3ma3ZJdjt3qdD9HVUHi8Yddz3kf2dwaa8OV63JxFFaZ+0tCSe7NEOBhG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743553194; c=relaxed/simple;
	bh=8utvqSwBHf/CV4W+XOOhURNnR+plqcfUAbC1eE5h6sw=;
	h=To:Subject:From:Message-Id:Date; b=bPx/wOVsfth69BzPDce+SolfH5ar7ndCNWjMm0bGRgkob6SX3cTQosfpQIJk0pgAE6S1COxpT6k29GORccXj0iWMSDBnrkSIkfLq9Kt3+2QY+w+VGG+Xmu1REiwZPeNBkkcC1z9alCfgRhQRoIu4mYM3MWD/7+1fyYZFiRJPccM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gmYIJNhm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gmYIJNhm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4682C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743553193;
	bh=8utvqSwBHf/CV4W+XOOhURNnR+plqcfUAbC1eE5h6sw=;
	h=To:Subject:From:Date:From;
	b=gmYIJNhm/OfdjIzydnHdjvTMqDDMkSPOz2MbEwGNT0POfq2y7gvUc/di2IIoVMcqt
	 T7h9jPYi4QeWn8VPQjq8F9JIWpX6cMJcKa9Uw/Nxee5c84mbsDXWgMfZ5DCNHbXmMq
	 hST5KRYqgSz9DNVC3mKcm0Wfk2EYXuYfDaUyaONY2TVJzVSpIjtyBWWmte5/ZpWVyZ
	 aIJGXHshcbixGGTUFEKhR33xP9XVfFm1yzUUggYvb9OSrmmOjxXrdnLg/HGsdGZcJz
	 yVebKVB1KWShTgqBuFK6DNlilpjxD3odGQc8Vs5eTYOtNvPgirFNEfpDIZxCv0fway
	 NmFyIhcmJ3YHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93249C36010
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174355319359.1550.15821586377554020514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e76880af106abd054b8d98476646eccb4e02e40764eb16531d3ee553dd7b6423
Date: Wed, 02 Apr 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743553193
