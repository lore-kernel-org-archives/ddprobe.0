Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EA021A3160
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790824834; cv=none; b=OREJ4y/zTZtIglBayCDYCtuWkmb1GdqmUDllnQ+M5VTxvaO3MdeVuN4683RN2SaPhKdpUQ/TcAuvNn5iUkgXu7QlYGaPhKkkLsj4qLJBWFYS22s/OFkt86ggIyUGHN17qfZc8Csb33C8CU2JS0r/titqqzqjTUz0W3O6EU0Om4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790824834; c=relaxed/simple;
	bh=RZgCLSoGAFleJ6PjwIE1WprLYtIahLm51eWrNY/Xiow=;
	h=To:Subject:From:Message-Id:Date; b=cLY1sRZ21wXB1hVAok487JD4Ulvz3a92dXBkKQPM7qrw0zgUp/fiJkR/tzUWaVkHYT7OgVtCNWzp9F1GRLdMn94W9TrvUK5hyfv9VEAI49IgzutzcYlPf94iyKWyG8/soWkuRwfcMlitbzufhkRFkMxZDP5PvKcKWq+vZL7p6CY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X+tNKdF+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X+tNKdF+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C1FC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790824833;
	bh=RZgCLSoGAFleJ6PjwIE1WprLYtIahLm51eWrNY/Xiow=;
	h=To:Subject:From:Date:From;
	b=X+tNKdF+v6MCbzaydAGuxy+PwCYCK1LcYyjlKRMkbI0BLsqWCZOtdEy4WTnwz/WRt
	 vSaXEmfuFXiWOgIWT8B8nF4nkrT8litmnDj++5qH5YzbgVU6hNux3XpXla/cKgYyDk
	 HKI23bJU/ucwq4izHq8V4eY2v1NMk0IOUQRl2b81IJrPp2qKd1VVZKl2nyiXpC68Mh
	 S1YvKVwIfzvn9tuPmstiDSMFvdypnPJ6Ho+asUXmJ5lct7PsttidZ9oghoz4MBe6Vd
	 MMraEKINOeGjbmYVDU1eytmdhO+mZOiwMfUQ1+DAtUpD2j9UuxwnzqsQCyqfqNSsRP
	 1ytHwupJmQk7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCCACA5FC4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179082483368.13504.17547241835360023460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c3c1bffa7402aba70f4880e3900ea33fe8d02a622176e819461ed4db7f3631d
Date: Thu, 01 Oct 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790824833
