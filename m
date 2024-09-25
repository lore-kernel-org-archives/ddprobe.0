Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07ED918800B
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727264754; cv=none; b=qZpRje4/UApt3WhYG41n/Ua151v2xCXt4khg4g+7arucJQznSQOammyEpouzbSRgAJr3JtWcTPZmDra0LiRqVcfoRpE2QUor4maSO0/KNrYuF9tZRUTC1a/q1ab/D0+hCF0BAIOEA2AnAmQsd56dBPNye4nMXYTx38GMRNvOWZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727264754; c=relaxed/simple;
	bh=gpo9N+crMl0IAVz0Q3RHtiVuI+TW2e3yxCSHcSSEf+k=;
	h=To:Subject:From:Message-Id:Date; b=rlqOTMIwz8vih/bAt9WF7T7/FzpIk4oD7r+3aGWmI3E67sLkAjUu3k5BjhVTTXCV+VhME+zThMVX85vArCR+gePvqRYXwLl9P2dS5YSGaygKBWawbdgf5z84w61fChlkGPb3MRzHpoMI6ll5O9a22JjQ77raBsrFnY+HQqsPmuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IYDYKk/l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IYDYKk/l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E5BC4CECE
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727264753;
	bh=gpo9N+crMl0IAVz0Q3RHtiVuI+TW2e3yxCSHcSSEf+k=;
	h=To:Subject:From:Date:From;
	b=IYDYKk/ll4YVow0arcbxIwncHCN0SmwAaIuDfwZ4WnPOyrvAH7GK9+aUEO2+SMiPg
	 kl58/WlpKTjanTZPNdoKXvmPFdetH1b4pvcCT7E/7/nzzvIEPoQd4nlXn4de89B3yL
	 JG1kNLBXRy+xFNgVdGbpc2EPi14joiuMK9X9RQIoTghhXGT6tJ9uijusoK3lioXHZb
	 MrUTOaVYU0AeRZ2r38Jo6wW8c4DI8yQLELhAKf/0Nk74nxovTcAFfbk9RP2CmPs5Fo
	 0aIxt+4J/Pvu4YzF1YWUENxNIk5TTs+Ytc/x4YxtlQ79/Ps/FEIcRRtgO8LYDjAvMA
	 kr1VjrGXqgblQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912D6C369D3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172726475358.1449.764586280821333472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab658f6a30a8468c22b3344c36ec1aab2c4124083b0db3b9acc6eedcbaa8e8b8
Date: Wed, 25 Sep 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727264753
