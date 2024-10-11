Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C8CC20CCE6
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728653154; cv=none; b=ljZDVglkrtyN0niqV+2rdhfUUv0fE7CH/6ubR+p53i+5wgpK79y3n5vEVxg/9tCQqDXTmdNplz+M/zoRsLtD+VqOvno1sqOsPFE/ur/t3s70tFP4Bv/K/Kub5PnQ1mYHjAlxQx4lwOd3Ke7mGMMhKOkkRdU1Gdn53Bz5BoMwwvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728653154; c=relaxed/simple;
	bh=RTQxEP56+bqxgjFxYTiK877T3AfOgT79c2nmpVBjaSM=;
	h=To:Subject:From:Message-Id:Date; b=enqStRd7GhKx2dXTDonOheaKKN63QuC0g08T2E5lLF8qr81Eif78VokwMtJIYJSR9DXKFnXZ8VdT7vE72q82JTA4pvIyjqZ9YqiBqUng7JzlPk1r0KupbjSL70cnJ3TPrSwrTE87wmx9Xp2GOl8OMJoa/udQJvA4wJQhX6Ign5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CIUJaD1m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CIUJaD1m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4409C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728653153;
	bh=RTQxEP56+bqxgjFxYTiK877T3AfOgT79c2nmpVBjaSM=;
	h=To:Subject:From:Date:From;
	b=CIUJaD1mKE3+DPBuYW797rlkYp/0pJPgx2TTF57Zahv+qfkCDBE0EZFJ9nOc4mjqa
	 CzsrPbkSF1nYorkejaGCNsGmg3W4yjqw3bD8S9krn1Sq8R9QJvGwHx+ldYg6BRr7UR
	 /3zI7WDWHOL6IHwmJLqD0tdJxmu2MRTN5xX61hjjDqF/q6SMrwL/ZWO8h5GE6RlDLy
	 +xwvkZveSEHvjm6UtjY8UiCnjv2CxtvuT8RS9uFOkbbaliiv1PcJE7M/Hu7DLASdH8
	 20s+P5C4scMZaDQ5M7xpO0S25KAb2EAUkBX8PnHrQ2K4ZundOUwn/3DjkH/Z5/WqH2
	 wcN2l6cL6bYnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE3ED0D78D
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172865315362.17958.935082221097558348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f63df13a871ac4452d0c968e90f70b2d869e81583de4e3ec01d7c26080b35ca0
Date: Fri, 11 Oct 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728653153
