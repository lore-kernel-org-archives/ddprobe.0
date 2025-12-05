Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34160284674
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 21:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764971574; cv=none; b=tuhyT+Wc+yQBOpBjHeQejugSet8Jud9uq+uYopB9JOymntPxsC2qFcpUNPrsCW34awBEE5lIfp9T3EFMafKFQdSsOB/x+VjS0Y0G6Fv7x75vUlrKhvOqYucj7CmIzEb8tlpVnxSI9rr2yJkenkvEaj/rXyarSua+uEsoczJ6VeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764971574; c=relaxed/simple;
	bh=KEDOF2QbS+PCf49urT33CA6NC1W6XkBCZi6DeJisoCk=;
	h=To:Subject:From:Message-Id:Date; b=oPDGjfkVj1pH7c4X0rD/HKtUPL8K7/KWxQC4Ic2/TEJCofIvVYCaDuUxe4YHmnZ4gX/oVOZq0Afw9yOKweHl4Al1af3w3NSpWoNnInpwi6bMhXuZhRBETgL2LWg5a0aiywrSKKM3F9In+RPgKOixo+Mwvt+i3ZkJVnG9Wy1gWQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yvog7UGg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yvog7UGg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF7EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 21:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764971573;
	bh=KEDOF2QbS+PCf49urT33CA6NC1W6XkBCZi6DeJisoCk=;
	h=To:Subject:From:Date:From;
	b=Yvog7UGgsJ8RJa5CQfiIph4OBLmrD+8Glp3WU5n7NtR3CqOsohJELzylJS/+5zT8y
	 aqqyfmJ37v/AGvhyYwem40JajKt/XAlxtll1tFcRj1jghsRjU2iT079H8awcEJpzRq
	 NVxgoofIHu+CSzEC4Ozx07swlB8JYeVTPdyZMwoPCVqalOfewDKt7npe6m0vQsAcRq
	 5DpZZuimGShjHZXxuXeRoUl2dAC1xghxmxJJMWzoM1roLKux9I55+IH/xNTRj/wA7n
	 3JEaB3Hb5clRZkli79wAmoEq7AHMGXFR+QzCY+Vanl7gZKIz3YaUb+PJcRnhDgvRkn
	 kTYiEuH/GMn/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99073D374A6
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 21:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176497157359.7433.16761466765359368779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89c2ae26de73bee0425e42402783002df1e9e7fbf824278fe6d002d2f205d9c3
Date: Fri, 05 Dec 2025 21:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764971573
