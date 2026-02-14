Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251FA38FA3
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771088694; cv=none; b=eVcVza7WgwI13TY2VICxkFnKnL2r7PAQkI23uJmbLIDCv49rtEYTJxitkT6VYoTEyoOn5NzQbMiLisu7UYjSjk20dNux1Iy1aDgzSsHxzh0qY7KTuCPSlCcIJtzwvZn6iIm4I5A+ERQ91GtIDxl5+FkKBFjBkNutkqiFxo8w5tI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771088694; c=relaxed/simple;
	bh=ssVmDrynkD4vjXQgo5CQhzfQQqDSDCMMfdRJh/7OlqM=;
	h=To:Subject:From:Message-Id:Date; b=f3953PJUJ941UQeNx2X7wc0pOruUowc9B6jW6e9P13oBRQKFy+GnfZY9BcbczHVRlDCVnza1ngmTp5M1AiyqQeV+NkWrfkOnpU9ZQNtu/KlqBSnXETnKjukL/dqQqNOhCTjquqZJNdwkeGG05Kw91XO5MCnn18EVKDQ0KD4+tOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iLKr5zp3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iLKr5zp3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B37D5C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771088693;
	bh=ssVmDrynkD4vjXQgo5CQhzfQQqDSDCMMfdRJh/7OlqM=;
	h=To:Subject:From:Date:From;
	b=iLKr5zp3VxeUzJY5Fxs4VgOlOyFVXajdJC7oImMirPIVjo/s7yZkkTl1Ll0pPooCy
	 K76VH/InhL3eWDDA56+BK3kDlaxWwfaL3poEeoLaPOFOq3yeir0xc/AjEIW5aq8xNS
	 0+uhgOK44sxdhN68oVUL1YKPyaNPmLNTHcu6F58nZRMLTely3G+PFLP5SMkL0R8bdj
	 D4u9oPnKBlFo+cm95so5C78KQpQytzu0QDiq89F8HJ5gBri8jfhBnefrjzPu5epggG
	 Egf3WAyljYrBX1+3a+BEVpp6ec2MGKNaUcVS1QeTmxwUD6/wYdvLAousIiLol4oI+9
	 VoWG976seMZ9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DFC8EF584B
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177108869360.19035.12311582743605770504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b780dc08e3462836e335576506bf2f432a3c04236f9b2a3455b30329fdf66a95
Date: Sat, 14 Feb 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771088693
