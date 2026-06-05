Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3F836C9F0
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 22:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780700074; cv=none; b=sRnzdg9WkvX2oRxnvHmGJ+bd0N5ZZb3wK25BYjtZZ+VFwz72bbQLsPiiPHMbikWfI3msJyAfJMyH0Jihx9ON7k1C3iZh/hCwxOdZSy/VCeOkpWfVudqgVMDtZLGsej6XEjQ8x15CqZjQzhEaVSzePNVumNAGGYtZx5XQBQfhNqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780700074; c=relaxed/simple;
	bh=ZJ/7yq9JaLPwLUb5tPPLpQe7DP9AJRmA02zF99TnsYg=;
	h=To:Subject:From:Message-Id:Date; b=qLzRgysIdJ1yA1GKTuASnnjS3rtROczjP/WkD32WkREu55baTvPPKhbhJGJkKcWdplHfNMTP3SJjq4Qxpjk/aGOrbVNUZr00pP5BOkpG+0Pdin6PkDTLBlactemzug6a1TCrqnZukN6sC7cBXafAJqKlK1G9aUdvVE3igNQOUJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QvUe+azV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QvUe+azV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C949DC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 22:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780700073;
	bh=ZJ/7yq9JaLPwLUb5tPPLpQe7DP9AJRmA02zF99TnsYg=;
	h=To:Subject:From:Date:From;
	b=QvUe+azVYAtwpV61bebsOVpce5a3iI2ZJG40TkxS18+u6WhRIRAlHeZMREGadaKco
	 C+jZCDgAsMayx8UILN0DauMxWoa1tJCa+dYPBnJ/qtZRT7VpKkNLjnHPDCj4Y1MKJr
	 VF5qa6jczb5z2h4fFYPQ6Ylg+I1Fq0ERbHQTvpqQKZl9UlsshUUjqyjCZuk6hQbe/B
	 TTTWovIwkL+w/A4QTZxApAenaizTi7EoCeiEc+nD7vmuHZWL3edp+mnH4xwRhv2Usk
	 pAKWUWkpUIel/gAcbv30ZbmH6LSaqI2uMRu40f9yo48Xm3H/YJldNFrOwr14tZACo4
	 apzsfUpHps1IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD745CD6E7E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 22:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178070007368.20192.15395197059051677672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f70ad7dc264ed27865026f7a9773c0b86b17748bcb42b4925616a069d1ae094
Date: Fri, 05 Jun 2026 22:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780700073
