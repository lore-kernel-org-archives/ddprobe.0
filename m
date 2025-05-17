Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC488BEE
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747450194; cv=none; b=aZyVA7s8MZMQ2uGwJ0QyfaOg4tDCFt+rz0/NPbjDq6rWUbjxdGu4IYMiLGBxE0sRbs+nzmqh/Xa0Gc5TO/HE+Tzsdjp9kBE9KUPphn/e52OAwQFsseI8azodH4UlXDumRbE0BB/84X0EJN+XKI6bPGgTdWVf6VGlFJDytE7jTeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747450194; c=relaxed/simple;
	bh=kjghRjVS7pSGIP49ep8hwaYd0yQNlKdPix0iBYZUIAw=;
	h=To:Subject:From:Message-Id:Date; b=of2t8JMfVo9JIGZ4JGpAw3cvDJnTskDrEOjyMI6U+fiqGpsrqhasqtaHLe9bnEeaSZhgUXGAiW7fdmMmkC/Sjt8F0aUKuWacOUmlvge8Py53JOu29SgMrKSSH/6RbGPrezZKXIhFhIf/+753Nawvzp1zXv3d0gpzWddTyE/vvl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CqzpEN/0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CqzpEN/0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E63C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747450193;
	bh=kjghRjVS7pSGIP49ep8hwaYd0yQNlKdPix0iBYZUIAw=;
	h=To:Subject:From:Date:From;
	b=CqzpEN/0weeB2pq756pjM/nf+hkGQ9WBPDgJOwZQhhcWr1r2M9VwFnz0PhvVBxy+N
	 vmn7i4yvu/u6lyg1LT+DbrWl3P4DElbEkt4WpGa2pSscW8YrvlOzfi76txOREVIEPk
	 5nAMatLic2hoa2zTH2H9Jh4ff2jKLa77g8nA/wGPxCABLZFO+wVJTo+aSL/a8CwG+Y
	 34ZK4nfW4Rv7n18k0n9rswgKBoY//SbmDtpnDhYPCXEs0nG8Im8uI/Jyke25RGaS0V
	 fW31YOSKpxYNoMoDU1vYbszhjudk8Cv+sO7/9WEEichnMDLJVvC4BD4Eubi5YbMPAT
	 D/2DV1O3sVigg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921E0C3ABC9
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174745019357.29452.10503011742220348572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a76b340e044196169dcbd2c2c743be133d8add7d723e2789c66916b003c4fbec
Date: Sat, 17 May 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747450193
