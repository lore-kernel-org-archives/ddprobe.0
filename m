Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43AEE3B5F59
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 18:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780771474; cv=none; b=byjKNKVvggF5qG8KRuba9VYP4wIs6l+xYm6baph4wrivbaOmNjgR9oSOFtFhWJ+XElm2L8Wh8eFIOY2MCTXvcy9zu0IVkcKFqVKy+fSsKAdrcqVddyLYtzkOfMNQDB1jdwEL7DVLKJhnX0YiTGuJTUFHByVP8JWM4boQS1hPBsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780771474; c=relaxed/simple;
	bh=NCVZ4aTp/qYglJR9jqP1N8AZg+oRID3cTjAFJjrjuH0=;
	h=To:Subject:From:Message-Id:Date; b=VQrbUmmFwZavVC9LsrZ4L4l64/wbgsi/LGNh0h+tWXrDNZ+LbqiBBc29swT4osbCALIsLShyjEJw1/Fey/IfN38bot1QXfEym9VG4FRPeLud+GGF8KTi/NhaB5tKjPMbpyWy++enk/RCo5TjfvECqAcVajOjlwfHgsBUjnwgcOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LgPmGm4a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LgPmGm4a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D70FEC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 18:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780771473;
	bh=NCVZ4aTp/qYglJR9jqP1N8AZg+oRID3cTjAFJjrjuH0=;
	h=To:Subject:From:Date:From;
	b=LgPmGm4aTVCLtIrmoaefX7jLB2jGATnmvElG5oL4u40Bz5lL9SRC8ur0pOLTY9UlV
	 DNVFq5wP5+1l1A+TUrobAe2KlqqAw6EryBXxENnsb1F9oI9T/rXP4BraqgDpLjIqJP
	 bW5preeJ2jGQ465nCnm0a/ZhREg5QLHAGGvyvzcKivc3WQgqbD/sGq6pBZl2Tbvth3
	 edZ+nQUbo235HRMv9sPBfR2r9g4YkLrTB0hyogoLv93r6cUaY4rcjNK1qB7uq0lNEd
	 2KSZjvnF7mE5g9HpoUYG/4GVvwqexNnRA1sYsAtq2CfF7bVDPolDEOm/2Es9KQLgyh
	 vATMKJaNytB3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8AE9CD8C88
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 18:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178077147372.10989.5777515062142844204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e60557d5831a66302874803eceefd31d9120b9662514ac7da603a88a2830ba12
Date: Sat, 06 Jun 2026 18:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780771473
