Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294352110E
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772999094; cv=none; b=BY4vgXWOMCbbyBWb99OCpBPxj4p9iMkpairbihhaB4PWhQ4+elN6VdwEKzFFy6TqEgUMc5mGszeH1LI4zlxmDQxqj2IdOhv8BEBW9L38FfLEp4ZQClRK5bwCMRUhxZfpkBGrVuBVNVnxCK4TCFC5aDDTomiCw9+GhL/XI+QSJZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772999094; c=relaxed/simple;
	bh=bx9q4mqC20P2aKL9fFC5V/EqaOR1WkVd2ZAs2AJIkKM=;
	h=To:Subject:From:Message-Id:Date; b=LlqwT/RuZwGVlixMWdTbYhfl1au0bMuthwcMlgsQeXhdUBdExdCZJ2JribbCN8nlRaP+95jCM1KNDsJn/ltRL7XiBtaisBOIxH40/ASkTWAVZY1FvIVQAhEL1W+vcAUmOZM++jYPvAxpsuoSjrBORRMMdldGFuOoM6xvvyIrZJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cgq1ruU4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cgq1ruU4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D0AC2BC86
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772999093;
	bh=bx9q4mqC20P2aKL9fFC5V/EqaOR1WkVd2ZAs2AJIkKM=;
	h=To:Subject:From:Date:From;
	b=Cgq1ruU4VvPtzFEAvb6q7EgijlHn/+XDhuGiXhcMMXJ5NO/zQ6b7crGvpQnIkJQQD
	 cICGpJ+m2T3NqOZYEA8Lj/seoU6QMOp2wnqxr7FEDvlrAQipq49dagWxA7DOFRqMNg
	 bzVaDgEgLYhbl/ptDNbOIHhr70Mb3i7lSWp6Sai2IMi13ROuNOvll0CO2q9tLTK84g
	 i4hp6qeEDADVPeG4OjhL/dF1wBOUS3HMrpAmxwmrTdi12sQ79YrYUxm340fAb25OJb
	 1EoHHxKac0TSdzc9k35VPidHhGiQ2c3q5rUj/vj2UHEVX4kYpQehVDigEirl0KOuae
	 00g0OZiFzGStQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93175EA8544
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177299909359.15787.7139092533125448953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 088df731d1d6c4f43e404aa45106af511915be8b540401eaa02aa686fe293f21
Date: Sun, 08 Mar 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772999093
