Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4771241107
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739037954; cv=none; b=Zr5EglYdCOcYehbPsdY/yoGeC8u6k6do70rmZTIKzFmbcMUwx+0I89fR5GmWjG6K1H4rSAR6xOGLzoZ00s6LjbmHJkx3r4o2+f84qfKjaVtG31ZKdbH3CjO6tOsGgG7YTIb5BMZ3RtZQI4FFwBuxDYFM0QZYs6mBqab9GWdHyYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739037954; c=relaxed/simple;
	bh=riuQi9CPGnZvsD6QLIHTALSwRfgaQKq5dydRBHzqq/Q=;
	h=To:Subject:From:Message-Id:Date; b=IWi00g0mow0pKUOVQJ8L9KETFnCbRdouVRzHIDVtKrt804aRokCzdDdtPkeehi8L4FIs1j2OGpgdCFG3Qf5O+dfsoKbYqIuuTIGhCshhvYrvseVORihVUF+RVw6uWXIsTvSNjvF+Cyi4VapbqEQuM4EanKkIaUiW0VTk8L900yA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f+iImliO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f+iImliO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C02A5C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739037953;
	bh=riuQi9CPGnZvsD6QLIHTALSwRfgaQKq5dydRBHzqq/Q=;
	h=To:Subject:From:Date:From;
	b=f+iImliOWfWSkixCXVO0KW6uHsmZ0aSpwnj52DjdLnTLHaNt0ppmUp/bEtTUmTkyw
	 Xsd6Q/h7A/HrZm6HCFrCrmuohiEKkDfnVm+3FYNg3l+XU1eeTWPkynOx22W4sFZYh/
	 71PvCCxeixbmtcBrwwiJaqgQvwmP8lrMkTayGGRn/OAel2a5vBcKfi2k+s3BqZWgBK
	 lorSZCjpmAzn+9KzNSVVg4OKfaM+FwlQDxNOCxYnVwMx/1A0LcYOaeAVOF5OJTIdIL
	 fd9DXKwGsqQZf+VeJzAJXDNV/8zjSjQGGWhE7R+tyaDDlSxyhdTkTprEcc9S2hBHSu
	 FmOqNWQGXexnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3421C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173903795365.10451.13935100944158640425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9f31f575a73836e7b59c647d73ef0bb3d37ff32878bbcfc52746092da8040e1
Date: Sat, 08 Feb 2025 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739037953
