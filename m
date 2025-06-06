Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319B31BF58
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749171594; cv=none; b=jThVm3lB4tDGaCV/xNC5dN5pz+8yiSm0kv8OuqJIwAUs04tc0UpsQXJeQh0VEs12I3S4SrVe2SkWjOpK1ZL4oGShvgexTYrZJbM3OVKE+/lI9sfS/4Qj8bXxZgga9QWKNLCkl1qolcXi0noHeHjrwQx2998nAfKoBnNwP6wImA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749171594; c=relaxed/simple;
	bh=jnhxs4HD1r4k+FeDWiwAswu9EIGh2W3N8nmhaPz+uF4=;
	h=To:Subject:From:Message-Id:Date; b=ddnz2ue6wGZkTrBI0WsYag7MbtcBAtw7+K4CFkMZDzYxDvUCVps8CxrzIX6M6ALI7cE12W4JMrzurMkA5wvhZhvvdPz7HdYAubUPPvm1DLJtj3Pdjp7byvvsOjAhvhcoVLfQwAy2/wat4RJJ4P6ZpDl46OSaCXwLfhKEDcd6BJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JevzotB6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JevzotB6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FD7C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749171593;
	bh=jnhxs4HD1r4k+FeDWiwAswu9EIGh2W3N8nmhaPz+uF4=;
	h=To:Subject:From:Date:From;
	b=JevzotB6SbG5AgbZSJhPUFMHo0W9PBhi4/rMa/25rV0WLfAG29cV7b+P+MKIsHxls
	 D5ds/7DjDM7fsmcG8ZqhxiFe0nh8rCR/vsKIUYoz8LCBSp2Bc0S70ZAM0/S/HuOroA
	 eDssosYp1my7q4sS4pZzG2ejoUA1xzv35HPirgRva6KcVDBQe7FjZrgq4CE2684GrR
	 17VZG3xfeJGNV7jN9srAJZrXUmWcZyyxZd6j3ltsUfU+KT9i7u39tTds6qNLnJHSKI
	 v8Yx7maCkqBg8XfP5oL+RM7N4x0FEqC4YhD51D7AlOqCANAJqWktc9cXDjP+/xgJVJ
	 tM/rbJc2VW0ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AE4C5B543
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174917159357.26555.7091790560550464519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1cffd621468977be31ed44f36bfad5e410c93660a9f5f1b59083182271ebcaf
Date: Fri, 06 Jun 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749171593
