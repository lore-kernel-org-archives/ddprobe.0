Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD0D19CD0A
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 03:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777604854; cv=none; b=iVnLLqS3IwXQHtjittAltd6yV8tTQ80oCtdMBo3f+nl/C4G9fAbSrl9vlXLf53+m4c9s9WvcOqBcYtPG+zBBdWmNDXNX7xPWafELIRWeA5OkH8KU9X9fkOa5vmxOnZhJTNWQ8wkPW11ncwNUJ93xGIwp3+OHFipUz1/aJKvG04k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777604854; c=relaxed/simple;
	bh=6oBNRieN4PIqeSIcvaOq0r3nfBAUwdqRsTKQPDYdCgE=;
	h=To:Subject:From:Message-Id:Date; b=q990KYrGMn3hUCezFzwtYE+VCyxM5f9MqPjLrXie2c/QX9lCbO5gl1BqchqeBhY1MVCj9eRF43v52jUpl0YPxDiuS48Y8GITyqIw/dVhF6pb4AaCBqNqDScKPcIlswHZn3A4SWRzP9O4N8elIq4nJa/g2ZbpVq4UB5QReJKyUyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BevTgxGs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BevTgxGs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C25F6C2BCB3
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 03:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777604853;
	bh=6oBNRieN4PIqeSIcvaOq0r3nfBAUwdqRsTKQPDYdCgE=;
	h=To:Subject:From:Date:From;
	b=BevTgxGsBMhh6GnwT4+tIWJgMFiv7CPI3aWnYJqlzgnFEQ4ub/qionvOKVquBIcHS
	 f1cnnkvbjxmf7XxxOIQofycGaJSwUBnFpBcguU+m6Rj/dMgUzvp1Lb9OUMEHnCug3d
	 d2GGJ+dMEfSZuPOcZ8MwP9OMMJ1sQjmQ8N9ZA2cSkMlj2HQ4JBgw28lfqK31PfHgp2
	 eYz98vL23I2ticEmLOQeldP/hnC28MvWu5/+o/7jhECGnfjV9kOiPlakxSkvcizVcW
	 R1U6ED4B5/KqhFbh1vOzGTE9MBesWbentU09nK64q5goSBtcKBiG7Gc6WuVZyvEZh5
	 GzbClmb9YOlQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9E3CD13DA
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 03:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177760485368.23132.3076380601213074656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f75fb09bdd2a8a3461e908193e836b24c3e056b33e97a24cb95bd7f3eaf6536
Date: Fri, 01 May 2026 03:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777604853
