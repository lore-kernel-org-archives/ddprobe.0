Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3727A2AD00
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743220194; cv=none; b=rPkMYn6Ktflds1E2mH8aqhtnsAOQ7H3T5SamLMrx+u7f72RcV0cbbKGGHdBEB1viOaBIdkIgWhQPcEHh+/Ac9jCz81ctZMUKnWEUF9I/P4mjB7eySNkaiTqQUCgi9eIsdE8Bhfevtoa9puMrF0Kn2BkXHrQ7omuYFIZA2bSRm6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743220194; c=relaxed/simple;
	bh=w64p3hxz+ZAvDFE0vYbqt+yOpR4nUhxKhpk37U6nAZk=;
	h=To:Subject:From:Message-Id:Date; b=X4vr9UHpFM8ux4brZWjfIMkqdNLO/YT5EfNksoRyHI+BSsox3T8FLgIV/4CURwK+KuzNK/up2zRS9gorsGmRMatFYSjVFXxleJtvMarYe7s1PBQTWgHGCDN/anPG/wcg7oQZQDg3/LOusLaDncvBzULzswz0/hHaCa16OT7Uu5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=daTiy8wI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="daTiy8wI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B57C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743220193;
	bh=w64p3hxz+ZAvDFE0vYbqt+yOpR4nUhxKhpk37U6nAZk=;
	h=To:Subject:From:Date:From;
	b=daTiy8wIJzB6bjHB1hW4AU/2YDQcX7HT1ECpRHC/en5OdpIxvOkTbFkaGMDC0m3uZ
	 6fXhFbZJyWJlWv3qDqAOM271xxG/kvEKa3loMZ1+rvHmz2y7wRioBBU58z2VqNawOr
	 YmGz61PIMfO0cM3C1HGYbtEC4qU0W+lyQVG5gjUZdsMCRfsSr0QMThqQWkcawtEOj8
	 E6j/HXGtbOj5Wtelx08vbPHn+dYYPJdcvSAMDr4si1FKszX8cSc0Lf1japue3I9u7G
	 4AnKygdpjtPqnI85wggkfx72VwGYR6nLNMg2dgDYYo4djqMxiyhpTwn3LnVWuh0syG
	 qBQmtC8vhjqUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9069EC36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174322019358.30330.18298396429947193376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f55e1edfa61271a7ce3c88c2becf7d0f7669053d788a7aa79b586b0ae404d4c1
Date: Sat, 29 Mar 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743220193
