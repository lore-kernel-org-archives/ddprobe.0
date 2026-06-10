Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390A4F9E8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 18:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781114794; cv=none; b=iO4t4xG7p7Jcjkr7LvA7uAKetUj135qoUlXgr4YC72fi9JG3vb5Uvmk5/qhQe3mZS2dY/FVcpiRUm5wZp/BKgmtrm1k13Q1j4RiGjCQEemPWHM+LIBH2oPoZ8OWz3Vc3XL0PNzv7glNkG7Ozt/d5wsUbJhZSm7/y52mqG8v7o9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781114794; c=relaxed/simple;
	bh=640NqX6V3r4hcdUFQLtQBu/ahoTvKFZNyyXCAvuWCEE=;
	h=To:Subject:From:Message-Id:Date; b=VUtAFi7Kj+W+g3zBpSCb6q2YMA64Er5/qxNC1PaIjxXSu3/C3TLNgTqR2+ZuVOU82p8IOjibwrfcn4EHeY8IY8/WhcETkQdwNLY0Eowkqpvoa2I4XG6AnMZc8YGK0QzxrCU4DX0AWvKbu16NwmIFMVH7GdqwkEV0WJVOVcj4nhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kRqMS4Cp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kRqMS4Cp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1AE3C19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 18:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781114793;
	bh=640NqX6V3r4hcdUFQLtQBu/ahoTvKFZNyyXCAvuWCEE=;
	h=To:Subject:From:Date:From;
	b=kRqMS4Cp65bLZ0N5qArfevMoZMyeCBC5ybrFRNOoZfDohNLoLTO0huz0WeiKQpbEk
	 dtESXqlHsD2IqH1V8WTVSDUXW3D40hzuLqUj0ZCcg/esX2tFFeHVVpH6Doxs1nZS7I
	 7wUwrg1I3ujIa1TNsszlgyxXRlR6PCw5FCv+rE8bWLCRkWuYv7Vm23/EqpsgDornEo
	 e1Dr+aAVOfEyJ/gmcrqRXAlDP9WSDe/jrF/b1zJkoQwUrfNg1cjUMGT0gqsRQ08yZd
	 0ZWvWQFNqtR4f+vJaHuLuAkdX91YE/5byAPEDUgXCYxtmN36mwy4VbG5q5Q+Cn/bDs
	 nliNMpy4TRATQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B197CCD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 18:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178111479371.4966.15791708157026129954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69313eb549c9f3b16a382599a35451a5b6ac3eb72ca94d466d9be08e0dad1654
Date: Wed, 10 Jun 2026 18:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781114793
