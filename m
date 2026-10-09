Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411C6310784
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791523834; cv=none; b=h7f9C8a9QAWBI9MlNcyzmUa5018xRr8JF7EoAAqE8dIMHSCRPX0xKodx5NsuOrPV3mBriXNjvpoXVjFjywDDN+RaNsz9MjrVsXX1aErIKkklN60/FucQgSomJr5cpBz+MNa2xxDFR8hUav5Say0S7I96w5VbnnGOTEqY3xF4/7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791523834; c=relaxed/simple;
	bh=BKAqgZ9HZEbVCXA3y8HMGsys2ouZMhTPnlsaJGjTeHY=;
	h=To:Subject:From:Message-Id:Date; b=gpRGOMMqE+b5DDLtFFW0l4bVUBy3tlvDVHowJO1OtMlWDXjaltUTeDpMWQxpG2eV89QT+VyRR9cKWyBO9E98PDrFeYNnjcXvVfBgKQd1T26VPanp1hQsWqRUVyHEar50GWzYcTuklLP9YUK5USLPZy9AkqS7ZyRtS5UX9Zaw7Ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IXwyrKdu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IXwyrKdu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF00CC2BCF7
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791523833;
	bh=BKAqgZ9HZEbVCXA3y8HMGsys2ouZMhTPnlsaJGjTeHY=;
	h=To:Subject:From:Date:From;
	b=IXwyrKduR2iOJzJylb5CYbXzKfKpw+nRvCUrP/UPuLesEFTOhAqB/zViqLESwxb4Q
	 sg5WtPdepe81oXpR3jxMU0SCNfex2PH41WO4xfWu4D8Knf2b/7MvW8IjdxCMI6IfLU
	 OB5bqQyvdew17sWs93EJ4HKc+HKC9DiNQfMcGTXZN89nR5g2Pq6YRo5qvqhRk8HO7C
	 OqD2RwJPEsc0npg5V5b/8HK0uTcOnszpSaUi61lALFVTMM90LWlJUn6KwL9V5+o9DS
	 uNAQSStYpWwYHWKek+aBFOYdtyfomiWVpZ0DMvFjtMil93PFUjXsaE8yWFPAqcb1Qj
	 54jmMEmop42gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD094CA6015
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179152383369.24902.15682155714523612139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b98d162b75bfdb74be2936f4bad1f86bd6e3ad65387ee0157d15b951f548c958
Date: Fri, 09 Oct 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791523833
