Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5091D181CF9
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 16:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720023323; cv=none; b=tiwZaT8jjz+iftZMHqYBpxJRfL76M6oUrp0DlsXuFijMMCaTJ29E2NzIlsTbZ+qEfrs3vL6VF44+zAU6je2u32zR85NCPCZL1pu5aADpZfNgn3zb4ZrPVEPoXXu7+l22HJ23TICxSYTKYl99iviPW+RWjYBKp94wH8E5wNB8n5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720023323; c=relaxed/simple;
	bh=r0DJv2Ui6oRk+hyPhAthgAaPgjEZ9rY7DrG0MFwQocs=;
	h=To:Subject:From:Message-Id:Date; b=M13XREsvvmNIGZsOZFi6Yy36amp6J04fluJx7VgVO3SsRtWSw2o5HPhvZgJGIz2NOJqfNeubsdLeP8TKfVQe/Xd7uW7VpH/vczi6Nl+bZBxKkeJKOBy67HHy3o95wFgDou/rZbAa0nCb4I2kmO8JYJYHu4YKYbCcte2PHUBxyRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hb+8yE6d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hb+8yE6d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9401C3277B
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 16:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720023322;
	bh=r0DJv2Ui6oRk+hyPhAthgAaPgjEZ9rY7DrG0MFwQocs=;
	h=To:Subject:From:Date:From;
	b=hb+8yE6dgsB2QaUp9O+izJcF2TdinZyLvMNWBHOkTaS9cOzJvMQL5l4Q84zRPCE/b
	 jMrfN9weaz9euXcUlBiZo30S+y1euIEPzWhoCMTkGqcxNY9vj7XNGhiGHqINPsQEQj
	 Ey4wgcNkqEI/qfVP883kIPs1qAZo+wVz4DE88mQndiQJgEeqMdD81tX3mOLvfQy1Q4
	 8qCGvY2rzemwY63zZSPM05CZuNMzncXUJbB2h1jZrdpoWbPseL1FPNtqeYfAYDUPvo
	 elCr2ZJ3Vvx8cjTrKepZwy+czow1l5Y97HkVsXvPUSmNtSRz0llTfKX+94aYWquiXO
	 JFkWBHOOeWlyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C289AC2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 16:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172002332278.2438.5601314458477374374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d60315d72aee2c544799beeecd281cdb99b19250b137378b16c1bfbb1be08d81
Date: Wed, 03 Jul 2024 16:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720023322
