Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258132746A
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 11:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760270395; cv=none; b=skdkIttqNu1sg8uqvzGxjf9nX+iahUwTKI26wOeSsS6Jp/2IfaT2C/ZVmZE5xmSPArlucAiW+HzIlm4Ddm5YdSH51fwg1QDAwfzP2XomiRPM5jfL1ER+gNiPmbIzx1Oedy0KFiOGtVy8h0SYuSt9+qF3rC4wty10CSlea+jDnj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760270395; c=relaxed/simple;
	bh=HbVZhA4rdfspMSaIg2G/jeX+8XLRmPB23CIG5UTrVPU=;
	h=To:Subject:From:Message-Id:Date; b=bLjhYxnBkx478Q5fPoJR8oo3Yi+VBNUyoTHzi08IKDYOMgu+pl5lNq2kPZzB5YVj/+9oxb2rPqGL7K58N45YDYtxdP4IJLgxfYv6YIMuHKe1oB2qi6mmKXjIFklM2tadkWpUYM4HsFcaPs3pALL9qpkhRhYVMkxWSnj2JQGjc0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mLA6BrRE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mLA6BrRE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5513C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760270394;
	bh=HbVZhA4rdfspMSaIg2G/jeX+8XLRmPB23CIG5UTrVPU=;
	h=To:Subject:From:Date:From;
	b=mLA6BrRE7d5P8WdGIriHAQdwI5WU+rLhoC0iGkOzuPBE8flzUP1E20r2OAqfMnBqJ
	 3/25ck5DsdY/9mEPvFqMz8+bJZTmWYRkgmaKtc2OaPDH71tso2SSthLmGtKR0U0tRt
	 cZeZdsOk/FSqj7JC/3RFu8M8pTclk23IkbiXYN5qQ2vPYpXXGtew7yPeDecqL3O6Rm
	 vesWlHclxlOG1gqwS5rXFIASi7Gm2bLTl2TFp+04Qy+AcHSpBrpPa8C2FLIzgUVIlo
	 LRofay7fkvU3FtV/I7vz4a+DLOg8khj2sUjx2LI0j0+hyPRvG58DBHBpu8IxFqqnpe
	 4uV4JCJ/jUBVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93975CCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176027039357.8367.4399152194672196785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10b766dd181f9c842dcc56ffc79de5d1002732b0477f47f48e196724c4da9723
Date: Sun, 12 Oct 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760270393
