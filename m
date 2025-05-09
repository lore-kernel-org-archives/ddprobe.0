Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B1F28ECFE
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746790794; cv=none; b=Ut5Qjd5skleTJTqJAmZ5JBU3UpB1zkBiUerKZegWqwbpx0BHdpV0Qw4EMIWLT0J2pmGglT8XMU+rqGqlSkeMSTka3baemJmBNoFmNfQCzs8pJCmrvNvfDFuIq6EpYtxdzWDYsKx4p0DfYEfqte1cxp2GsgKhGHI90NM0A8VvmNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746790794; c=relaxed/simple;
	bh=/fbWsqX5YR7Dr5LSbSdP6UPza1+OAOlyBBcsVSEBy78=;
	h=To:Subject:From:Message-Id:Date; b=mvR1PA/3WNZMTbGhSMd2lCSCyvURS8ySmT9jTRz3zSogBv98VnN4N1kbrFotJR354jCUuE2/pomi+JusouBK8NIblqAQNF8bI329EfT2SDFZYkBIPEAXoJ6AK0dXwJofDwcMbCPxXoH6K9jN0zVtJge1oCeIhQIdGGqiniXmEhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ag8/g1qS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ag8/g1qS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D83C4CEEE
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746790793;
	bh=/fbWsqX5YR7Dr5LSbSdP6UPza1+OAOlyBBcsVSEBy78=;
	h=To:Subject:From:Date:From;
	b=Ag8/g1qSc3LZ5U/7vwzhFRgpJL+sAuqZIzYSzsqGFKOIhd63alch+y8UxLnO8+E7K
	 +uo8sGIIX95B6ygaqttL69OCINIhXpP5dUG5yweQcTx6eXHWc+F3Q/1U5nYlQGyr8f
	 U18iCtcT00ZCF0CiaBBft7I9mkdoBwoZ9MVcG6CsrVZj6rgUGtdEsvgmtrgwyKjDBr
	 FSmMfeg8joGxLeQTcSvfoFUOchelfGxKQg2AuvStQHqU8YDMaSf3RusvchCaxawMoe
	 Mj/RwjSQptAVmiQHHx8tqUg/RHRYf4n+sb5TsGkoER5Z+Md2LFvXmtG2Zd+1EHJeHn
	 StmY0AuGLPGlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2BDC3ABC3
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174679079357.5333.17179414823086393605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28489f42ae34d8fa3821ada616c768347aa2e99be7abe9c5144c975ead114c51
Date: Fri, 09 May 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746790793
