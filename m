Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BE3288CC
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751336994; cv=none; b=L2ujViqmrXga+s0eO6wFvs75m7IZ50M+zv8HY2kKsCTTunc3t+C7F6NXOfiY2sv9ooZU1HtGpXNdLpT5pz0HauAUK7oTjmFjIxmbzqHULzg4ixbH1waGIOz3XWWN+De71uHYm0DEbttmgNN5XCSOl4AZJE2zwi4mL3b6watUoHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751336994; c=relaxed/simple;
	bh=N9bKgMH01E2Igxme1oQiWR57BKCYh3aB0MWGhUXxEiI=;
	h=To:Subject:From:Message-Id:Date; b=cmIFLK70n789SgeMIkAgKIOGwaa+03mjJD6kYEr4EQUf2JU8GIeG0mhdqArWbn5WkZQsGIqgLdfjCQZHUz6L7e+b1atO5OPKFke9Il89dQVlOwfP6qAnldGGtU2P+b9oKs+qCKLknWMEsMALw8w9phCvhH6RFI6cYMDmUvTkzPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ox+zy7Cj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ox+zy7Cj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE98C4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751336993;
	bh=N9bKgMH01E2Igxme1oQiWR57BKCYh3aB0MWGhUXxEiI=;
	h=To:Subject:From:Date:From;
	b=ox+zy7CjWECmfnMqhsAE08yBHiOi4Db5D+DTxmXoX5F4LsmYTHQ2krp/8J77bci9S
	 n+gZm4AdQYhlXv/T28kFC7yIM6y4VEYr29qZSd7x7fl0Dw1fNrzraNzUQZCom2cRH1
	 crUEl8epr1KqynRq6LTR1xnsq7ARLUaP5KwSKWKpPQBcWOQJW+eEhZo2dy7QbbgtBA
	 1ngA6bO+uk296fHgq6SM6ZsoX4qwLZexU6cbt0EsOhencF/lYUmDTzzSID+ldiNOhe
	 XSMs/OhzISyubwSvELr5UkLyPUrb1IipNTHKo2VUIUGLos9JKH9gMUxkZo5AHIJlAm
	 bAMO5ywwt4N8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBFFC8302F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175133699357.21114.11524862587054746814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fe679f02e94ea17a4c43ab038f833baf8d9e2cff4aac3d411f3360152b1dce2
Date: Tue, 01 Jul 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751336993
