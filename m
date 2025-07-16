Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F055B660
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752634794; cv=none; b=o/tdg9MP0Lgx4gAssLfTimUojLl2nAW4tRezgTqFqdyBd2mMLXKwzRNAdR70RSB6h5P2B6xYC/6yqoRbMALz2dRxSo/XLK13fA7FwbzI4wYMYgJgSc9cjJSrFrN3aKnI2Luj8nphdAv5mytDf8B04Q34gKW/G42ShBxwqk6bhc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752634794; c=relaxed/simple;
	bh=juXRBuzWI409YTiRwZ2EGFCxlXFFxmnOnXgMFB1YIZo=;
	h=To:Subject:From:Message-Id:Date; b=X1Nc9Tol+gHDBGwm5xooISnHqU4AyCidBtz8t9f7Q8fobE7/onIYLi39+nQ208UFEIxVT9ikuCrDdsJ4eUnD5e6JsrX9icldti79WsinUHwOwGdD22woP7IyEp0dhUum0g3LdAjrdnhdDbBtekPFG/4XAij/x+bNuVF4H5yM23Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JbpvhBMt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JbpvhBMt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AE6C4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752634793;
	bh=juXRBuzWI409YTiRwZ2EGFCxlXFFxmnOnXgMFB1YIZo=;
	h=To:Subject:From:Date:From;
	b=JbpvhBMt5sdN+MqbikxLK1Fu2KJMYkfUmUGeHoK97O3l0yq2JuOf1QxnqkFbU3UqN
	 1wprP/wVQ+auUa1WeECzqYcQ0VEwVdeBrzNHNrNX88sZeTfAxI0hXk93QLDZx0SSvW
	 xSdxAZe3tAJNS0oO1RdxEQQuCf4B3Et+erBhX40X63uQGnYAU9w6jAAIfge07kOYG+
	 DD5VB3QIUBVICwrgobIjClkXHetO3X3yTkFpdvFxXzvNZ1n0314r+uMt4X6T7rkg7d
	 PJsQEnx8qyI7aQeSKT6r17QXJVqYPQeiQH4JshuWuj+NfQHyr2a4chAiC/pEuvu/qX
	 9lj7ftkzTO+DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F878C83F17
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175263479358.21120.2341233653958032054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65700833ff05e2eafb81cef1dd4d6ed865523bc56d11ffde0de85bd6619ab4d1
Date: Wed, 16 Jul 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752634793
