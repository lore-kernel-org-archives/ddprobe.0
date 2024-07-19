Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265B41E871
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721399154; cv=none; b=APOgefRh0Dbz9ng+PYWEFK+s+fwD8sjRyRetJMyauaaL1tNbVQ5zs3dsW7mfs0bYeiRAyD9tSr/R+CDN84oqUfWppmx9LPGJgLH+C75kJ37TGZUesg66XYbjzbbccYiUcRiW/TfQJ6//gOqAffuegzoGlKwfqpJEPKmjpcWIeqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721399154; c=relaxed/simple;
	bh=YmTzG76C4xaZAI3Seic6OwaNzuBzRlFlAbXqn1oVYN8=;
	h=To:Subject:From:Message-Id:Date; b=hLko257OzUBHcjqYEaaadU5ZEbKcLPEKPO9DZTi+HKv1geCa65bD8IT8mCGOHXw0qOu8p5eKyM2F+8xkoBFvcz0SXGutMyDszwGMJqOkxTRZya+MWC0RWWW+17ykLybtS8pWcm0tYYCeAJyMhOE0BrbELpnoQCMUwufLyno+ogw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BNkFt5no; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BNkFt5no"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A271FC32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721399153;
	bh=YmTzG76C4xaZAI3Seic6OwaNzuBzRlFlAbXqn1oVYN8=;
	h=To:Subject:From:Date:From;
	b=BNkFt5nok0X4thhMS5QjpZs7H/fSeWPxOdggD+KZnqTj9M1a4nv9wByWy96iD/6ET
	 pTP7+eGiQ0qG3+waoBxUKIOEOowICvTWQP/XbpXB8v1pwmE79Kf1A1bzO97Tj4aeAB
	 K++8Um/CphxjphTYnz2BmTynheXG0QySqIraRqfEfeIyQWMN8QtADf7LqYgqneiaf3
	 iZZk3pGFGwDMEqibyGve5z0xEaJdNpzyhq9Jw54L+QvAr0M5AA1GwPjeVMr7nnEyLQ
	 t42DZQdPSifSiqqhBJnmg0IcYdx+/usY7hTFFkHXKRunxzhL++QrbANAx9DAbRfkfe
	 xMTtMymP8IhYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9247BC3DA59
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172139915359.24950.16935778275194792307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbb4786624b4ae12e8d303e8d2521a61f41e8b742c83e8bb763ce1b378c63221
Date: Fri, 19 Jul 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721399153
