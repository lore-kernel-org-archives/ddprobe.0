Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56F2A41C7F
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 20:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721160323; cv=none; b=JEoz12Ii+7wNciNEkKZJk6E2KJXFq0IkD7Yppwj9pBeUr5GX0avYNlqAPoZrsCT9etJkDlHLVpUvwYRMW6PUe6bgoYHmDde1Rp8Xg+wnn1+/RPb2mH50W5ACkgUSUWY0FXKndTHVDNQofVK+6ZNP+Y9iW+2SPAkPeXIT7s/1Vho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721160323; c=relaxed/simple;
	bh=AZjCCuJev0C04PbQ+5a15EvRarMY4pz2o2KDBoq4Cys=;
	h=To:Subject:From:Message-Id:Date; b=R6hoSFJ0esgKAB+2Q0pAngC6+/vLkVihfVyZD2uyfdGQeG0JKAvnwLo0XSi49yOrx7Ezy1rZv+SQQniLP2kwBAoXCqdb8ZJO0seBv0JvsBJrdMpUuBHwSbvEvAj7Caid0Ater7s7Y//bPquggDkX0QGllwcfe9SNXTKsLihypRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u3cwTxUz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u3cwTxUz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D33E1C116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 20:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721160322;
	bh=AZjCCuJev0C04PbQ+5a15EvRarMY4pz2o2KDBoq4Cys=;
	h=To:Subject:From:Date:From;
	b=u3cwTxUz7yZWdkTOviGVs8anM4SRV0gyuih5igKsGAf7mUXrueV6n4TDFrvnjtPrB
	 /WmvTRltjJdkf2SBZnKH/EawpjSgyNsILpTQz3dM6bVUnGUZ+b+wnT5Keoiph+QpL/
	 /nVfw4DK2EigQmQpmiPXi2LQJ2bmQco8x/Whud9RcAqyrN/C545qp//ZIRzx93erKh
	 jt2FHthSl4xBHf9OttSlgXNpa7d177tuPlS1dRyhfmD3kw9BZqAUujgdVGE352Hfo4
	 n9odXSpxqQVhnbq1v4jmoPp0po+fJxgeC5bFTZ4mKLvtzkTV0w1F53QxHhgC7ESO8x
	 +qKZls6wvJHaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3D7BC3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 20:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172116032279.13899.18039862827515789458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af905b1b65f3882b7419daf72fca634aa35f6c1132d7d06bf5593f1d7122865b
Date: Tue, 16 Jul 2024 20:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721160322
