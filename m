Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4759757C8D
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 06:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719815063; cv=none; b=uI71dWoleb1/ruK4GinTJqGkFfRmpHu+pmp9eSTv5U06JiTMsrbTiSfhJupL6YeNOQHJjcGmM0i76Q2PHO+7t89jR2Wx7AlVaPzsxvuP93kTso7gHIpO3bA8vPtEU9Qpbj7DGhB91ksNrBgW6UsF+paF5+4bfW1R2/jMWYmi2rU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719815063; c=relaxed/simple;
	bh=CHhoDfCp1khASvGWWzsQ/XiSm6D181AQx/vKhhqhIIM=;
	h=To:Subject:From:Message-Id:Date; b=KX0rl2M0V3vJmPa0NQZiy3cWvd4tfI5McCsg5D919kMPdv1V7LkXPLe9C4ZVv0l1S7jV1VgFLJetoqlweH6neTXXxKIE78sbrt9oXYPOyTeCqQG7s9B3hCC9YQIm510gjykJUUWii68azhxhZDacWiq/GDG7ckAMyBsU9oSi50A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PDXG7Ob6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PDXG7Ob6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D483AC116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 06:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719815062;
	bh=CHhoDfCp1khASvGWWzsQ/XiSm6D181AQx/vKhhqhIIM=;
	h=To:Subject:From:Date:From;
	b=PDXG7Ob6RmVy//BMWF+Gd2Umso+H+8V4KzjB3inUiYhZjbP7PXTpV1HboVGN+aaN7
	 JUEO7x1Kqiql0Gbd339dvjQLhw5Is6TscXkYJ/2l6FYV3Y4f77Wov5NyA8KJSuf7aA
	 UpxektC1BZ7gC8a01XUhksvk0sd+zJ3r7tLUpUMLs5BOUZkIl1AfZIa+ws6RMLw2y1
	 vwY3vz79+umRQO9lEMInImzF6jVRwf200xm8KuagYiQjn+WTv5nAqVGJ1tX2ImAu48
	 pbliAAh3/7TdN2ihOv+J9R5abcm1SBjVVz5P1a4EGCh4Wd9mh1pZHdICjbe3np4+J8
	 y4uHYzWZ87Cpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE38AC2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 06:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171981506277.11512.17722021889395479248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 812f9f3028ecae2e71d15903b26061dd92bd9c2e57b45576e4a204bb8048f801
Date: Mon, 01 Jul 2024 06:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719815062
