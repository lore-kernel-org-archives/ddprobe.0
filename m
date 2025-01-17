Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298E717E
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737072354; cv=none; b=fbED7snNW/33Y+VZkaAw4GUd1yJ5ZykyqPNrYB1kOLlkxl2iZam7EPHkcuidkf6/0W9i++5QReaGxv55DR8FOlMhLouHahPGABC3hbCA1IYPFfSa7ufFlGmVOtvN9P9lhyLr39dA2J3OwKFaWGMiwzcBsnqeFgpt9fgDSTJzg14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737072354; c=relaxed/simple;
	bh=ek1aRpucAmHTsAUjiHDwnxHo4PhOB+Izibrw1YSQGH0=;
	h=To:Subject:From:Message-Id:Date; b=rQemgkg20V5cbDVRpU6KixxYbbp6oWwjEDG8oukqi90oLaY+Dso6GFhufY4CS6mMgI8z2ShHEITNkm6cDWDLjgVAnQxuSGtzvvqv9chd2B4boBjaRn7mZEDkIy8gyIk9HjVe2uUviFqQAmhTgtYPXWpRxJ8wNVsPdA8yVkgWKVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CAXKkdbq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CAXKkdbq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC00C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737072353;
	bh=ek1aRpucAmHTsAUjiHDwnxHo4PhOB+Izibrw1YSQGH0=;
	h=To:Subject:From:Date:From;
	b=CAXKkdbqqqt67+XQY/IKyYhGqWELx0Un35qRxiVlW36tVXtorgeKFApepst5eX0hE
	 7uh6D3T2hg30XlPyD/pFM+h7LSAOvkiV7bUvNwlLeF7P3yhWiq235RWXUinltobWty
	 ohS/nYRqgyeoYYLMd6g1ipQXpdX+sInHuq/xRaZenJBzqiHQ9q07iH/+/rohxIPELp
	 munB5S4hxHzUZZitCt2wI18QpyroHiTOpTJD+xuErZNukvlVWUbUVynlIqSf+NuO1h
	 O+etnZMe6GP7h2obpcbNOmZ3VugqGjznm064G6d5ityaiNGqpgc7LbUieQYvD+V4q5
	 rF+Je6Y5WKCvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A888C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173707235361.32262.17236726363367314942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 157951949da45f98af76da1071ada37e6923b728515b216e36abc0ac1948a4d8
Date: Fri, 17 Jan 2025 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737072353
