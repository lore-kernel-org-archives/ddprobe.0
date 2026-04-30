Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09B5926C39E
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 22:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777589854; cv=none; b=DAo4VEj7mRRs1nqyTlmxPR6aDVwjgEq+1dgZPC+dW/rS3l7bK7w5kd0QvIQdRcsa86lwUKc73VmgR/qJtFggqJ9WVWpXOXsc9yoH16om/Y+3OycPsqYm6qgxGmKRgTf4n7yLIWqIwGu/FAB2AUEgItciA25D5ZO+zBiya0JLRv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777589854; c=relaxed/simple;
	bh=APGgVv3Nl0cSgNyfpZph+l7N4b22AuVVyNGObpphxa0=;
	h=To:Subject:From:Message-Id:Date; b=FcgNOs7bh+mH3iyOYfIHNOdnvTvSpCHTlu0AOi8lM1nUsZ3k6jvo2nzS3HjC1/42kObg6339hHEAYJL1M2lXZFbxcaUwv/+uiLcNhdBEw+y2yKsQLjA3+gGPdTPGDGpuJOlymMOwqai38h+P41emBT5GnCgE8X1fe7vnGqU6XI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IwAFzZvj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IwAFzZvj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC395C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 22:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777589853;
	bh=APGgVv3Nl0cSgNyfpZph+l7N4b22AuVVyNGObpphxa0=;
	h=To:Subject:From:Date:From;
	b=IwAFzZvjayLd4Sw34PMxNQJu7pTfi24n84DBYOH5JlysSBfKp1kkV4m27VAC5zP7V
	 kenDK/7EpzGC0lXbh8yPSwJv6v5vsyzyqREWjgFZwaUE6mOiUShnycPJtQ5Opwvzon
	 DAV3OULofc0rxTKkxT7X1/rX4EJP/Aw6MErI3Oc9v5SOmRaHeuRzxImGHuJLIE5ptB
	 ispyBh/V419zQxYWDJVxI7FLJAisQlAEyh+kRPZxVhpT44q2qtRP8nxrf80odH1HnB
	 L9CDl+5vNzS2FGUwhyaMuZyoyQwUF94qopb8V23rjtzyg50kW5QI85hmhxQOobujpf
	 MsMLJWTkqcbOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB13CD13DE
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 22:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177758985368.15069.12273662717693689766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f430c6035f4ca1b10ddf8e503998fef8e985e05cb2df6b9d2483d878112f9054
Date: Thu, 30 Apr 2026 22:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777589853
