Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F39D1DDC07
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751479794; cv=none; b=XCz4B39Yb80m5RVepFn9tVxvWc+TnvH4APzwYalYNPqHBWWDGE7vKTjLDVr1HB3n0nLQ8Tbw5Zr1sK0PorYPxKxEwtx70VI5oI5nOt8m9BbCcyMISsncUEfIpZqkpCegAy9u2QFVyRPuLuOD5I8JfTq046E3sFtSEReWNU3/gJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751479794; c=relaxed/simple;
	bh=oIvAUGRBUWpIINnG2IHZu/EKkSjHr4lrS/4XWwuvnrA=;
	h=To:Subject:From:Message-Id:Date; b=r+gB60Y6EuO/X8UwTWtOB7EK4S/gaIETf0GJFJ+ZtYAJiqJV3YAUFwYhlPnnncE4YuP7JMd+DbvZP7ITv1U2u2m/tGUmYvoOJ/s9O3v85grxDMuR3MOAlF95KRponwJo3dJ1z7isZ/Ez/6u0PypohWXVBe/pZHvRCbjEQf4zRak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WSzrcsHk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WSzrcsHk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFD8AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751479793;
	bh=oIvAUGRBUWpIINnG2IHZu/EKkSjHr4lrS/4XWwuvnrA=;
	h=To:Subject:From:Date:From;
	b=WSzrcsHk9fDBZJVUBHHl/Oc0nzbb6AO2llDxrQo88fg39nWia4zSdCNA9flTx2Si6
	 bLY9A7+muRgWU8tzdBBAEUu0lZtygxXmd5GftnIPBkCUg5FQM7cpP/bCYADqkpErj4
	 FUSHKMqaTVE+oXDGrUJPXNp9SfcGEAMX5zPDILSyWhoEG5ZMCfkyn2jeXWeEq9xQJ+
	 HlK5FCwCzrJOXCudBSD4IyFs3mh7jZc9MMWBbXVkLjWzIM7o/NTtDAMyv6rXL3EgWL
	 /8B2uK/X/15L6qzUOsbRZqhEkrkdP+JuBxumU5y0oF3AtZEALcHjRBhFBbwQCP8oxO
	 33KphaPmv0luA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9B9C77B7C
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175147979370.18415.14693273451117288901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83416eb951b59291dc69301d3a679167a0e2dc3d4f9d20453d0f98c8f7eb0581
Date: Wed, 02 Jul 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751479793
