Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13DEB7465
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711274297; cv=none; b=qbuYCUOritsOo21esl22XT9C+Byc4st/q/3Qi/Ypiyy7zFWpBh73T1hQzYQBKSY7hB0QweFAg14EHvayLTAr8DGArYjIgLaL/ckiq39TfHh8dM/hpzqSPZl6YGHn1GnC06iQqqEXZ2mNrD4+Jpo7Avrv0Y3SS72jZWPUtbxgMLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711274297; c=relaxed/simple;
	bh=Q8NmvMeFfyaktp+WkypiKPDAmd2PWrpexLd/7mmOKCI=;
	h=To:Subject:From:Message-Id:Date; b=a8lwxmYCOpy+pmkv8q7KjXICOZEflE8/TBVmkxOhkff2Q3g9/DOQzfvzAz7z06ymcFywtgkJkwFi80Cay8bMURs4JyRhGkhiyCI4OaPmFw1dBLsqgDExUglhZTRkQmD0p8BblLoDfahOzDRMrn3QNu5z+QeTK95ly1bsvwrlWkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XwcmzNr1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XwcmzNr1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90ED2C433F1
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711274296;
	bh=Q8NmvMeFfyaktp+WkypiKPDAmd2PWrpexLd/7mmOKCI=;
	h=To:Subject:From:Date:From;
	b=XwcmzNr1xjs0AEHW0+/W5UuVMB7z/lZdpqyOEJa72NjNiJmT4eNi4yGgA58bvc7FB
	 if8oMxXt4lfIarGJxKN1KClFQ6E1MP/WsZp6uTd5FtZRF0XQYfa9t7/qFsZD7YSfNw
	 WZnVJBjMnogKiboYFuFz50sTooLBYaJWef50WWD6cGpV6z7ljquC55CdR1MA6TnOEi
	 Jks6ApWc57s4F7o9xcdyBuUCUDrLETO5TxXm6siyV/XlB4vk2+KYUgfgB6C09UdDtF
	 u70GdG+ARHb3wjRDwOmmu8Sbqg+hgFmEJyLYS8lpHl8AguNe15cezxOB79WiYt/n87
	 t6pQPBXPmdvVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E2CCCD11BF
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171127429647.10131.9725324692619588265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45e8123b1218bfd86165723ec53baeb4025e74544839319c46f368de145ec73f
Date: Sun, 24 Mar 2024 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711274296
