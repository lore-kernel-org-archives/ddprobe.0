Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCCC212560
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 18:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764354774; cv=none; b=SVDM2VL5zqmctf4SWfx6HT+FqrzSMr0BgkjWdtWb0FcyZExAf7Fw4R1MQL5TyiM1aA+nIdYlzNZIwJXBygxyFkoq9kxk9VgeR5l4IXZYd9Toz5OHp93Vm5GV67dCN6860kLlvaMRRk1noCi5Jm+gJH4537qtt3bOWyHxkzMSAF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764354774; c=relaxed/simple;
	bh=gBaI+HF+8qYBvL6qzFhZl2HWV5vdyN+4m2UzvL7jLPw=;
	h=To:Subject:From:Message-Id:Date; b=LR3PfCxHWncM6WJVMcbXxiNbAiMuVf8J74c4xDwXXVX75GI3Plftb/aP7r7YbTqQkeoWfenzuRCY3MmpZZ0TG/ZzPX0Z5rjFEfcfXGitD5tN9g39ac3it6QeLNe9yguwlSbvq/0gZbJRlbpsaLliDdZ4h+hLWqWxgu21OZPPuao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RMIAiVWs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RMIAiVWs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06A4C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 18:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764354773;
	bh=gBaI+HF+8qYBvL6qzFhZl2HWV5vdyN+4m2UzvL7jLPw=;
	h=To:Subject:From:Date:From;
	b=RMIAiVWshXhUFF6gdaeiobQtitalwa4Je/GZlVpDKU7LSu0oJgDXDh/DLGHHLK8pV
	 hFmXrEpqPHlYfH0UvqJJAHJJ2gPQtAcNCTVUClUwhvFKzNdVP7j+b4oOW10Pt6x/2L
	 QHdad8hbHgOlZo/11Np7TszLnHco9nUyKXqE6cfONUx/PuAIed8uTnd7a6CEurj8CC
	 N4fT6DWwQcziVzNmJVcGTKK9tw4BaqaG0E+W0H8tV40fI6151XTq86mW3M91qEICDO
	 MXU+DLCO8ExPnjzwOAPWbMkQvePg1lQOlUZfcO4xJ/szkE4E3CZJa4LWvQIVn/X1oU
	 AYvsGqJumgQMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9025CD116E2
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 18:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176435477358.30424.9035208164490262547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 376bc5aa97947631138d5b2de462fbcd9a817f9d9576064944f7bcac5692ac66
Date: Fri, 28 Nov 2025 18:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764354773
