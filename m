Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF14292918
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 15:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763738514; cv=none; b=GvkNWDVL+gGvXyJi4Z2XPK8grXTceVRggFP1D5n1n7u7t+DSjpk8NNCQzlBTuOrPaa8w2DB/kVaSWtRJ6rk4U8FIZQPTVVuoCtjq0MnnsbUbAiV2FZ+iWs0RwL8CtBIpg5/of2Fvo1NpERwNhFN6UR0PtRSYfFYjNQF0oMFLTB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763738514; c=relaxed/simple;
	bh=kmOHD4GmB9/61YndSV9JgRyM1+Ni2F+5Ww0N5MbjEMo=;
	h=To:Subject:From:Message-Id:Date; b=CSd22ANgAXe3OmF1OTdxRceLImguhbmsWy7poeJiE9HIdxFJWATuqRFLZ/bnt084uJoVzBrO9NXdgTHOmFKuyHd4OVfKKXcyIi9OBVUK6qa3SzVMzZ4jBOXX4GHM80/Mcf7QGhx3T3ydlyH9Q85nfP5IoWB0wx+aCI2fMAWAEQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E5FKhBOw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E5FKhBOw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C74C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 15:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763738513;
	bh=kmOHD4GmB9/61YndSV9JgRyM1+Ni2F+5Ww0N5MbjEMo=;
	h=To:Subject:From:Date:From;
	b=E5FKhBOwOQ7+vx3mWvwGvzYiFRX1i9yZaCcgY8OhyoJE42ioGW3VmIfC5gh/OtnTf
	 SQjf/2BgxA53LRooJuTDMDtD0WG84J7PywjiGZu1CB1xXXtNKymvIc/JbfTVUEDQiV
	 yfEmP9/fVheQWS0wywLQwHMJ1zBqeWnL5AVFDD5HX+U0TsTNv3MWYUPC+Iwqx/AXf9
	 Wc88MsBhBSWHNYEr5rWobksxHRXsf1zPGAh/R2exO1JZnB/l6wYbhvwH5cEFpCT03v
	 GJsj/sZV6iLCAi87ZdQK+Re5KwKmEEJOJS02W2KwFBb1tvIhSmxSdTIRj0kqmiipwe
	 +dWfmVUEKa+Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94119CFC28B
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 15:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176373851359.11972.14534585337039784000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8d1c97cb3ed677ed4cd10d5ceec9bf84c3f9798c3789bdb43b41a21cb761721
Date: Fri, 21 Nov 2025 15:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763738513
