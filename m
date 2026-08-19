Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C6A114ABE
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787113834; cv=none; b=GLXJYonupPRDxoVCbshMDm+fyfeKlbXRTEbY80t6fXfKcW+6VJKzeb0HX4BzqOmvz/jf2SzdWoqtc7Tf7bz74nucABMtH43N0FWf5XZh6eMX7O3jJiiwrj1vlIcUhnGFe/NA02znrO5XXChuY7lphY7sC/wQm2j3v719z44KShE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787113834; c=relaxed/simple;
	bh=cxmvrGCNdTKy0VAk2x7zR4hcN/yBD3FnQtNXox4pxUM=;
	h=To:Subject:From:Message-Id:Date; b=qsBVo4KuF0QHNmLMtuq6JUdXnVvw1vW2piPulgPIE9MvQPc23u/SDHgwm318FWsxiimM5WjXKozoR4VHgpVgk+GKFcAsOzkA/VPmv552okZp2O+BHiSNZZtwHB8XcpWcdSmD2sGF3gfZ7tZzkm+qUBoPxYY6OSGAAZ4X2Hw/y0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jnOIrrVk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jnOIrrVk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE71CC19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787113834;
	bh=cxmvrGCNdTKy0VAk2x7zR4hcN/yBD3FnQtNXox4pxUM=;
	h=To:Subject:From:Date:From;
	b=jnOIrrVkvJ7hamJqFJUtcXCcJ+UbkIv/GyAoN6lulF1JrV3HM/UUndGcBObzCkdJ9
	 I4rO4ivy2EAmp2k7dsNyTbXgfthLPndD6OiZh6MkPTDdJhTsnnEwCWnEyBgTcit0dR
	 BJy0pCIJzcWyaSD+d8qUiZFgFLWsnxuNGV2dDMmvYtZRi8YcC/2rw0mZxk/9lEYDmz
	 IoQZOwZ4P532JS0MUhBVX+HQfoTMecTvT7EqXJSG9d4/dSnoSFwocWqwfIead/4bdO
	 sEFL9ClI4/95WDDWlPkjWIIAgE6OkbR5bXh50SUFdc3KyQSn6Ccs+06q8ffwIwVBl9
	 dwg/oQjKAyGYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAC98C5B572
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178711383375.30327.26251668676302217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd69156fa9e7f6eec951f12d7fbe9d086713575fae5df0e6a3c20ab046c2cb4e
Date: Wed, 19 Aug 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787113833
