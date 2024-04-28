Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E2A41A89
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 16:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714321343; cv=none; b=iEREs4OgO0TiY/EsAkQtD3DzH1XQH0OsFHIjMXp0isLvEQS2xLaFvKM1dz/1rhru249ZAsFECXxLUKc7rj8SQkwNzNsAzfKzqfkoF3bIuE4th05NBhOgWemLMzNNpsWNVei6/lwOLVUoOHrAWWt75xIiZPtMcP993NrGnFqlK60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714321343; c=relaxed/simple;
	bh=cwgK4oQ4DKaE1yfKfa7n4K5lvrucl+Y/+IUc2Gm1NYg=;
	h=To:Subject:From:Message-Id:Date; b=VGiLIAVawT8LPPVFEzHdWgswPEQa9CNN4w3OEsfDhXz0b1Amcnfpe6ipTax7OjvtZRn09Md0+R5xS47cgG+LDeVapHyCO04dGo5sHPBeZNgtLhAtnIxz5CEDlizhHK4oLI8HIhhCrhnLEdp90BhkVHrWAUVllDK7OjeXrlZUe3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MuZsbiUR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MuZsbiUR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1580C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 16:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714321342;
	bh=cwgK4oQ4DKaE1yfKfa7n4K5lvrucl+Y/+IUc2Gm1NYg=;
	h=To:Subject:From:Date:From;
	b=MuZsbiURXLvBZiwiDbpGXlZRpTWzhiymiY2JX1F2WBNYha8L7/sEdwZNSOSqV7qGK
	 qUTd+tOlqNxuh/g4Jf1GtLgATXYJ/IVVHUxeGlIJxipx+NZRhhy8uUu37C0fRW+TUQ
	 uKyJodSeIvGCcLByrEgL6nE3STr+Cvdai2LUQGhChUk3OfqJR632eRbfCBlf9Rw1fb
	 PnVpHb8QfaQICOTpOzDbxtj0YK81NrYAJfPDXNxEKzFLvwmURM//ouUQKWl9Wwv8fH
	 GKg856V6KR9Dssgh5V+A/7t9IKsnyXU0J3NU7kDYH1ZeqJ1teUZSjzW+/TOuNTpmUk
	 ogToz4WBq4I3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF1B0C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 16:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171432134277.29499.2186428138250821992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feb69966cede4c5dadb6ab52a2cf151c68eeef68572d0ebcbbc78061ae62a76c
Date: Sun, 28 Apr 2024 16:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714321342
