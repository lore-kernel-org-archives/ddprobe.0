Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36EA235CBAF
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763029194; cv=none; b=dLE4jGlG0APWDKxMASDB8BL9Dmg75RQxPxH1niK+zxZSpbvIir22a8I+UUHFCXMttp+B9dlLOQFdNYY/lJ99nzHleJQxQsa/Z3Qn14C/guMkiT98HFvZ0Cd7ZS9sugKehjLRVwCWAT+s1C+wIBfEjT+ucTEaz6W4DRZym8vhKxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763029194; c=relaxed/simple;
	bh=+d6yN6Bqt5l7gky8hUhagEyLHoyO17gb0MM4ESlh+EI=;
	h=To:Subject:From:Message-Id:Date; b=HyIC3tpgTLa9gUwofRJ94tTGbMM/clhwFe7k/Cf2hNE9ziTox2hjRjQzhJshmQNJ8j/725I5r2TGFc5KiPhh0EgX6A1mSoTcz+tEd+7V/2psqduUh/sCRmEKz6/3mUVVWJeAtwYGtnLuF/st3NW7o/jCCSQ4nRe4mEHnaQdA4NU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sLiG6z7A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sLiG6z7A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0BB7C113D0
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763029193;
	bh=+d6yN6Bqt5l7gky8hUhagEyLHoyO17gb0MM4ESlh+EI=;
	h=To:Subject:From:Date:From;
	b=sLiG6z7AEugE4Pb0N0++6R7lMGfK2mpDe7r1ZR5l25EPdXEk2IVyNE6VjdgHXiKv2
	 LoMS7rDGJztxU0FyeLrzfuAGeieg7kedpPQW3aPbI2GLTwX/qeFlYsFbPw5HatrQRB
	 QyMdlndQNQRKxd3/MhDuJwCEjzE4bY1OPILBneSMqURpU23AlG1vbvxSkgO8U7AgJK
	 bMvLoGhZ5oeCeqUN4AqilNP2XmV1hplNWkUCCx1WBSlVijTKbK8BrZTSSPwMU6frSO
	 5or75rBwDT74tnvGq+fhyL9GUrgFj3dvpBcBJfePfB3k6870pWPAOcf93WyFp4uu1a
	 d8GJmXZj27U+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C4DCD5BB4
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176302919359.10239.1825533609860574247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af3501cb861e3771b1441749f1c7f85e8daa90852fc025b055af00a56839660e
Date: Thu, 13 Nov 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763029193
