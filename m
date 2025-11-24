Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252972147FB
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 20:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764014574; cv=none; b=JwfOwQTHOaDH3npPNXfbT3O74k8wQIuywluD8dXGf3npk0ijMe3t/XIG50kyE/4ZChNRUlv4HUgMJjQOVuDEKoD550wFTbwe3hsyYQUSGdrQqTKu0HgpNCfnC9dE2aiBNtyFrSqWaRK7V0AP81qjBrCZZM5WdnSA7Sko6tq/840=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764014574; c=relaxed/simple;
	bh=Li0nWZlCxN81wy3Yn56PJN+997HO2DMDM8JgEMsH8oI=;
	h=To:Subject:From:Message-Id:Date; b=rF4JtHqhoetaPIc/vgAphgQZ2csNqamsths736tCe6jRH//lr4vwkLZUMujbrajGRl/9TRnQXR9+TnIkhrAfbA41LvBgdxWSreH/m7Rpb/sqgFMXEtezZGdpcKvARMPs/SzMY2Z9CiAGv04u+EyMXUOJGJQ4LpTvWxvRwb5N0kY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=udV6LEh4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="udV6LEh4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A985DC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 20:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764014573;
	bh=Li0nWZlCxN81wy3Yn56PJN+997HO2DMDM8JgEMsH8oI=;
	h=To:Subject:From:Date:From;
	b=udV6LEh4vgIMFInwxEBlWC30liIwYUV+Dn4rPbzWerBcRWOgebUnYiLMAtnYac3vY
	 4SAIpoTdiXVgCj+DMWE9b8YL2wSa7QzSzWW2gD10gSHBtpUK8yG+iFe932Z250LJlI
	 vwMeqLQaMWI6qA4QzfLHG7WUReF7CrpuD8sVQ6XglEvOeA+WYSdATSxdcGqYlQdWs3
	 jSInuxLEATSF21SL6MJruxDpOjLm7c4k0a4757ayEaohBr9YzgLliHMT9wCX+WCJW7
	 Gvfu4drs9UjAbxaAdoNHRJKaA8Nq5V07DnxAmaCUxcZBUwpDYmpjXWJmfdJTLgGlg7
	 CrENb2hHC3XPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C0BCFD352
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 20:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176401457358.9723.16020006798431360022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1585d6b26932e4101792968bfc5d6e669ab53f534e3027c0d99440e702126329
Date: Mon, 24 Nov 2025 20:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764014573
