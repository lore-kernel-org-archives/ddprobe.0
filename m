Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1A1449B2B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 03:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784605114; cv=none; b=Z6bwiCC8lzgMJQEcD7+dshdZnHgOe2y4oRJgBRHJLVGrKMzCgw5tA1Nk8m2AfgVmTHpOkc99jv6hLEWSCFa9bJl6QwiPX4gp+ZF4kWuUrVW2qk0MjYvHy6cdGQMzxmyDzZyzwyRk+hiw8KEaOEztLWjG8CzOi1boGNjCrhdNW6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784605114; c=relaxed/simple;
	bh=5/3t1+Due+IVaUuz7GK6CRKtnU6rqyKVrMt6P5rciO8=;
	h=To:Subject:From:Message-Id:Date; b=u7Cfz2IThdcEPzSuva0UdAW1xP4dCLCSnPzweVeGz5Io9HCq4xhNtNeuxNZ3xplItd2/VcFVOsR8gq+zHFB2ivJaz/bJKEqKkXe6EAQd8v2Ta0MstQpO0a0tQEBMbr1eDVhG7DpUrqYK7wIYBjjBahb++YIS4wQhFpXXsTOrUoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bc1bsUF4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bc1bsUF4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E109FC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 03:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784605113;
	bh=5/3t1+Due+IVaUuz7GK6CRKtnU6rqyKVrMt6P5rciO8=;
	h=To:Subject:From:Date:From;
	b=bc1bsUF4Gm7M4/wmOzNaVRwLQsd+D2XR15h8MAMincSzFZi4Qr6Ra6oUeBbmAB06c
	 j5B7ZtmvYsKdCUrhcsyda0hpEaK1hYTj98iv2pg05RgGZpDJhYBi1cApJaAMlrNIKr
	 nb5L3Ff5fviwlf7emN8dxjMlaicfXBJtH88xZdqLGSiifTNPvin1IW5Jccp3eIQLPX
	 O1xKtblPf24nOAjI6D+tkW1UBKBnLZpW0h8la7A2wgF7jKtRvOCwMry3Q1HBCiod+e
	 44nX0eqctMebtGSoCsuWV787+VaY+IhCkcjl5zJFMratrJf2QG5BH1xyEJv/maqkB3
	 Ujyp+y9nUrv/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9D17C4451C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 03:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178460511372.13445.3966487794042939083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f054406f7c796a1b56b1bd1f466707b6e29416848a48e3d708d77c785a16168e
Date: Tue, 21 Jul 2026 03:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784605113
