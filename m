Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F7C233A6FA
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 09:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765963434; cv=none; b=VHWf84udCWX4quIIcAmp2Q+JlInjQV3Jlg4NAj2DX60gXP9gIQn41IS+pP6WdI9ENFt5SXFBwTQ4OKr7Y934Oe/KUvvWu9ODW7Gk60TD0NC5R3CzL2W/dvbKi9L0jgsP0vjhXHCx4j11v4JrBRg8fBWpj1uI4mzPUqHXHp4qpjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765963434; c=relaxed/simple;
	bh=WvbOq+no5a95PnXrDsgoW6M2r9dFP65KftmN/ic0Z08=;
	h=To:Subject:From:Message-Id:Date; b=XhK1vlTU9rdlRmLgyjz6Ki+zJalFF5ow8FQ8Syw8VmBRDs1Z5/Jh25uwiIoD2p5cWI7sSN7krBqDCfbr1iwSdP5Ud0IgjqcrhZROzliLfT9AAjWFCFG0BZX7UNNBpYVt//q/PqQBFGFB0uN+n5/WgVwMHptL8baFxl0J3mVInLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BaJR53Bz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BaJR53Bz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFDB7C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765963433;
	bh=WvbOq+no5a95PnXrDsgoW6M2r9dFP65KftmN/ic0Z08=;
	h=To:Subject:From:Date:From;
	b=BaJR53BzLykY44h4h9HDT+NcqabeYBkLpBEldWLS5jxa8UUXapuRFHyVzXE/f2sh9
	 xJGWcRavW/RTIhU1+tr7hU/9UwOktB3M1eaUicAjGIuVn+jsN1mRcl1gLj11jyEeId
	 gWRi66eYALyNMzdHPv1sz5Yt0E98Sk+hyOvgScrb4TtES/fhAYY7/Cof5u7wgKazyC
	 QfdzubxOhM2A4sNZNWR6g7H+ccFqgoN1VaEDVJn5e3B6VcRkfoqVKZ9LpiRKq1lts6
	 LuQdyXbulu7i15gKjgc8FJTRldRNOjIZu8jdqInKiUoC9YJHbsJyhyz3+CdS6tILZu
	 kwEu1p6u/3vug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD2DD6409F
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176596343363.6750.4749000917691267718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 392b5fe6c4c3e91d3cdd0b7ebbd473a4787c2608795dde387dfd7a8a688b9229
Date: Wed, 17 Dec 2025 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765963433
