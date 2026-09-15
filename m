Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46851442FBE
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 10:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789469434; cv=none; b=CDjhGUXEKxCogAuJWj2ihv0DkVQMcRuiUpmfJ1u1eDnnUcNevQi+Wrv1HrgI8GnqkyLqv9iHxQ/BoTy7ePMPIsBOA91bGAZpWNkCXJjYpiEy/Mm3IlP89gBqd0isqOLuvgq3kMUbRbXjBuF3mRPn0Y1SA2bFIdPISc9ZJK613B4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789469434; c=relaxed/simple;
	bh=dnPRdY7/mu6/CJlqKz0YYXDrhQQXfCsEuUP/cRwQ5y4=;
	h=To:Subject:From:Message-Id:Date; b=CQcRs447kAPwaOmWvpTa3FRdn8FQ9vaSxbqvSPKphRk26KilQj+uEqsJf0tH8jEj3e8dyVtMPfsvPDRTc0BV3pan+e9o9EYCmLcRmwdGVTYYXKQa4FbOVAmfBizBcifSW5pYTMSblkp5PnOOiy0dFEK+YtSJRQxvDzmdU7jQMuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pZRwTyii; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZRwTyii"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C024AC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789469433;
	bh=dnPRdY7/mu6/CJlqKz0YYXDrhQQXfCsEuUP/cRwQ5y4=;
	h=To:Subject:From:Date:From;
	b=pZRwTyiiGoaAiBwgkOMqoEBh0vbIr8Jj8zGqavZnTCJDk+9hI9dzQS2lEMoMxf/sw
	 8bcnxSJ5IbnsqK4TS7JtVvrpabnM6/9l7geJYQsz9ew7EK7B2MtT8cxykutmIQHz9+
	 OwdzE262Lya+a3J+6CJUatBGqLgAjYhKVm+OZIM1m+Bbl8/qYxzieLSj9ZsaKeFEZb
	 zMUHndZNKf5RM5Nc3we6IBk1BrgjpyGZDEpZ2StYogJxXo0TZMj97PsUNS52WBE9ih
	 xpEF0G0flXrgopqU9+KpAsvC6I68epCNp2V59owky2Idj/RldgWy1gZNpZuuVSv0Rw
	 Cp8uzyP9jB3bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94F5C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178946943368.7426.11485560369804959828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 102f82b43169d610d492540ab4262860a4bdb740f48f35a8c95dde40a9c90377
Date: Tue, 15 Sep 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789469433
