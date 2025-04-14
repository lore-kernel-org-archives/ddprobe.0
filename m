Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2DD1607A4
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744595995; cv=none; b=rJeMpM9sdoEaHpvdLYZ+7hmflmG6zA8GZ39YSLNV5dPIW3LtcpUkkGXSB5pWHzCXtrj8ec3RsSQSn2GTlE8pmUL56tfL9uVJ/OYEYqFuD9NNYXp/Hby64rBKnN3RYNHUA+LmIRm6gDeTEiOYbZvXSX0ZiG1lydAyPAZJdFobHus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744595995; c=relaxed/simple;
	bh=0UkH21ojWq/5Zbz0Vmcfl6IIMdMkKFaqjGQf66bd/H8=;
	h=To:Subject:From:Message-Id:Date; b=QrgHts4gdMHROBTF5QbjBKbEpb94JGWUsmHJMA2WOook/oHwn7Y8dIjSWYAbSaVlBUrNBKHDJsD0JjbObLhAoKvJA0jwXCLZfl7OMTcsXi4jFwb5oSG97VrD9jp3Pja5MKS8yZmm9s9fDwwg6iDhbyuFwZE75wt53ECxjpYmSfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iUGIpt3I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iUGIpt3I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66B0C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744595993;
	bh=0UkH21ojWq/5Zbz0Vmcfl6IIMdMkKFaqjGQf66bd/H8=;
	h=To:Subject:From:Date:From;
	b=iUGIpt3Iv2JEUVhvbGkVpsMbTygx+Sy7bUX2Z5448HYsfydtutOjTqiIQ3KvziGt7
	 3qt0QFHSwEyLCIcZtZrhZhpZQCsK9gfc2nu5wRIJ9fquZq8bd6cBnSUY1ZdpQQHBOT
	 Tzee1XQR2pIgPKrU/E3mThvQueoAJY8CELTLwSFJ7tb9djcbxnHI/woWbXe4ffZYms
	 SCo+Vx7pruXqhCuJ/46SYl196V7CW7W2RO6/emdVM6gEwumdwW2lRmQ3YzBg9h1reg
	 zjx/3XfN0ov2XIO2mLKHsVdb5Nev+lAvvd6eEQyN5N1cXFOb2qPg+am1u+LvGnJpOB
	 jwkHlx/3hZy2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91600C3601E
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174459599358.5000.3047639772342839049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b7363a62879a368a2d4504dbefca4e04468df3c2eacbd163525b2fac653b2a2
Date: Mon, 14 Apr 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744595993
