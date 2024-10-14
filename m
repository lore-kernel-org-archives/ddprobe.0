Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139F21AAE38
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728914754; cv=none; b=KnPDSPJaaTYgIU21HqBKB8z3bwTKTBfSVieZmplUGtXPkA3NZY4Z6o3wWoHciOgnU4XjP7kK0xxcGsYx1G+65xheMXWvzmoM7DXXs3eBWu1KrVpIUKRYB9gWMiKuVhYMr1bhfiH/oT2wJw2ZLan0SXRDdSkL1AbpgJS1Vu+AO/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728914754; c=relaxed/simple;
	bh=rtpbcRedGz+NNq0aXjlw7TBn8Ozvl4zUwAVl+kYNzho=;
	h=To:Subject:From:Message-Id:Date; b=PygI9G39YhFDHFhnbt8153eyQJeziZaiKSnAEy5h8OiijJI7FumBSKS0F7eGDAHdRfVgmphCbP2RnrION/Cops6Vd+7fCo92wVksLNFPe59AzPL0GzddLUWvhT8vsw88deDXvEAeP0QMyiMstEgM4pioBG7C3dy1k8+cNxiunGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oHb1O9PZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oHb1O9PZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FF6C4CEC6
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728914753;
	bh=rtpbcRedGz+NNq0aXjlw7TBn8Ozvl4zUwAVl+kYNzho=;
	h=To:Subject:From:Date:From;
	b=oHb1O9PZl1nDSWFsBN9crrm79AZlo6vXlBgMa1DHUgizE9LziqUHdIzf7SXU0Rtek
	 wxSEQEi7f6kPBVYflTpx973S9gANKSRvz04R2b3y8HbhQ7Gn6LijjmtnqiBd/kBUdU
	 3aK5OPfOjFjdwWiYB8EudZS/an2j3MZXvxesjvu22rqA8Da66QpojLKTNhWTVKQDoL
	 kIPMAfqcp8VuC+OBD5A78TyUFwX50wrJ27rLDpGS6NqH0Pri1eRrIwSIvdwgKLz+c5
	 zI7TTK6woZiEtpFzLT+48Znd6MWPwjE/Ydehe8RDdEWi6rtrkRN1MtVsUocKi05Dhe
	 +HZImyO2+Y1Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9952AD16268
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172891475361.23916.13532507623726032515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 937ab18800af3b7b8086a668330b3dce8df279f3572ca2a0ed0d9d22d29554ae
Date: Mon, 14 Oct 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728914753
