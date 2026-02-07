Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9412E5B09
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770496434; cv=none; b=A5b77mPMSmJjdDkJz7fzKJfXX5XHX4IMRgkbe5fqPl9qf9Iin6FQtGoQE4qumawiArQmwXN8OLn88MPwfnvwnBzTW0a/qcQLynaeLyXtqoXaKQbet8H6d1qIxWM06nd7rf3WaKuWL6/r8U4sePESkL7U16aYNzD/qx5/tIqr0jU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770496434; c=relaxed/simple;
	bh=0wmEPxkxWj3EyxI7+IweWO+WVYB8RFFHZwmce6v1ho4=;
	h=To:Subject:From:Message-Id:Date; b=nq2tMpR/kUPQc0FjCpOwINA2G9AhxKu/qaDgQZT7RbxcHpUmvyIYKKMgvjxA0xQbJCx6J0IFe9512Xt77D4SpIeoocBDyaJu4D6sr6uDaLdgQEbSzDx9FesbGaeUHM/t0d0Q0OpJkUebv73eS1Pho7WLkOmRh7QH64tWIPKlzVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XmPl3Z09; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XmPl3Z09"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0936C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770496433;
	bh=0wmEPxkxWj3EyxI7+IweWO+WVYB8RFFHZwmce6v1ho4=;
	h=To:Subject:From:Date:From;
	b=XmPl3Z091jzaFuURjjIBXivlWVb5apeiIa6ScSka21KbXALvKI8Bi8q+bARXEH54n
	 jbb1BQhAvgEOPXnjrbXTSO9tStixGu+5TI7hbs2eSrimWK8Ng6rsHX7HiuKEuzvrKH
	 qZzCR/n7sUXeUCfLBpQuPLH3XpVq1wv0QUnmgl0FLq1OkfikhXEEazx50zEVYLWxav
	 VuAByK6+msg/wPjTRmtZg+50YavzvVJR5YmhEoSYh8AUT1et1BocX9C0TCvSvnnn7A
	 hqs+5mlbXD1tm5ktPpXTE6RUBcSiQJFGV5PADCO40mVVCY+/5kVPA/lcA8/RscUPq2
	 P6gcXjHPoayQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B323EE0AE8
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177049643360.24416.8347412920485189761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5a88e0ea2c5b792f2850f66fe7ac1ce844d1a722ebc63898236130514b254d4
Date: Sat, 07 Feb 2026 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770496433
