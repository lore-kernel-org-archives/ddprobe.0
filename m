Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5C78BFF
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728696354; cv=none; b=FyySNCgAmw/+gqWpuAOiW+kr8jEm9RQvE8C6nNiHl6MCxB0ffPWmObV05+p7vQLvyV6RSEgA9XwCtRsmgDcentbD1kl3ffdyYUNV3yUbLsy51aE8U956K4zIhXTKMuafTsoqQKuNQR0GU6IgMft6bkHcqc2svYC126MNXl3gy+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728696354; c=relaxed/simple;
	bh=KPD4ZDLzUxCzNPZHR7N5mOIsd6VqyZ7bKbx0TjYvWaI=;
	h=To:Subject:From:Message-Id:Date; b=MYatDtjd/F1EaEfgS40TF7qihJq5mqeJ6Y0gyV8oa/CYf9EbWBlnC8/F3ztR30i4C/CzWsDWt18G21Zan4+ehtXDI6NBR6jWMsD7ikTsdoaFpd4LrMk4F71+w9XwsewJ3VuEh/ypUDiFo9QjWcrWurr6zGxneqqTK5Hii58LzaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJPiQzCT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJPiQzCT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1046C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728696353;
	bh=KPD4ZDLzUxCzNPZHR7N5mOIsd6VqyZ7bKbx0TjYvWaI=;
	h=To:Subject:From:Date:From;
	b=gJPiQzCTpFXeOgQZ5SPNyusAugpRvYMXjRrbEmuMIxpFGzVJvQZ9JRE8/Mh1uhoit
	 +jlyV84vTe3CJgd9LQf2bW9qNdUxd1ot5I6haRFWWU5g7yM8a4npi6Fy8qJrEOBAH+
	 Wy77W/sH+xUBRzoFcbFnN0rdrkbxathDEiww/WXVmPpzqkLyWxCVwUl4Z50dQRgSCQ
	 kI8eCJGkM02pnCMI8ubHTJusyLCu7O0nURcFX3pczZspgilHpypjdIlLJa50tqcUMa
	 QfMS46zcHdjoUwhc9ObcdFbchfROue88VGlb4KoBSsMqsE6nM+/dYGLMujJ8g9+f8J
	 mLQRMHx9R8PCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9370ED0EE1C
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172869635358.11321.8001213323433119651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90a1d4391fdbf24921fc29ed4ce63ff24dd6ecb602bbd28fbf7e035f5f70e2a1
Date: Sat, 12 Oct 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728696353
