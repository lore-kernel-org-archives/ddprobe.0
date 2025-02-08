Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54686246339
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739030154; cv=none; b=Yd9EI9WyFEdoqnRCJdMvNploJVvB28qLlRw0LsCLSYlZo2mVGROuqvh8DDau1rswCQq0F7yiJ9N8zq8j+ci7KcE2laKfE7YPdL91Vi3XNHujN0oH90suwG53OThzyC+U4NRBjFJUBdsTLmgtLCye0LIBvgS9GHQhmj22g1nuxmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739030154; c=relaxed/simple;
	bh=XZrEPTdNFfBDjE7QicMKdLUm2P5RJ8hoR0r9ub6MgAE=;
	h=To:Subject:From:Message-Id:Date; b=bxbyMLWH22djzwhDg5FFav3DGnPNShnmfDsSSVWQUOTRCmfMpyDlo+vrKqJ8OTO98Q7o6dg23KmmoXw3WCNLrwBFI5wqrrSWrv4cbKF9hq0Fx5pHEKIJiqPvLFGFOI/cxlGI/kSoXxmmS/0Z4lmAXlphYzb0ApO1uUDMxl+jmC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pLQkDSP2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pLQkDSP2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B540CC4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739030153;
	bh=XZrEPTdNFfBDjE7QicMKdLUm2P5RJ8hoR0r9ub6MgAE=;
	h=To:Subject:From:Date:From;
	b=pLQkDSP2jzSinmnKSepckWUipQZAiW6IWAGASjFW0MgGxlTF+W7XGbaklHlFQfILE
	 vrw5kgwrYiHKqRAGz3lqHeFNkUhGilOQ0uohhqIi4gO4JhKAxHhuyaxyycIfgkOigA
	 AV7tCAFs3vW5k+IuuneYX3zXk9VeQzvJDo+JwtwguL0apI6c2a51xQqJj5ykYuNjki
	 Ja9jbg4ZbGS5gd2vKjkNjQunZkbMunBarchvW40U+BL0DqnvxMUDdu5NIA1uKqSeMa
	 NGE8WXWwtGeEFWsPm8F6ilUlJCw2293lh91+yRpbOOedW1+i8lF6lXIToKYqn8p4eQ
	 seskzfZiQmhUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF6CC02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173903015361.32757.11139964564349919571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89d576f468adc7ac11e910b952a54b65d3428723ed16e49d63a5ee607e72fb08
Date: Sat, 08 Feb 2025 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739030153
