Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3337426E16C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750888794; cv=none; b=WzFA+2Z8POw0YfZMvpC7FEj45yLEOPPYbXdcH/6d6T4JjE+RoSw6Pbb+xLdxSEItJeqkNx4eVXdjfX/SwoiqzRpD5S0cQD8L31OmYKR7i/2HUYC2tFrVpUnHeWK4lict/1l9MYqHg/m8J025jCT5TMlQc1+pfdUfDYA+pYOAUa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750888794; c=relaxed/simple;
	bh=oGumQaR/1sWMVLKnEfJCMr1S82r4TvAADrVZ3Tq2yD0=;
	h=To:Subject:From:Message-Id:Date; b=U0X/zDrDm4q88HsnFF3SeZnivpHmhh1Ps6BUtRz4lC4ER1XrVjVarN2KQAj7wzzvvu1ksctdG9uy7L6FESb0lzkjxaQw3bRhHE6UAGh3nos4LvaaKRjR17/OxaJrhewtf+lliQS0PhTH1+ygLZ0ts5Dm+eAp6bSLE/LrTpCNW7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AfLdtN2d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AfLdtN2d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B58C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750888793;
	bh=oGumQaR/1sWMVLKnEfJCMr1S82r4TvAADrVZ3Tq2yD0=;
	h=To:Subject:From:Date:From;
	b=AfLdtN2dEnJaHp+eErHYQyX4I2C04mvgplpT1+QoO1SvhWzueCyHKHq0EQQlZ+R3Y
	 tiZEi6/hn+WgQuBmA9zg2OEjoSeAeLXhLBZOJ27jsSNeGZFu1nlQh+FKhqwyYUQ9m3
	 ljV5k4JMIQcD0jss8oX9VAvlaYXRYhOzSWtCDgRuakTQQsHgKZ/tbrCSeXiEGruT3C
	 5ws0kqsH34PzRoYmqWHj0q+B04SjqLo0ZFwMJS79woaw0NlzyqHZsZ8225TpFW5n0a
	 E4rGRMIKT9irbA/GWRqmWZeXjpg5G2HuI9VFMi2OwqcFOwQnsCC5DnyXPpu7NZFbrP
	 dQbVhXmEyJEgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9503BC77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175088879357.9756.1133765560784291595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cefa2d931d32985692b7ea6b3ce260db7801e4eb91a13efc34b816d7277a45d3
Date: Wed, 25 Jun 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750888793
