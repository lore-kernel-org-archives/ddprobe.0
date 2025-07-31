Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7F13595A
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753935594; cv=none; b=nHVp82ENSUmOGrEhrcbsmtHDarE5ubeG9YP5uUNNePxZk9COxPQg3dtkj7dlf9/WZIOKLmUxYFJo3GBeqlTYwQ3zPaszZ7xuNQsdU3dI4dIrqN/PyZt2KA5YupktI9HTC3ayJ3Z9G3yETWmjWq0UTwD2fHS2BXBtXcS1A9bJjBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753935594; c=relaxed/simple;
	bh=bdSeJc01kjZ0Vp+7Hih0cQOFpND+CX6lWuJTbw4ABuU=;
	h=To:Subject:From:Message-Id:Date; b=iiZmZ/9VcM06mYZJtCcJp33TzQ7zPlITxovWuToAJob7YLsDhcHzPn+248WD77JCasUfsBYHnD6ONbGUs0AbtJ4H/2XdBCNw5ZKRbwnBK/NSwnfKJqU2MtUlG6KmUj9UGzzz6J6LscbJTlVOeEZGoaGFmaEKQ67TLeWjTKbIeHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uv470LD/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uv470LD/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC21C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753935593;
	bh=bdSeJc01kjZ0Vp+7Hih0cQOFpND+CX6lWuJTbw4ABuU=;
	h=To:Subject:From:Date:From;
	b=Uv470LD/grRWNL6UJ5t2CWm61ywgbkXnK2xzTpPadCBpvXP64y+vOQ/UFiglrDU3v
	 5YhMiKJqY1Bv28etWAOrmcdlFwYjzTtL5lw6Hkm1xu0TjDW2cfpAwS7IKh08uZ8Cqp
	 6sqsL32ceC5n3VjerYAPC2BnD7+cW6oKQbIHgZl+ylLxIAjftRhbbQlUz3E2B+uXLI
	 Dt9z+AtPqH7PdRTZQIgvVi/Ci0DwIozcsyMMm8sFBtTmJGhRDe7p33xgfcGM9Y/+SN
	 5CcqFW5rDTRqVB3+6KQrLx0xsREn5REPgpdtg/KONnpwgx2QTJ2GNEUxltBO/T1iR0
	 T4tKKLDJhUnIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC10C87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175393559360.29766.14484603033627153200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dd847af5c535c5c3c913b1672b0073fedff52c409725edc8f769423ff65e0cc
Date: Thu, 31 Jul 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753935593
