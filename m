Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8203CA481
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790658634; cv=none; b=EWHXVpf6/qI7d+UvirR9bWjcdQe/J1PHBx0LTKmAFlpKDzk5yGzm1ZXUEHdaiaJrEq5cXPkGqNfzYpmr0GQJm3tvfpCC1xHUe2YMB+ACSoKx+wmUDRUHxuTLFJpFYPE+SFQpkmfSU4xcTmOVzaGtlskrj7cEUx5eUWG4xm2uBkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790658634; c=relaxed/simple;
	bh=P1KIt6+5HRld1e3fphzjnB16O+yUBSWV4lnEUMtNmvc=;
	h=To:Subject:From:Message-Id:Date; b=FuJCwt4uMZmI1QvukDL2ljekippzWWtqAsIsg3vXXboXWoXqVSE9RAFT/7+ykSGP2bAvpbmfa+77gzJepSsXw2EKyFNxIOC4I5UNecPfWN8hRSHLjcOpml/D5mm6/0yIfFpl91KXCIiqQeIp6n5L0NUHcQDBUCjRfGQ4vEy0QN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AoXY6930; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AoXY6930"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE810C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790658633;
	bh=P1KIt6+5HRld1e3fphzjnB16O+yUBSWV4lnEUMtNmvc=;
	h=To:Subject:From:Date:From;
	b=AoXY69305n6Yyony9n9+Xs+bOo4uloWreaB7SSkzPo/hDf/L2N5NFAlyew9sK1opf
	 0R4Xv986Nekqtlmh284r2qOm2KaDGjYZK8iwqFsMlc4Mt2G4EXsNXXU+2tRD0vmCCP
	 39Zi8ON90L9BU5Y4c81qV0J0wGy8TRzWKjt5UDIqvlmRocLXhMblRXZRV7B5BNOwKm
	 /mtSshRiJ8N45sVfFJQb1rhJw9ahRF/TuyeY8J0ZJap7KOfn2O4tPd8Jq4pCggHP62
	 YBb222VGGqjhcHi105nXfHToVm2FTflZSdgqVst9U+mrFEjBA8A8vyfY0sG4GCK7Fv
	 i5bnhi1hphtvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB532C9832A
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179065863369.8295.3939956801430031586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 604b828bf83cd55a5378515f7620aca28bacaf92d12e3c48fc6cedbe0efbe2da
Date: Tue, 29 Sep 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790658633
