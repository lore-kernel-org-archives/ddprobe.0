Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C195CDF1
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 01:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782436054; cv=none; b=gmzU88WaAkyTxQMHdVorvE/lfplvJFYmJRd+hMzsgG9b8+AidXAGSnkIR+1BZr7Y8gxRXTy3Dm8DJA7l6O0Ah2mEQ3R5BwoHrvmIKq4rxK77gSDboz6nsmkEeDrS0yM6on7ATTN3kT5MHmazcQwnBsoTFY4vyRAqRipFPIdntKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782436054; c=relaxed/simple;
	bh=XkMDwhsUnmmH7unjZ8Nm51BX/rNQNdOTq3SMz7P5wFU=;
	h=To:Subject:From:Message-Id:Date; b=VZI5UPpS+9DnIRqTgkb0Nb1oP1fSqn5arr2RLcDKXruOl2JdjvNbatJwkAoXXzIYOqqE5lcvvXpAAs3tFRv+xuuaDW5JAgcVUui4N4zjt1LsocVqiWyADv5qtb6basLmIPog7NOEDcJdHb3dkddiw/m6+0Qy9BGgLfYXuORDXBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DxVn1LFj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DxVn1LFj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA0EC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 01:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782436053;
	bh=XkMDwhsUnmmH7unjZ8Nm51BX/rNQNdOTq3SMz7P5wFU=;
	h=To:Subject:From:Date:From;
	b=DxVn1LFjC+5yTN1bY3ita8yNImODoHbeqnVUlsnwEDW9hLZSPhr0pwQYfIWwMIed0
	 TgFcv1jOE4cZkdiC//u8fTGYKcuZF7nSx4rtxhDLC3asHE7YNkszT9wjhDqKh6+aM7
	 WUG2wx/c9vwmJfdSb7LGYMKrVb7gQVeYBZjTmAdlN1Oq4ieBudaJmfdOJEHHP9r8go
	 7gAIcahdCfBN/ZHBLZ2sWmRFO5eR0EzQcciRmc7dM/ixR93Ow7in9SOZpxRP4bIfv6
	 W0SuXV8JJWIO5XZimHjqnzQN+9OnHEHLf6oqVn9rRXI7Al4BG8pHwEAkuwMsWEJ1Ty
	 xgZ/xGmD3yGCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF707CDE008
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 01:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178243605368.1313.11639733821211138141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 293ed9581157aae7e89537f673c7ab4db14ec7be4f2f97ac3e290558e20004ef
Date: Fri, 26 Jun 2026 01:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782436053
