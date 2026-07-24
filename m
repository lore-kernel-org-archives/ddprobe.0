Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C8412D7386
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784872834; cv=none; b=RK+WkuXFJbuPgD2f5FbIxhRSAvYefTcYqSqkira3GLHmXyGn/RXkNKtvkoiELSDZ5TgmZIvLAbtmWSx0CW/W1s7ftHGsfQ0AR64o8vXvGkSSDmMjkhB4AobziSIM56fO8bvR8PZn10VTCY/EzOGtKQfhAfZq1EMHgGwbwyJnpTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784872834; c=relaxed/simple;
	bh=yZHlS9hnTZKA4QnON8eMhlFGfZFckPXHe8lxY8udblQ=;
	h=To:Subject:From:Message-Id:Date; b=NKoYYd2E3qPV0J5K9M9dz2wt2iEDZuyeiSfLeyBBtPk/QXOIqy1+lG33tcj2RXR6b955ydY1ou6k+zKZ3A/UMBObJAmZkfcSTXKY8iT6MIchuBs6A+PLs7u3Yij1WgEYgpuUFXcq4LjnZQ62ivjtR7jkCP5OJKR08HZdTaKa7BI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m4yDhisd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m4yDhisd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF1BC2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784872833;
	bh=yZHlS9hnTZKA4QnON8eMhlFGfZFckPXHe8lxY8udblQ=;
	h=To:Subject:From:Date:From;
	b=m4yDhisdzgSuqc2PagMEjqZ1kw8g2WPMBLC3NKhWaxy0S/3/ehRmW/KlDGot+adRp
	 MyAlcFM2s92UwXiaVWdiFcm0/e8schjmCXrWwY6u33+kLG6vFzieXru2JJlHipLQzi
	 hsib65ZZ6lNne3ALwY4hYWtCW3LmqLoWH1zEn2AdiWL3MORFa3YpNodSvCn/GnsEBv
	 SXXZ+xfIwG+s4Prel15+j504UvmRX4fmH7uYem64LXzyOIFEJYBKYtb2+b/dUOnqvo
	 gfSa4VojH+uzjU5X99FMZUEFatrMtycnZxKlTfZicPi71iacjhee++ITw9sXX3t6mV
	 sXPh+806lzaRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9822C531FA
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178487283368.25089.9685193963245539745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 772db5844326df0f58e7fc58f73a97a0eff7854026f48eb60e1fbf99a1ab99bd
Date: Fri, 24 Jul 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784872833
