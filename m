Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204611FCF6C
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731455154; cv=none; b=NS8RcUEU8QJ4BMZ1Exxyj+DCpOH4bOV2ILIitj9PxIf65qFGTX9q/IsHD2CxEo9SXWfUUlnG9jmf/ITYtckVcHvah8ZUrBgtA0+ic004/9g9AeqHclUCrG8Y0/KdVxTyvA4ZHJe7k4YmMG3qvgtqM+6g+JINZa4RvCXtNDXtFtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731455154; c=relaxed/simple;
	bh=QxN7EEhft/ZvMPZ5iFI54JIuvBbyt96iFxfex217cW4=;
	h=To:Subject:From:Message-Id:Date; b=lLtbKLmXD0yYwIftx06rmKDurSyECsKTHZEHWgJu/Cr7RgkPPAVJilf2Gr5vmYk8BOgXGBYcJJTWn0tg2Hg1onWOyMYBMa9NW/h4kfSygGRpQMvvxZmWi9MPqtLi2XBwMHFTl2js65swt99yZz0UmrsSq5M4IfxphceuPD2BCLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cRIUhZGV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cRIUhZGV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF8D7C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731455153;
	bh=QxN7EEhft/ZvMPZ5iFI54JIuvBbyt96iFxfex217cW4=;
	h=To:Subject:From:Date:From;
	b=cRIUhZGVnhId6JyyS07C+Xh1Ayky3pjFuc+IYAjJmi9DAcDTbk2fzi00phRE/vsik
	 0nPwQXzCsuEGozvl9RC5jg13F4BPhZhrOy5NadNAIPsZIYU+v3g0Bzl834zqpBCgBk
	 PKew8yDwQ1OT88Ej1rXo/QMrnu7FDv/RQ6dV0jK+SJO7cKG5wygoBz6mrp5TPmsnLD
	 FQU6ByF0RAWuYFLaDmf2o2k+CzrYFVYEjgs4Eaju9MdRT/r5HTSvuBpxIjiAMZg2vX
	 UE/uMtja5e5F+4ht6l/gohjW/izOpYE0+ImlBidtQSWzHR6/Rrkx3MamxgmZK3ILKx
	 Yai7lbZVhZhNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C2FAD597B7
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173145515361.24641.115401566908694924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 984723794830fc7c26564ba2dcfb4b87cd0d506ea3e33d9bb0d93dd7cf0a17b3
Date: Tue, 12 Nov 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731455153
