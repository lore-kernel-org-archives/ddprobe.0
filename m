Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96B2C2144CF
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 02:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763517714; cv=none; b=bPJMrePKxFqD7EAfcJj42KY/kUXXhxQnVGJyByudFzBto6f2AUwGeo2n2Au2rZ/rD8eH7Y7NnyUPHg74r1oFsKMRjYXPvsA1CCdkOzg+8N97Oghcs7zHoLDAhjBwmhkXzZYMZfDySwTdjGavfk7tUScD1dxLKU/MhgLP6fFxxqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763517714; c=relaxed/simple;
	bh=qa6uemYoljpTyV1rKNdnbPyu0EnJ2RlRMh8yw3v002Q=;
	h=To:Subject:From:Message-Id:Date; b=E6cJ0pe0hyKPKakJIZmLo+GjhTxz9dEl+l18hRFj4hoRyQwe5yv4ghRBVSLp6whFwhoU1tO53ui9NUfpKeb7mvX4f60zXyfB84fhHxPRYCvtYLf3SKoU6/VMvqzVfX9LQoLpQ0KyGCiGfjXyU/0zCFTTOV0gWVq20c5yU3/zlJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujx0ZNgf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujx0ZNgf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7845C2BCAF
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 02:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763517713;
	bh=qa6uemYoljpTyV1rKNdnbPyu0EnJ2RlRMh8yw3v002Q=;
	h=To:Subject:From:Date:From;
	b=ujx0ZNgfv+mY+1Wvstk57zan5imTBJq1anAg5TvBRvHTYN24sONk4MQNZtQHTVF9Y
	 gbR7iCtnpmXU6z+6rbyjvsnHHb4OJO2E3yKAI+iV/uHoVAQP80WPGmXnzaGif7VdkO
	 +KfE9yRuJ3DYLgXlTd4nCghsV1tj63xowaAm3ligapMFKSVoVMeZrghVgPAS5Bo8JQ
	 tCg6I9tcCTRm9A1jYauCCnWOz1dghEQ84nFK/XcztSLukBFgYnvvwTG17+x3BgFL8y
	 2pkQvAiDj+nlNa/gl8R+fPeFYIOZl9cYC1zAyO/2M6rhYCNLoMiKEzxajHzOjqvBTG
	 GeL6evRjlh7TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9413FCF2569
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 02:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176351771359.11430.2558378537299028364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2e4c76eeb5855880f41c29b406db00cc278615ce1df87c632ad33b583524848
Date: Wed, 19 Nov 2025 02:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763517713
