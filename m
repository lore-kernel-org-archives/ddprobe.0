Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4A9395AE2
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791862234; cv=none; b=soCfmXjz3kL+NGbh/SmE5TxG5mmsbjU9aOVq4ZtNE6trL36csrHoVBqoH1YZm3KcEcZbpOF4BVsIAhptebSMOUyW+kFeU71bfcGt2I6M/YGv3eNCs1ou/8af9BVfJz0Jr74zrc+q3XaNxDrxzf7S2h/Mz91nYKLgnE18NGrRMPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791862234; c=relaxed/simple;
	bh=9GQsQ4awpA4cyHI0KcB5iG52B1EMYjeRXpt8ibcafUE=;
	h=To:Subject:From:Message-Id:Date; b=GZGZEqdMJpm/YI8NluWr18BpXz/yUrPujErNIvVbQuvxjVVE/EgGxT3LU5ss8kGcxD/30d7Fq/HuuD0TUm6/6+n+Upx7NKEi++gaOnBZP8hvfXnfsluwNolCFvp03yYos+YuR+bTqrbxOSWy4KJZgz84GWJICITqWtSnVZh8oFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JbDuHSux; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JbDuHSux"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D01C1C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791862233;
	bh=9GQsQ4awpA4cyHI0KcB5iG52B1EMYjeRXpt8ibcafUE=;
	h=To:Subject:From:Date:From;
	b=JbDuHSuxN3VRY2Mrzq6LNMBt6JuyB0EpOnHi+1MI5zwUQBw72b0BHFFv0/3VNlUjK
	 Z/rr+bq0Gyx/eSLWAv9sclyE2+iHaHWIWfyq8nTLv7bObyFt1Z2SsArkP7DPQdNmwL
	 qwaaYHRJyVzUh3vl4UGN9HNVlIqbXPSoMC4zxht0J48Z9TfkjOgBcGob/q+fmoQ7EZ
	 B4GarKM6RCE3O1w0eKNcxd2TSj2SuZokld1kzrgOMFYgN3EVFhpWEcJnesq6Q0orMU
	 KpL1Pe1DEAwePZ7rvDVe8NZoIoPxlOBSo7NS8djAaZPUwOgoRZkVGnbJ46gCVsy/Vd
	 n6GnVlxFb6zUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB378CA9EDE
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179186223369.8609.1255525961825872709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f09db1cd92763a30ed38fcc14b168e66ed5473feb36a02ef0ec506187671b36b
Date: Tue, 13 Oct 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791862233
