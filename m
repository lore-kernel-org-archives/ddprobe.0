Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B3450276
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 03:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778556634; cv=none; b=UWbWQgE9bN08RJ5ySbvCIqO7FE29oRS43vNLmXQY/w9GQioMdMUvr5TrDwlxjgZaYnIbY1pPUIWa9ObMH7P8JYih+bVA5aCeET11otISb7XOs2a60P9Cb/d1A2nlxmvLKbGoaNeWyP1WlcjxJa+GEDaLdPvcJF/Qn38foO39rR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778556634; c=relaxed/simple;
	bh=w2RDGQ+GrfvkhDoSjpJBZ9F9lDUs40rBH/8KsADarb8=;
	h=To:Subject:From:Message-Id:Date; b=NKIELzkb07OZFjuSunbcp0JhwDFdnBKyHJQUM2ulHhdhbokrqfm1tPG/CiwEhlryRV/sC+LeQ/1SdfLa9W92tdr7s7Aph5bMb859CNceUTIASybSmTuKnRrLA+UPZ/qgmSnj59I1s2x7ni1OIPfPLdqJ6MXyqVtwUPXUi1/dqL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lo0httMw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lo0httMw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC4A5C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778556633;
	bh=w2RDGQ+GrfvkhDoSjpJBZ9F9lDUs40rBH/8KsADarb8=;
	h=To:Subject:From:Date:From;
	b=Lo0httMwXdMSqsBn4oje77/4I+n/CkVSTOhhrfuKhaXZmpn+9YhcG6NJ/t/2zwGHU
	 S8eIAfi8UqoXnDJOFeJS8hBsqGp3diE5/8ic2YaFKGBK/7dzXe61KIX47JIhGiRJe7
	 YXD3sMu56G8uEl/fbIvotHIAvt3Na1WyksEi3gsnqW94TB0CoDjMSu3fT/4SgvtEwS
	 ngIDE4/mPmg+kmYQgI0ZdH3Ups1egyTB6NOWxBjD+ikudL6L6AelW38+5PzDgfZLbQ
	 KeuJqBSMCHR3MqVY0rWAOcJRroP5KiIydEYVtwpDkDWFqGw6kwKdHBg3LEH+4OqStG
	 /4NWPq2x/iNcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA197CD37BE
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177855663368.13377.10168847105826395110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f96d1e5c2830654cdf548001aa8595bb5cf0c63cc4a0b9e89b7f63c69bfa14d1
Date: Tue, 12 May 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778556633
