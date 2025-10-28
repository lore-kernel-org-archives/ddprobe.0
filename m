Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1FA219A8A
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761634194; cv=none; b=IkFp9fxgqFfdKJBT+XrZYT/yjWfmRyuepF5TYPPtsjA0N8PYuBgFbnxJ0pIiM69OhbOE7t/CjlQwYp4F/UvFTUftqSQEhRq7C6L325VQIPIQCtASuvI6ZYLcV4h3NK1uYlTxt0UQIdVVZr7AEMZXv4ITw2OST7fgLzJtwbhK3l8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761634194; c=relaxed/simple;
	bh=VgdZK+IywN9NrhFvir0S0R3qAM4awWW9j1NJ3ENRUKw=;
	h=To:Subject:From:Message-Id:Date; b=ki1jGAZyIXX+7OaErRIKfBREyMcu0sO3xiKrsBh/j+fYs+L0gvxggWe34IAjFiRyvhmTbcNFvb4V0G9pnCw0Pa3ycoDSRn3hQeOCbGBXyq1rlM0wsV7K8BuW5jhEGEM+gz40gYMn6GyUIJXMR6JE8YWWw+eijOOJmvIv9rTPEtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CwxMA97f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CwxMA97f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63A9C4CEFF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761634193;
	bh=VgdZK+IywN9NrhFvir0S0R3qAM4awWW9j1NJ3ENRUKw=;
	h=To:Subject:From:Date:From;
	b=CwxMA97fu/NNovVMCWKlrI66Q1La0Xz7uK0RsR3YIZtWb3plcCnsgstk8tGF5hfYn
	 9I/CBHKacI7pKQizD8CKDF5pnhtcAp69+J6M5tDNQtmLzN07xIrphEUYsfhZA+ntwi
	 h2w+2R7bhj0V7qY/CVp3V1lBCrfyw5Ubyz+SEg9qoKuY2K8GUFl4r4PfXqI4s6KoAi
	 LKT8rsgNEF+dcDUU7HD4Uy6b3NMaCiqxS9Esd54wzJ3y2zR1ssGFOaUcG+ja83RbfL
	 wkJHa3laTJlv6vbomDvKDW/2e1qGqzXOk7eKu7ibF1oMymWOj+KaoIOTHdRBl4ahcZ
	 sHbpS/EfAo+Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95655CCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176163419360.16566.7000160148525059619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04c99f129ed8b3261244c29572f8f783a05ab8344d4f2e6e9f120ce0a21b7f1e
Date: Tue, 28 Oct 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761634193
