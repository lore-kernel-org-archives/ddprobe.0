Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F29831E0F7
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 18:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769106234; cv=none; b=QxdGjyRbqlogU9cfK0rsCP8/1I8OPGrJUWR0HhI6bhLAADmKFE08iJbsW92kpBAmx5hOHiG66alVi9PlGaeBFGp4A8ENbYLXUQXQmXApd9fknQJ3jzX7qmGU00LCBSdWHa859+MHvnl6f43VqSVeM/HOQp0ekD9AjFU0IJ0oajA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769106234; c=relaxed/simple;
	bh=+VMFum3Q6Mb3MpHzgzSwqUCf2ZvI8V8eetZtaj+cOW4=;
	h=To:Subject:From:Message-Id:Date; b=SJOPX67yES0QL3G7fughrgTdjludHlZY0pqjfBXJUe2k5mj4uYKyeEuoUCWiF15Z5E4dLzYYhgC7qOdoR1QN3yoTH9j7iJvDwyySO+Uq0TiPw6tmnp01sXGPfdmwX8fU2QjaT/i1ctUyU/B+qeq2G4Rd360hOvHA2JH/Bpsu+9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lSiRURJh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lSiRURJh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38F4C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769106233;
	bh=+VMFum3Q6Mb3MpHzgzSwqUCf2ZvI8V8eetZtaj+cOW4=;
	h=To:Subject:From:Date:From;
	b=lSiRURJhvyU8Ukh0hwys+bLKlkAO0avM4uOKhXASYfHkZHkQRU234RD247fuHswLx
	 EEHZiynvIf5bnYfP3F5Zu0WGn9iOmAsg94Q3DGISKgEO18IKRoqiznGM1SylIa510D
	 4/gpxzhx3ra8SVwD2JzNkSI4FNeNuO7amv1+rmKO7rBnY9ANedjWvQFSnpjn3pPds8
	 pEqB/xGzPOALpac20inisawSUURq4OYxhqYnzPv7S4FYw/LYYG5heDSfVd+eGgw/F5
	 0kQqahrzllndaqRwgHG+5mI3cCo1z0ZHPFpIkpwFoCBLPQdmmNlvkPPm/ioGYMI6+e
	 fDWstNvuKbx+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9278ED6CFA3
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176910623357.32048.10920574280089497368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a207700107bdc309e610f4b7225f20eea9a03db077864a1e93f20ee152f5a13d
Date: Thu, 22 Jan 2026 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769106233
