Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C0C3E6DFA
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 19:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778183854; cv=none; b=WhTRJjNDJKlsYz8uZvKei+V+QOhbyCL/v8fWs04zOOBpiVxxwINrtPaMV/sOUb4wedSt4FbgNt8JMDEGCHQsm3troYsOZf3+u3Epj5cNqvXd48T/X4Sm6O6CF0YygLYjzI+WvYLNCgU0rZRq9t2AfIgzrmrL9JsmfnbCvtQD08Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778183854; c=relaxed/simple;
	bh=Mv5jwKWo+N3ynJ6DP8AzK7I/LN9fRQ1v0iEmvyPNGDM=;
	h=To:Subject:From:Message-Id:Date; b=Jjec6yxdRdjx1l4P1O7kPhy+UpAJ8yPVHO8x7RV+EJgl9wn2zfgqK2mssSr6MYyJ6qxu76RLHZsjAPHJ2a5a5bMeaL+gIxC1AxOBjD+3JhP6KgUOhTnoEHtogYqPzRxv7LMS+1mX3vUOTa+B/OL84zsrHvR9Pep/hDStowgiqac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZG8101LP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZG8101LP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C00F0C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 19:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778183853;
	bh=Mv5jwKWo+N3ynJ6DP8AzK7I/LN9fRQ1v0iEmvyPNGDM=;
	h=To:Subject:From:Date:From;
	b=ZG8101LPCuPXs4gCoee6WdncTo+CCyz0HZCMiTFGWJpD7LzHEXuvyCw2QTV2svAf9
	 uVNsdjxHU/Rq+P8afNvGGrMwkrRxh5OSy15p6ZBJu6m+ND5fZ/68DYJuoPWZ9TiiJf
	 o6fWyySkhBJkAx4O3YAebwKLDN/DXksMLWvnoC4b3n/ze4SuwQqI8fsvxWGa63EZfT
	 BBy2tOOG5pMvKKBiF3hVfk4Bs54VgMe9EHNf0z88vhfPaSJp5EyY6I9erv6LiIZuIs
	 XzolEMGM7G5tou9KPMipRkmKWyPq1wka2n7IOwUmLhZLBsY87y7CDJuXTh8WwFBKeM
	 f8Q1hZyXZeRCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC32CD343F
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 19:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177818385368.15260.9315477981499811548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f30d55fba6029b3cb0a3373069d63e9831be47e96b645732bc1eb90abff25a4
Date: Thu, 07 May 2026 19:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778183853
