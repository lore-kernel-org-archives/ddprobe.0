Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415651EE7C6
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 07:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782198994; cv=none; b=N33L4T7oaWuoN2ko16odaEjcVdXdk/Xezxhq+uGY6HWrQ3Dbp6cVADUp4n1QKQMSdMmQT9pLGLf/vYLSMn/bAQ+dd3T4ZZhKsseD24fZ0PnXdHEm9D39Fl1OJ+yk+XmZLuSz7zVQ5x2AU1hSIIwuSz1AYSh9nd1zeu7m6h9nWcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782198994; c=relaxed/simple;
	bh=jB1k2d92BHo0h+korJ6VehNld75csllMUx3Lhtsj+dk=;
	h=To:Subject:From:Message-Id:Date; b=b4RCcgy7JoqpBrfWzGr2za6OtmZfSbDfxYfrlaTu05aDNxRTohtRds1OLjsQu+S50bOwZWAWjSvI8mbkaf9IDzJaSA7/tE2IEoeda88fLd/q3aoucqGgoPaFjbXggQkM0hEHSfAqCLxPsAdSPQQ4hPxlM20mXv5Yb9UwxgUa0HU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYu0ljuX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYu0ljuX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBCF1C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 07:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782198993;
	bh=jB1k2d92BHo0h+korJ6VehNld75csllMUx3Lhtsj+dk=;
	h=To:Subject:From:Date:From;
	b=NYu0ljuXkY1rJ0BYaj+aPTLGoHu8qanIAKoiT3puqPBL8ymYR/SqS7p/N1YsHmWDb
	 jSzNFgevacWSXNhZbpIkVF5rAETb7r/iWEnhzu48La641EfWIhKyoa1nlpGS47srO+
	 or66pgOmmTVbIfBhQtFoFrQTzr4lY+z2GfGMi5kRYDXlP4JtMVykOXON7ZqPvPTow9
	 +f/s80cGEwTMJt9WfzBBrrstk1HSR8A9EBO6yJ+9KPFe46xrF64v/mella7TyyVi0v
	 4b8el6Folppo3r/uHxvtu8Kd8jC44gEF2TGoDqTDAZda/s9bJE5HFHbScmPqVwMyew
	 muh1itND6aSjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF64ACD4F26
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 07:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178219899368.25897.14646408914869275534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8459c5fbda0b43129a03eab51ae0dac8dfba43e7bd4401bed82e90046f8bf36
Date: Tue, 23 Jun 2026 07:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782198993
