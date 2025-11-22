Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25403DDAB
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 18:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763835114; cv=none; b=RheDDpAf13pG8hFNPMGi31iBgih3gWxf7QMRozHnETuBTl5i2f5fRAgVOQ5j7LXgOdo+8OtnaZ8Sfq7DjRw4qjFbFkEMWOytlUD/jnmWSSepoBu522PXsXxOBnKr6qkejf3vkc1CFu7I5q8pP9K9flm5HDxMl9ACrwgd77khd5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763835114; c=relaxed/simple;
	bh=6SeLVmnP1JYVBEWaXkm6zswOYWusjBdCszCHTherQ8A=;
	h=To:Subject:From:Message-Id:Date; b=cHNi9YwcMYX8PYGozTmevDjJGjFRhr/Fo6Lxn8RwkCRZxa+W0zCxCb4uxP+BDxSDBuwswXLNtzo/7KjCAkk4f5sdyJg2wZtcpl8R2mvxFU3+X/jSU78kwcdXMyVSohE/T66hx3eCo7DVyS4bb9i/m22eaT3OJ/j5A3iVjsrMTHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ng0aSiHk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ng0aSiHk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36B8C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 18:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763835113;
	bh=6SeLVmnP1JYVBEWaXkm6zswOYWusjBdCszCHTherQ8A=;
	h=To:Subject:From:Date:From;
	b=ng0aSiHk96W/hEm3P6n/owt4QSor/oPlYOwEfB4QVF9hNlcrob9TNeqCsn+Amk1hB
	 lpKndVu5msNzJzJM8aDpQupTYFRS/Wnus/XBI0EOskzI1d1oeTNopEHexuJzJpPqSG
	 pARuyGdSjLUDrpLZ/6GtJHW4HZqX/ijRz36UM9R2kIh2Uaeze56AHL4TF33a/Fx9mS
	 LP2kZAhraGKH1q7fuQvZarQ6ksG0sosxyCJJyFWvZdLJtIBrMRrFhDdMSSsxsaIloi
	 ag1kydB8izvgR+EeU45mLHDlBHSXjSMwsYoMXbcWcYYiYdR3K3RQJQx5Wpwa4uH+p7
	 dgYyY+xJALL3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EDCCFC522
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 18:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176383511358.29048.9271047440520465349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 464ffde811b022af2f304be2786dfe913fd921d639d1032237447e76f40cc750
Date: Sat, 22 Nov 2025 18:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763835113
