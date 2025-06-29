Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38AEC8828
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751173794; cv=none; b=h7dqssVi454zqypbMzyTCbLJ+yh3idb/Sr7LtSI45pi9l1GDTssdv4fMmHl8H/m90XWcF0/ZEYIJXMDzKllJ85PRf7x1udrz5uEltnF7Mh6wHXVOxo3yWo+OiQynlJq3my4v4pg05ql9tIsLnWKbLqd57iGDyo2S5AEOgsUF8Yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751173794; c=relaxed/simple;
	bh=PJ3KFQAfYdUNf5rnZEh8e3LELrWuPxEVAsOCxd6RGeU=;
	h=To:Subject:From:Message-Id:Date; b=U3y4lPX5mv+0fmqfy6zSCYU9ABVkLL0ecsjjkn5/61YxFoiRy7P6v/fAgfKv4zTazYg4YPT5Dv8Ny0XIq3Piy/jHlk5n9a07l20XezBIKDobz+J5ZT93zS2oHJK8Nbb5ZJj5ybkaEdfXG+HpC8iWOc7Rr63KJlfrloRQFxKeFmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KeqxbK0D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KeqxbK0D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D69C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751173793;
	bh=PJ3KFQAfYdUNf5rnZEh8e3LELrWuPxEVAsOCxd6RGeU=;
	h=To:Subject:From:Date:From;
	b=KeqxbK0D2Qhb+d5IGuQWMlhp01rHjphpXbV887/yZ7UVFM2cIrkaF7YAMnSihJXpF
	 jOnJFx8VDhLarMBcEbbVj5BV0OV5b26J7fy2fFHlWDosnHK8+EoXECYgyChWrmFoti
	 TpY5iGC++DtYa9HnBe+gSpAAOigl6/BvrElo1/uC1F1IfpSmSb22LZ1znHmsEUEol+
	 REDtmuimPYKy3PpdBsjydTgnoX7wTF6GczP6fKIl3YTelwUBoqoKKXoJesQh+sIRf8
	 RmbcvIk3UV5bj5Zfzmx5dfB+LQ5r5wqp9zmLMd6fQvo+OTSfzpfAXLPyCT5cyge328
	 23kk9RBCvNDeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942E8C83026
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175117379357.28990.1601371328637286252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 727d6cf612bbe95ea19e07c6e8630592f39207d87aaedc8754c67cd5aea4355b
Date: Sun, 29 Jun 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751173793
