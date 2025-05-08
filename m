Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212E2283CB0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746721794; cv=none; b=OGS4NOqXZ/2Zcfu4v0tM+IZI+04tzLaOjzaAwG4Jxnf5AxyWk1gYjJCJgqhi01lov+UXsyTbJtnqtQrpvvNQjZs6JjVTdeRbQ6fveKbwIgHMDiGl0W9cgQXs7HVtvdEX5vIIJye1MwOWPUSMzWdg2s/jzYPupIcnrHIFbE4iklg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746721794; c=relaxed/simple;
	bh=4PybpTKCymQKCCdkagD694cTqKCfiRM1CJU8pjZ0AMU=;
	h=To:Subject:From:Message-Id:Date; b=mi4scGMKUZqB4VZjmZs9pHcqG9oYSTUItPIuSdKEMN+mqL18Qo6Cemik3nhdG47o5Dd4/4A0XPYUKmhCl1NQwN0jN2xbeGcRS/96dYB0udCgFkwwghYgfqecurU60QPaq9r2UMQvHIOK5aYoyBfDIF1tCWyjPQlmW5ermCBN7VM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GnU+CX76; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GnU+CX76"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FD3C4CEF2
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746721793;
	bh=4PybpTKCymQKCCdkagD694cTqKCfiRM1CJU8pjZ0AMU=;
	h=To:Subject:From:Date:From;
	b=GnU+CX76vulzOyrxNdN4hcNbAnJWlOW2gWukhJQCZg+hOo+peGOOLaPALjcnDy/+L
	 Ipe6e92sgvxaWjluSeMcAlOYZZt1E7LKwntYFWUCPBxBSd3wcVLwFhhKTPuuXe4R2g
	 oJBQn/qIHz0V+zdjCx37lJiELNyRYvQGRYNMc7rw/WOC2O+eAiZtJm/CEocBtUk6ZN
	 om8eCaoLXydgmymOP9Jn9F9vU44x1PSECaYhf6bogbXvG4MHue9vYsZbPPKrpw/yvf
	 Rhn7x7b38OjvW7ez8bpxgNoZqqdqx7HGfh5z55q9t5yLmJ62g7v9nwucoaLUFOccW5
	 aFw7x7oi39rtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90263C3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174672179358.26936.16490776177681792976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cacd992cf80fc8f45db638f0b2fc24c352ff6a7bd8ba6090ba9a6b78e03f605f
Date: Thu, 08 May 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746721793
