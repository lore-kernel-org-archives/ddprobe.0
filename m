Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DBFE34403A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 09:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784366914; cv=none; b=sbyGnho9193tvUHhWtyzoqpOBw891EZIAvYFjXshNTrIl7KuFysgWFntfnYk5Gh4n1dwh1uzTDyOFaRAf8lfUJoSOWUDhdBCHnUH7vrvklETCzEXYBI7NVcn0jpbCtneXiYNdX3qo0pOGB4XiVNBTkr7LOyyQQdE2SBbCZil+vI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784366914; c=relaxed/simple;
	bh=UG6TsB59YJtUh3wf8D49QBhezFY1pxcSW9h7FhBM2eo=;
	h=To:Subject:From:Message-Id:Date; b=NnHZKnwllA+NV+ThYw+TTZQ0ZnG2iG7koburvDG/ZQvHZymarWQGmWmvLQubDLokYQWnFHQaVGwio2o6ufzLbj17Isii9b0Z0i5qlqG8m977Wz47rmjZmOu3fL/FDED4VkjH21QH/BudIEKFxhs3okuhIj4/69Wgu7LMAfNDrWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SecRJyOW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SecRJyOW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E2FC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 09:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784366913;
	bh=UG6TsB59YJtUh3wf8D49QBhezFY1pxcSW9h7FhBM2eo=;
	h=To:Subject:From:Date:From;
	b=SecRJyOWbVsS/VdtmiuDbMaJx04AoyyJBGu09zWKDA81eM3SsMlW+TeGTPCMyq0+a
	 4Yfgk1FFfLvcuAAsa7efOnXlG0KQ7jTkneY/bFz9lVMszj2Qa13ie0sR5fdIGYtYGd
	 gBa1DTRS1ZmkWOU8NS/mdvVVzVTJgUBNN83tc/nT+eBdEZr7Qenutq1VMHqKsR0oPr
	 o+AxMXE7jdPHtEcT89CfFnPlDjyekPFctXQ7rNKZyOE/nrn914kVDdpEgraNpc9BdJ
	 5+83lYPJCjME8OdxiHI7sCA+VnCQdsSQaSzLni4Y544BttdreqMQyK33H9IK5TIGmb
	 wVgWLsGYXkF3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC90C4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 09:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178436691368.23112.51959768443950349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bcb4347185d761f161268e0a4fcb4555cccd9a3f07eb73c40255bf9af2b91ea
Date: Sat, 18 Jul 2026 09:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784366913
