Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4D97E56A
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 13:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775050533; cv=none; b=jXn0KP8wd4i9ud684P7LlLZii4ncBld6s4t/rBxhq6h769vdpKkVQNo2N7iKapmBSyyJ6PeCOgW+lESbgFUMiiYOcpxEHVS5/zf9BIOGa07bLb+vV6Un7F/LtNpI3GsYCsnHuXaVfohNkqNIpBUraNQs02rGSpzvOz1SnGGi9R4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775050533; c=relaxed/simple;
	bh=3GSGg0P07J8Pqx+v3k9LLW99xoUOPQfHGnrYHVhr6og=;
	h=To:Subject:From:Message-Id:Date; b=QFMoqN/XNhwjCS5r0UZW6viLpTd14b+TcxmY9AsCEtly8P5Tds1iaml/TqDwmFC8uqX8qYfY0TdJR+n5AGZ8CxDxU4vaCjhch0/BZmbxbyewsDo5zZQFVKvHMp6eA7UA3FhOIdNGJIHhVwxaQS5UFNOwcWv55nrP3MBom6Q5xzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pwkizFFa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pwkizFFa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9741C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 13:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775050533;
	bh=3GSGg0P07J8Pqx+v3k9LLW99xoUOPQfHGnrYHVhr6og=;
	h=To:Subject:From:Date:From;
	b=pwkizFFaYaBIsvg96A9FfTGBb+khammI8WoSdxSSkM2xiQh2fB/CBkWWaHuZtkIbY
	 8fnfJNF4sXww4TX9z6VXHgqOBaGxGDrv96EXE7IZjW9sKtu5vArdckoi9glZiM6rQx
	 FGaFdhCwKmU4QV5OCT1K4e5PDrFGhktr3FSN5pdRvi9GSmMB1xopW6O6I53s7V+TSE
	 vLBemqHG4YvvBjVd+MTTo1cF2PQ+xQ6VE3qzElIyxs9YCM+nlsr4uewVFP7f+EwTRY
	 Y9RxILYkUYupz5vL4ExLTddi/LkzhuLpF0f7bkprRj/ORU8zJ06fGrUdQSQob3votW
	 7g7cof2vG17Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF4ED2ED08
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 13:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177505053369.24392.11879748077494757407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 274d952c99d08a1d45704e393846df3f394d1d1e88d529e464586e58f91b54eb
Date: Wed, 01 Apr 2026 13:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775050533
