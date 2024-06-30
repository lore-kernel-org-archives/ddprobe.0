Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71FC93C39
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 06:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719727463; cv=none; b=KXqWBZ++YyHdhZQY095hm7Z032WnhaY1cTZ2N9sKSzgMDZE71Vt/RUYViKKM7uOuJAuss1AXisWQUt+SlmTZlxKsg/xb6Jd7LF7RcK7lm6LjosGxPWKtWDVjsr6x5QaxvkBg3wvEKgP9muj4QfXIoztkne70bAXk7Oy5STL8Z4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719727463; c=relaxed/simple;
	bh=MPsGoTuGyetAD5O7d9r2k3YH2psoUnEZwS61Qxko/S0=;
	h=To:Subject:From:Message-Id:Date; b=ZrSNhB/Yfh2AVoJEORhhI+0xJnHmEknaiUOI5OBR0XGltcDGnUhVaLoc3eE2mwrq13o7fZFflwkbJ5+Su5EYfsUhqy+raQu0840+kWzzSNXRt3QLIPWr3rmY6I1w261iiuufWmvbWudYxyunWEfDFMMyjfHN1yEXXkx5kzRFFOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZFmj7XeW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZFmj7XeW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E230AC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 06:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719727462;
	bh=MPsGoTuGyetAD5O7d9r2k3YH2psoUnEZwS61Qxko/S0=;
	h=To:Subject:From:Date:From;
	b=ZFmj7XeWqyaCt6E8L8M7d9iBAb1duzGbNdSAYYEHLm5fLxV3OzrC/7/+eiLHQNz1w
	 vJV0jYtq+PJ1CozpkhlBWhqzcV8dlgMKWL6YH+2SM6rieGquZ5Lesc7RWVluMiMTsk
	 qD5WVp2z7Bv4BaEuV+4Ql4mWBlDb4aGjrdgFVBCQGrYLGXBED2t4FAHkCHRDWybcmS
	 o/H0hdbr8kqdhCJVHS/je6X7jxmXBzAZOCipnk8dWal/vnTqCi29E3Mqrvhfkfhj/s
	 AzeniyUzeBgDpPhNl5eJ2RiFKrFx5B0lvqxzJ2KfIxiMYQADqC62jlm8s9T/9xSMCW
	 DigZQ5LTAWrvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7670C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 06:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171972746278.19565.16997061103837048591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52fc8a05647f80d43c4f1e09928db205ebb4f203aa3589f357eee0a66b8be361
Date: Sun, 30 Jun 2024 06:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719727462
