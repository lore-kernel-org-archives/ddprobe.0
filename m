Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D80171099
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 17:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713374963; cv=none; b=JN8aUVt6/Y+K/u1dL+T7fW5lt5G5JI/6HH/tT5ilotbbnJjRllEDXnxz7k63kEIR3vuHUklWCEh5Hz5oBYZw6HcRf+ISoTzeewh3C2Y1g4BBYBX9co054+yJFCu/h2IUey0aU2sjar8kD6G4vIOLQeSwrLf7N130C8wm7ChOZQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713374963; c=relaxed/simple;
	bh=Znpvh2JomBZLLwyM5xng4YEGJlxo/szHLC+USwaBzbA=;
	h=To:Subject:From:Message-Id:Date; b=lrckNaEbwFpw3sF/gIX7RaaH5daiq4X8NntAEXu/WBt13gTjS3+Y7JrfkgywVQWLiSy1TZ1fk+kKgUyx03C9pwVA3chf8i9fKrUGhFvGIE54/8XnMhPnuPoIXEH4YNBCWcmfewVxltmUUc7/WaqiCzwbXrEdBRNjxxQGYjm09To=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PA8sqQGF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PA8sqQGF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C35C072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 17:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713374962;
	bh=Znpvh2JomBZLLwyM5xng4YEGJlxo/szHLC+USwaBzbA=;
	h=To:Subject:From:Date:From;
	b=PA8sqQGFOPYsTsX4CHYWX+lLfTQzkvmsBUg+BPxGAB3aFgGbVPxksqD6wIPSGKdm1
	 wcAEbUejbNsSqzEtBj3VNwrcAdvWOOee99m1lp+tJ2MjcEN5hYq/EUMjO6uhvWpF3D
	 fvoYQNnvTX3Wccb5AwD1CMG2CsG32fWqfaggvnyqOPTRLf5Nq0u7c118mIu9bHGr0c
	 NST0oumMhaHGbIHXDIR88N1v/g975OY0/DkBXxOBLPgZF/FeqQaFWUDeyot4Z6mdfz
	 Hf8Lb8hYu5rU1LbkPR++Xjlw0YLyph8xrMUMOgao5gkxHBk/dyqWTrOgnMcI/5jU0N
	 JK9fEPtAD2LJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEB55C4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 17:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171337496277.4798.7498958675685258748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09877a3337f5b5707606ced8812ba45ac8b17338416efc51c6e50bf697741e95
Date: Wed, 17 Apr 2024 17:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713374962
