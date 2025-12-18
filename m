Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D36B723A994
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766085833; cv=none; b=HfAk4rteqjrgYuxhpcEYUYi2HtxGMEQjZLD3LO2E1FvEZccnPqQ2xXV29i3/34CKhF7yfqV1v4NekGc51vIJiRs+7rG09ehkhjjn2+YXAFBM6s3sCHY5nmbysrHRXhq9Vr3jqXpZCJ6VTFd0THKJHCbubtJinOmQkvcN1VSVvJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766085833; c=relaxed/simple;
	bh=qYivPjdMCjHwE+HctlNug29Vqk4lvXJpFrOQB34IOVk=;
	h=To:Subject:From:Message-Id:Date; b=VjlMz+aMyzPI70v9n1YIOO113Oksp09JhPX/81pY3cSoy3aXzqvITF+qLXGXhaquftdG2jwy1hprV//zKO6mma6Y0ClVR2U+ka7Sq2IzfHpYW32dKYt6VS6r05aufQzqJljnUsDrHwz700mhizMk0J/1oMA+NtN3TCt5Cyf23co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AbVr3g+c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AbVr3g+c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E34C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766085833;
	bh=qYivPjdMCjHwE+HctlNug29Vqk4lvXJpFrOQB34IOVk=;
	h=To:Subject:From:Date:From;
	b=AbVr3g+c1sc6lj6Ewa8Q6PkWUyXXEzFquFeif/uBF4w4CnZi4dThHFLEL+DZ08EvK
	 pPU/mu6klTPD5HH7lI45QXyPPOsiFMrWTCWUUdKlG73pq9CzGMG6O0pB/sjIjToXb8
	 V0DZdW6CBG85w15Yx0qgO2d/bSxRqbYX3Gkx+R5DxhteLAsu/LDe0Ojs7nrxKd70xB
	 f1Rz2pxW3cQWUtStNjX10sVerzlxh8WEv16N3kuZywcUmm43+jpHHwDOEgu14YJPFi
	 P9DMOHXx7+aKoMSXLIRQ2iRu0eli/rkIuP7JI60JoPT8B2hQCJ89TkwZFznqoWpunK
	 zY5ikANaF9zOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BA7D6E2DC
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176608583358.31012.16478020834265149406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3a70e3629f1bab69364c81dac41be92352c062800eaf70adb2807d41b9deec2
Date: Thu, 18 Dec 2025 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766085833
