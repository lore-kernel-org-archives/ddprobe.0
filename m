Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 019BE10F9
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 00:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706921897; cv=none; b=d/SoD57epMtRhLNIGTBYScmFzPv7Hp1rkHFsFmRZmFBAyJAXPF4kQuoxk72MbYhcBzjD9Go1BKVW+OJlc+j/5XF99SXPr0He7wTbzaDOsHKIvn8Xsqp4PeyN1PFI9yU8OprqBYLP+lmn+ws/sV6IcYup6Il6WvpPgLNT9BYlksY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706921897; c=relaxed/simple;
	bh=nxbAay7n/XRnIjPBskCLrrVd/kv/dHWpFz6AmRY6VUk=;
	h=To:Subject:From:Message-Id:Date; b=apAdWwfHVXz1N6orEZco4VldNQI5v4snSJVuOyNJZFFC3+6i8ytk//6Q4l0Al0++l9eJzOzYyLnZyaWti+FZjjN0SYZUKgUJXKS6sEBGXpOAeg9lrG433KzhBSVIWWfGN8jE4jc1lsI4PgfETt9aGu6iApD7Ui86e2M4DCaCeyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XHY+WFVS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XHY+WFVS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71EDDC433F1
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 00:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706921896;
	bh=nxbAay7n/XRnIjPBskCLrrVd/kv/dHWpFz6AmRY6VUk=;
	h=To:Subject:From:Date:From;
	b=XHY+WFVSKOrRDWFXZuv4KQQcmudt46nOsOu3f/F61X66bkh+1PTIrx/dZq9W/fHU3
	 aDOA/GMkg7Pm3JniquuZKPEg3Zf+b8mEWDdH7QEGj0u99I8gD2eBhCXNl3UMmTDqgj
	 eDbk68GOGvnNTwmx9kk+bVAQVUsm8Kleyb+mJ3CAeCAj22JHBvSNoCwT+/vursQRue
	 r+6n+i/bihHYB71tN2G4G6RGjOxPDtlCftyOFJf4BABGek+7SL7hR3YWTa7SIzOgGt
	 RKHHKCEudRPaqCWzTaQm/OsMxEGLYqZX9IuWCy/nR4L0NfY23Lelfu6Iu6cz3f01k7
	 qil8XMykcLM9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CF62C4828F
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 00:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170692189637.15834.16217770678154201994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 648f292297c515bc07dbff52661b40b667b400ad8c1384194400bc58c4fac850
Date: Sat, 03 Feb 2024 00:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706921896
