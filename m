Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529A939658D
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779263434; cv=none; b=WrjbhMStqCwMFP5Z/BCFLmygwdJDuH37Ka9j61pZbK1BbUicBtS3zK45eWnmCOaPNcZtSUmiqq7Xlp/Hd4Lr9hvqjVfecXpXnRYELADxH9RkmOww3GS0tvcEbmLvH8c0KGNSdmJgnBMZsrVJAl9hl24KUJdqpgUe+eskw33sHo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779263434; c=relaxed/simple;
	bh=+yyJ37kwjnKC109y/gwq5Hy9cnX7aLtkFZFX8HByI4E=;
	h=To:Subject:From:Message-Id:Date; b=e3nxkPs3I9sIVdDvJ1amTno1ObGfZdquztFI5EGSARAqd0qAGr33mpGHvdfoOnxdBXkHfyVNuBbKVIJEosyzUu3inFvHxerbtn+Vi3XR7c6FfvtvfF6DYQg++TAxFNnawBrApnp1yIa2sk2vVftjuX3P/5SkqLlpdXV+uuXPZas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J0g7G2eH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J0g7G2eH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD525C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779263433;
	bh=+yyJ37kwjnKC109y/gwq5Hy9cnX7aLtkFZFX8HByI4E=;
	h=To:Subject:From:Date:From;
	b=J0g7G2eH1zIC9YJ4DZcxckobsHE/eXy/dYzY1UYUfIfYWIyHoih3CqF5rRERiuJpq
	 hWMG1ZAjIOq6MYIzdVUEB+ZYi8TyYo8WYFr3jnzSqNRlyJCmhz+IXuB7TpfEfB2sph
	 eySRzpcHDXKq4ohDDLzOR48NZmitowlTOWidPGh4onyar7qJ3mA41qiCnrimUO19lL
	 4GkCzvf6ZQdgYgPFnU49ahnM+ecaQiU9YLOB6ADRSQ7PdX/w76Av/+61/6SR8W22hv
	 cPsQQrwqLiPDsKG5KsII2siIjHG7/DO9tF9kx/qwdvTOwl3TDELoxHeu3yotXhdGab
	 n67DSyWKAskKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B177DCD4F5E
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177926343371.22719.17645534374589857032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9606a03d81f6ec4bc20e49e89e5abc648fadfd0094b380b8fe8bf501bbe11c46
Date: Wed, 20 May 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779263433
