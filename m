Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337041C5F13
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 03:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780284874; cv=none; b=emll/D0m4qahPQwP4X3zamujNibwNgtkriNb+LESp4vvj8e2fROZ2omfh1rxaNeDYHJiIzKk3tYnaNaj7AQa1TVAMlVaMwIY6ucDz/y4PePmMDUqZRsq2xOKK6q43CPVZf2HiyNLxqk2Sr9PqnKSiAy6DlQS3mzxi6sZtVGJsQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780284874; c=relaxed/simple;
	bh=RmZ89uppp5AJzs8XRHk6mPX3N+zXREPqsk6Sr+HOpsk=;
	h=To:Subject:From:Message-Id:Date; b=AebxBi3bkCoEw4iSPlcDwOAM07bk+tURDScGu9lyD8d8gFbWJ9DrbdZveeQy3UPTl4YrK1nSFaGMyVCiU4uuCUqzSa+RpSaY3DZ1+wde5Ljl3jJGfSSCDQHlBgQBYMEhAIwwHx7ktowaJc1iZqGVye0/FCpYt86aijn93Fpsr0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UhRIN+KK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UhRIN+KK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F45C2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 03:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780284873;
	bh=RmZ89uppp5AJzs8XRHk6mPX3N+zXREPqsk6Sr+HOpsk=;
	h=To:Subject:From:Date:From;
	b=UhRIN+KKm6JhJvOROyAwhef5c+Uy40oke9dLVfChMeJN1CibdUtZ59OBOTWTuVF+k
	 TWWC0yIpn2ZUqGxDkK1pg/JXN1jfncGJl2/FDhSRBk9SzMMq8cSrznuzWEMG6vgG17
	 ngvVYgOYl3qR/zGDmJ+HbNpckfSWjRVNIiZiknG/8+3yVxNbCx00RQTBaRPGb7zBG6
	 q2rFE6F42ASBZZKG3EE3zBRuI0/BVopLzWnb1VtEWvaghnjxt1lL7xx7Be9F+QY4jj
	 ZaHlMXn13ZWtqgZqxjMkPxlLSo5mm4bCOOFGXTZ02yV0xyzwecISttlyiup0XCE/sn
	 vt4WMyNTB/PxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCACBCD6E4C
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 03:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178028487371.7249.11328892295652013853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9d2b5022c1ea19ad9a302d2d5cbc499e83bcdb8d52149dc7a0116bbf80b5f27
Date: Mon, 01 Jun 2026 03:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780284873
