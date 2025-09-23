Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF325213237
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758642593; cv=none; b=XO8GrYO5EMpRtA6gjaD4iHQe4pkVA9GJMNdjkA5ZW44+cSggrRiTdohzVjN2NOINhNNmbOMHJ+Z3z7t2Z0Ljwwka/pWM7uoQlyRTCXQ+sIlVcKD1RmQaf/7Sq2eISl5ouyieLbOBqTymbHuKpvWVNxxBW6os+5/ONzgs6fuBV/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758642593; c=relaxed/simple;
	bh=ccfIWnpRi+/Q3aozUHqXGFc7pIARClzhJiV3cO3dh80=;
	h=To:Subject:From:Message-Id:Date; b=X0fVyJEjzIdEF3G5MOphToMUxbCT+sdsGhuXRM6DW69T1VnpluRcpOBFFKgGV0Ngoqo3dAAA3heiGIkZZ2wPDt/A8/hF5abq4ft8E4gumbQiNehXSkM3T34M/2i4ZRcs3F1TiQYBKRB++ZSlQgj2cALFFbvwb82MPz61FWv94PQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cYHhJuDF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cYHhJuDF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5082C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758642593;
	bh=ccfIWnpRi+/Q3aozUHqXGFc7pIARClzhJiV3cO3dh80=;
	h=To:Subject:From:Date:From;
	b=cYHhJuDFl8fLfWYYcezF6h38WgZZFyuwMjnVrz0xWilHVo2AMFIe2WMYMjsO1k6i1
	 NC3uf0b4RlXMn7JnPaOss8V5NKxs6+vCilljOu0zRWZvU23zsR0NN9wQHPDQAh7rBF
	 eenC4/80hXDtCc4V2aylnZzX44DExA9e0ZRS/rPaCNHzQhGlVKEZLU6Au95IKUIWaZ
	 dw1MnnqyybT5BS4BWKsxH8eBiZqaajOE9kf2yjwZ32tz0JgrxJiEY5G382M94+rQ+L
	 4q/ToHSwUmOuD2fDc1QsH2GzehQqoXxaNHzKsz9vf9L1iIujMwUEtOW0kgvCz3uSTB
	 SZKYPS915etPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA7CCAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175864259357.12055.14585038513923852626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9b0acbf19d0a450e7256156c3672cc537bb04ca7636b7d570f5560a2b3e7f29
Date: Tue, 23 Sep 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758642593
