Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216761EF36C
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751342395; cv=none; b=CWL+Mgj+j7u1oHFGDzjy2MG+dx9/DOnTxj8hW2RRu2sDcII2y0wVsjwuLWWAvJcaHEtUuAmLWZuVaopfSENqOgXMEJgV5SN+yHPm9Lb20JEEvJDhlrAd1EsPSsPbI4XD02qMW82EX2Ii3govqqphLaLm9ap1rSOizGxyLf2p6tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751342395; c=relaxed/simple;
	bh=gdEnQnpIoy3r0LR6WKXovErYrY/K3r3BGuLCLApYuX8=;
	h=To:Subject:From:Message-Id:Date; b=lWvfqofGvNWNVHg98a4Ugfphq54tmvvwPel59MP5qaHwdqSn7JXvI1Tjdin6CKNUkMnLLg7cBHQQZ0q283wjWN6bbjxHTcvyBnLIbOmGL734L9kuNc5QVyksSmtPi5kgt6xKODG5JIB95J0n4cUhT4SeSucmNeMY+7MRZlXEUUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cbuW2wfK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cbuW2wfK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BBBC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751342393;
	bh=gdEnQnpIoy3r0LR6WKXovErYrY/K3r3BGuLCLApYuX8=;
	h=To:Subject:From:Date:From;
	b=cbuW2wfKlNXMoey1VHR5xojfEPTGq97M6MyiKkh3RjCTmIv5FbYkIVJn0EV41vohy
	 RZ4jQKe9N6wyUWk0KKmnMN89JhJBatunoTiOA3iYljX+fG0r4Sq2i6J/IAkLbidYj+
	 3FiAQ5gzR6u362bhOD7It2zQmy4YR++xj+rmKDz0WGozIXSYI739aGH8nxGcTzB3Rk
	 wvlXFKqUyG2xcB5jSGqJIQAsweTgGga37rNCGDrEwIoq6m2S8Kg55KHUF/+Bx4GNmY
	 HP1IG7EpBJQciKhJDg5aaz68I2uYupMRH1LmLKf2viXonwcjBp4ooHwxLqVtIdTe4w
	 rz0I0JQJuXWNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D66C7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175134239357.21170.7189753199029125411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a60e0dc67803281075102abfe120501f5bc3dd030c1270754b39c2a1a7dfb54
Date: Tue, 01 Jul 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751342393
