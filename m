Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3279922EE5
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726110354; cv=none; b=sacltFTqxvxXqTpmqwROY9ypUNqccXHFFIEoe6Rcttpybx29Zqe2dc8sTbK1ocmai9vQcdB/Sg41Vj09H5ty6/ZxdFeihD6CpRqpiHbw3cb0qqgZ4kz5jq9NPwqcsImrGUD7yGXSm75pe7qpEoYrb2MoPlIQT099hFSBg/eKaIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726110354; c=relaxed/simple;
	bh=rjVW+acUBxei0ZgF58k6+C9GEJrFBZdv1beEK1O63Y8=;
	h=To:Subject:From:Message-Id:Date; b=ElQGkxAQ6NrrYU6eQ0ol10xJwVEqqITg2ugJlSKOXljLUnxdvjEJnVpJQWwgLFRmKHNolIs+PaSDG80VEVznvwiOWW6gc+QW7RKWdfk6A95kB+sr8q42gaadcHVl2qXvueUX+apjhLPsJMvoC3I6oy4OY/No7H2CQRSIhzfY2ZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZipwpHvu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZipwpHvu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6158C4CEC0
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726110353;
	bh=rjVW+acUBxei0ZgF58k6+C9GEJrFBZdv1beEK1O63Y8=;
	h=To:Subject:From:Date:From;
	b=ZipwpHvu5rTslaWySMgSMLc+df3hmusSq4/mtgnupW9KqC2wQDhSC/CvmaRsglLio
	 8qbv4nJjSieyRaO0SusmzLoSW5XMcCPiq2TZaGLP0ZGpXDiX8ZYsCqtLEr92CuAOI6
	 753cvr5ad4iN33KlMvc3kH5f+ZwHlcpW/laoGeTw25NpO9tCcMw8F11mkNRRccT4ZL
	 cPudOETHYYYsa8bcTM3Y+FCKjITZ6OhiuQ2mIdNol+6HRiraJS1t9A5QiJE0FI82o5
	 ec7ygF+wfE15sibNeSIhcfVYQB+8E69J5T8CbYdtr7crwf04AQWi8m9yAAUEQ5yJGO
	 BqpxQVfLcOlsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A66AFEE6426
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172611035364.4552.14104327582671221095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b76bf2173841385a8ed1b30fefbf59df94e921395badc5e034596e4f897ca03f
Date: Thu, 12 Sep 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726110353
