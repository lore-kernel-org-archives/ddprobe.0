Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E2B638F626
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 10:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784542714; cv=none; b=bvru3IZ0YV9hjS6Xs9cCmYpLY9XPwIREodXSzgsCDGk/yLmmbjfmUD2Kecacxz+/VURXfQlcDB0SoZUeHLYxRHy46zRCJ9uPbZvvjaUsHD8+n/AkgY0VAYaFZ6Z3GtB0H3AjW4oJe3rXpo70wwE1tRAWuspRTTIr+r5ZxgxAj6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784542714; c=relaxed/simple;
	bh=fJVef03orefjbI6wR+xehuVzZIXOQEIS5zwbDKWazC4=;
	h=To:Subject:From:Message-Id:Date; b=Enps1oO0U1C13CZX+AcI4wnIccF3aWaBMxYEdyY+ff28gQh9j2wZD5iAsHEjbRVuVtf85H0BoLfx6Gk3mQbvk5lyPWtZjGjJyXravTLrh1EO5jBpcDvRvrPN90VKDV6eFskLC6VY86LsLzXZeSoc+S6RSWOq+gjqAeg4aMsXgRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lHcyCTqn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lHcyCTqn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D578FC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 10:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784542713;
	bh=fJVef03orefjbI6wR+xehuVzZIXOQEIS5zwbDKWazC4=;
	h=To:Subject:From:Date:From;
	b=lHcyCTqnhx3hplk5Q+G6f9Bj9OFRw3X+OTSEHbNAWjWGCcYWVrIS5EhRCqSx2CYuX
	 GK0gFM4/kv/q5pThuWe//0JJcPcW9SSR+JYoOZV/VGin7hqvQftgi8GGOVYiFJ0z/b
	 37HNWstXFV4pmhcqsZIg3cw1gSoeZqzgVBSHQ1kc1LjUte/srL9dRIRbILOcML+8VM
	 uL68Gmx3MFUy2la2AY9r9N71QAzcUigvMJRs6me/Tag+2Ln3f+4hXhGZN+rXMyRVfr
	 rQy0FqUTxIiKyBO/aIQ6cUsukwRRzDZlJhC3tBrIZrW8ULmWwI61gvtKgH0JwsLSUR
	 QXzGuJrSTsFHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD40C44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 10:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178454271371.23447.17957981906307886927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c447a6dac60d9de13309bc8c399cb52011cd70c0f35010b429eaab2d0ff0bffa
Date: Mon, 20 Jul 2026 10:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784542713
