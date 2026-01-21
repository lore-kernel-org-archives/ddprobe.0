Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E241325490
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769012634; cv=none; b=nI2eeDGlNk9A4nYwx2fT1GhVAB6ImoQH+gEPAx/HfWNXjNqIf90Cs3jn5Azq9ks4+0cUc64Rl/NkujqENGnMPT864cuw8XA8KsPdXF1GG3fzzucnfEx0V4OWghK5bWyISoCkX0f6t0vk5hE50yASvQ8k1n25MF4RgiBIm0+nBzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769012634; c=relaxed/simple;
	bh=m0l4uJsEEtg0ptpZLtcmegbOyLstKXQVv99S/FystBQ=;
	h=To:Subject:From:Message-Id:Date; b=B4xeBopRetfD+QdRJpjFaJ0/QF7NigI3SlNdYyhXjmYU5m0QbGmha8SsVcHdFQlzKPP7z3YMbdliBREh5JKldX7EqpFpfgSuvR69a616yD1Q16/Z7Ro/c3kcWfrW2nz7vOvIM/W5IJXkolN58CohpIlxbb0JwwegZsH3/t0QJrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JBwT/XNd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JBwT/XNd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F371C116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769012633;
	bh=m0l4uJsEEtg0ptpZLtcmegbOyLstKXQVv99S/FystBQ=;
	h=To:Subject:From:Date:From;
	b=JBwT/XNdSTv7VulbJlpE2E+PIsqwZWasFVG+bbB/IdrguXOwdruA8kZjVF1FAGmnZ
	 F03JjiHZizzVO7g1JJly0kfb72P0MqS/7k6w5DUT1U09Itfkh4MAduezH9DS/3jdCG
	 gn3zJMsd336h/6ivqRCmJGtxbd6G5KM7W7hlp+S3nS2oDrRoXMS8Ea5/KAWJEWsega
	 1ONwsPkk2NuPdJGQL2Dcy8T9jbtGTDPe+6c3idCrX2UIjNCGuoQdQSqiIZ6xTQfzRm
	 M6FByydysPFOXT6IoVw51rIpS9otmtW1aVQVQ6hjiA7dA+3RsC+AZ0oV2GsOvnCcPa
	 wFOxvOXvXGOrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDBAC44536
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176901263357.22343.978832953567121999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 121725fd3c1468ebac89808a3a78e6df4aa8c0c37c3785e0dd0139ee4bf15fb8
Date: Wed, 21 Jan 2026 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769012633
