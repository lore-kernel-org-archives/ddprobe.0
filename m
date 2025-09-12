Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB043398B
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757648994; cv=none; b=ioRs0GOikrG40L9NREy8JjkdW6MJdkDMZ0X3IGkPcGv8I6E7uIMJU7k6E+sLeua3IymyUIgT0TdCILNtyxP4ZSSOHcsjuLb/N8iF3DXt9K9GOyso/xvP5PPrQSakNtk3V+/CmwR8Ej8hZfidZ8y2/hFbzYKFg7wD/t6OelZGeNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757648994; c=relaxed/simple;
	bh=VU+6F3p97JarvobTtmLWoUVaCqxAZPwqSTzJp/uuim0=;
	h=To:Subject:From:Message-Id:Date; b=nZEvTQJKrtCRbb6AKVU4+3xE6yY43X4qh4x4EgwqhQ+abmJYhwRu8DRvQDUxWbKKJpwQ+SMjTQJbGNKJkiS29A1Li96qKvzMu9HoFIm8PvnnPvPceA6iyJHuRqwQBaTVIm0IRxWoyPxR/Dqn3S8DdHUe6QXTcnO8+Gj6fydpfTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IGCychNd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IGCychNd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A139BC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757648993;
	bh=VU+6F3p97JarvobTtmLWoUVaCqxAZPwqSTzJp/uuim0=;
	h=To:Subject:From:Date:From;
	b=IGCychNdxKzouHxq4cNtIlxyrGS8YFnXzIkj8C94DZT9SFJnnZt2v68Po1tyVTaWh
	 lDLEyY8Vs1d0RLuwTlrMJK/GhYYuwwA7vqRyM/PSOnrcfCvXkniBDUR7JU/yZE/qGy
	 FHMXOyd2Xg+4qRS026wiDc58J5+FUJT6PJiQKRLGO9cSi8RWDOOlgAESeNeXUBFsKq
	 b3SUb6YMkRVl6kyw+YKskod1Q84FW9A4CTdPrK3e7CSyAmBGgiNvqIGDJnk4qaKkQu
	 4KOMYbAPTypODx1LghSzrEXQ7Ht+ITlsrtPAtOdtAoA7Qe76nzeG1UHfcBfj1maCAq
	 /FQfA4Cs/p3QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFE0CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175764899357.28110.9084548129185534615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b0b2d47eb298d1de5cde3a78662dfb896f92d48c195b5bd85629ee83c9c824c
Date: Fri, 12 Sep 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757648993
