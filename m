Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C8B14ABE
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 00:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780964674; cv=none; b=n0hpiJjz4c+ZyZoRFCHlG2hxa/mkvH1e5h1EfC/DDjQoq6sLuXjgyUkVI7H7arudKZ68Drx9eUeSO2UBsmTnZ4n56C9Derrz45rjMuqPyGlaqxYbKEQl2ZJj2lhdQcW/REDBqKZnyHhmgjPvwgs91XQ2xmiWIq4w/p8CO52C63k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780964674; c=relaxed/simple;
	bh=Mirw/M91QA/5lLpcO8wykopp3zT5sE9bFrLSLhnH4jM=;
	h=To:Subject:From:Message-Id:Date; b=cVYbgfw93WlJgeK/Fg8BHnzINsq3Yq/+iEJq+wV2G8RfQyW0BsUW3U/CD4A7cla9lAemKhsz51Rzcf606uxEvnPmtTm5djoJc7QAjwIbs9YICkqdPT09cLQlzlXkzh9PGUlqAiz4HhQtIJrkUhVC+rDAyplBaDLzekMFnodHBHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SSXH+i8I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SSXH+i8I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAC62C2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 00:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780964673;
	bh=Mirw/M91QA/5lLpcO8wykopp3zT5sE9bFrLSLhnH4jM=;
	h=To:Subject:From:Date:From;
	b=SSXH+i8I+CfE9mb6JlSPoFKmjqLL+sirn02B/rmPwJ+KLnXq1xMMP6IcaNM/NOIsg
	 +j0Ym/pWJxsi1l46Pwx05DLcrh2mUyWrJAUKdvz+3mQ6fKovdm+QrY1knF/SGikcYM
	 G2/2CtIwmNFKFXbusjTVpVTwvgJfXQU6+X3HF1++/3kJLN3nlriNlHsg/ZEjILkdz9
	 Q9+XYzryITI/3hy6WNAPJegoDLlgUNLy0ouUZELQY7kRx+B5jL+dGoqS6P3+lenmUe
	 zrjzjFgUcqi7Jl74cqWcYNiAekRGUDxoG7eho1JtQ8MjFGn60GTvB/faaW39/5LIO4
	 GE0w9HJUzDZJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB5F2CD6E79
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 00:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178096467373.14588.3070428457260719064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 036e7e30ed6f971e37a3c10aaf7b2fbbe06ced1d32b3dd59c231632ccfa1fb2b
Date: Tue, 09 Jun 2026 00:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780964673
