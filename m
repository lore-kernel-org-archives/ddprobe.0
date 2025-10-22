Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31EB4169AD2
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761161394; cv=none; b=M/JvpXO2YqyFRo4PCPIumCTNbKgsk7HDxo3YGRtsA+D1FjKoSh2nltKSX4nyzl0hT5gVJqMHjblVLNQtsaV7/ScacHiqqsUzXI4sC+uFBPQrus3F4kB1u/5qcVVlsWn/tmYsZtfC9tXre1wWgt1ih/YOCd9BJVOf3YfKK9jphGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761161394; c=relaxed/simple;
	bh=Jm+z59ZBotJ1uRvm3oIuE+tDJUqFiRSsNbZ9WHyGuKw=;
	h=To:Subject:From:Message-Id:Date; b=ClrjWSz3vtfy+8HKs3tM4fOo+HodFD08De6ZttKPqT3yLTcekVhtWEt5DMH/Pr97x5nGDkhadJ0kb+uxdW2WSPAKcsYMQDOFXTvbOM4sErq90GPqBwA9M9AGNM8czr3qrF/sN1EGtoSt8EJMory+cWqpBVMY81gz5oSNl5k9+Jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rk13Kya3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rk13Kya3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE651C113D0
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761161393;
	bh=Jm+z59ZBotJ1uRvm3oIuE+tDJUqFiRSsNbZ9WHyGuKw=;
	h=To:Subject:From:Date:From;
	b=Rk13Kya39Iy7tUkRYNDsA7Xo4KeyyeAaaqhnQwq2JmCzjXXA8nZYD2GqRmGQzPZXF
	 /Epa+976ji76AoqAOjZmfz8Dt8DXHeLZy6rS0ZaWLG6jG0qvlje+7Aj3aRMInvcBsl
	 Vc5drDP1BaOVvIhr8wDuE2LBnQLqOSuKqgKGFs9SNXCPqPPKU5phGFNlTjhlmNhbSI
	 tEvwII2W3Z5Dlpg78jOEGQOkvhlcUhM66qiE1vuZm7+UCnkniLIMuWAUSaBvfQMmwH
	 ik4/Sntyukna76Ud49IqKOBjiZ2MseyXvwP1s6X6dx+yR4n20LQyKaDuVx6qJIWFne
	 nLNQDYZ49+CEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E1F3CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176116139363.14787.7285808771041843504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47ee3a19cb6f68398adb3d6861c99f8fb8e412c812591d29deb733decc798e49
Date: Wed, 22 Oct 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761161393
