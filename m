Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B170125B9
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 20:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720902023; cv=none; b=U/BW+YqOAyfSu7Me3DSE4rNiof169nvoMe55G170QVdGRIFckiPWXEuK+WsaZ28miaqUfhTtzPlVFFl7SFJVtljvC3TCx22FLA5B6iu+B9r596c4+r/eqLgzXjCDAdvmxh8bE9BsgrwGEOAaxKRKUrXbiZ2xda5+uTKHRFzy3xI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720902023; c=relaxed/simple;
	bh=Dj4+PK3+etk0EgkmlWHWfHKIAQ4MCmPQHlS5SOMloXY=;
	h=To:Subject:From:Message-Id:Date; b=ipWEOlos0MfCqLizInV4SlEe2gDLRlYd6uWHXgBtjNqsFO4pklv82kdbzfahzEI8SFrOfrxE5cUj+JGNeGr7ixdLn2zEOLkxYuKZr27joRb2E24psdhsUnjNL0KAxaAQYffTzdnpTtGzIPjxy6h7iCXOdZ3hSRA8SgafEsDVbVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QkzMCNYt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QkzMCNYt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7DA8C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 20:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720902022;
	bh=Dj4+PK3+etk0EgkmlWHWfHKIAQ4MCmPQHlS5SOMloXY=;
	h=To:Subject:From:Date:From;
	b=QkzMCNYt+AAig1+JtWQpBK2CyMcIx2joXPNHfHQlIf4bqqz0GJfFXUbQYr2r7nWGz
	 rt/MXWkCDR94e8ae33eHrXtBDij+bOZ4R5j2Cznt/3pM4OtpQW3d20Oc5WnQy576oj
	 0A4MZHNs3x+E/fFqAz77Jy1/7CnIB6gby6cnUXfLSlBpEfIvPwZ6LFZOeL3L8C/dh5
	 XV1CG2m9rvefv5JVzP306yNDr/P7t8fyt7KYWAzSDXl1u3K6JsMmhGbtWrs5qUCoxH
	 y6qg/AlQcy/tMzk1+BU1peWL6Ddhx9kRuM2wlwSleO5gWdgHyvepmp5y1tEsbrzmqQ
	 e5WHfqtg8ohxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEE6CC3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 20:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172090202281.10989.3151182971122792713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4b8c38056c8b535742694aaafa8559915d841bc840f7821a189f99b81538129
Date: Sat, 13 Jul 2024 20:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720902022
