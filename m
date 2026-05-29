Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483253876BB
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 06:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780035754; cv=none; b=O7uHBpCcTlV7Qv4jjTcjMWSn363Cg3cIHtE8274O/K0iecefVw3b4muFa9YabWsSpk4Pb6sIwtwVlZ4mxACOaM/3ZotXj1WKbGojQ20QpDqRbQmy3447K7Qq7HszmvFaefu+jqoeVr18hvOv7h0wQEUuTm47Eg0ckSuo4lO4fbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780035754; c=relaxed/simple;
	bh=YHsTZyJEAaF8bjYVr6Yq+P2/de8yt5fV5bStNQkbO3A=;
	h=To:Subject:From:Message-Id:Date; b=VH7jBe6TusBhcUEOG1rPXE1Nvh+HgTZdzdyENFA7d3W2k/NHWnrmTWTOm3vS8b3NRyxyMaO1Y//pwiNHvQ0Zs1TPOD0BDEKltcbFwycDPQcdjV5fmoycWCM+4PqPld520j++nv+spcocHVVF5jBpTP1xlBZEqgflXet+9AAl8qI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TcAJ1jQj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TcAJ1jQj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C74F6C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 06:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780035753;
	bh=YHsTZyJEAaF8bjYVr6Yq+P2/de8yt5fV5bStNQkbO3A=;
	h=To:Subject:From:Date:From;
	b=TcAJ1jQjI21YHYOsblo3xlQWdd1evwg3GM7WyBDiP+mzjKXtKrdydDeQXkJmfk4dZ
	 aZ5+44uau9IRvmUtNmqLMi0u6BA9XxVp8ddRvjKkR7zW6fN9I04Ws+ipzLVrhRrG17
	 rTJJMFKPAaAcDy8WNgwVxaBgdikS02y+zwOKOjJKncc55c5YCyRFJB9yxVB165sGyt
	 2mUF9hFFkexq+8pmfFKJj/KG6Ton1oQ49kdcWPYqqy1ezklfC5bWixAs7Mv5Ot+FD6
	 bBf1HZ/jakcbuJOq/lgUYM47R+ewhTwIT/MHjLMQL+y57pwgNv/kwF516LBpV1o/kg
	 qetJMkexz2fQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCC4CD6E45
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 06:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178003575370.29905.3832352858266651230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a5cb53efcf6f7aa2fe51ce99118d35e7fc9efac6adce2b6d625dde342fd10f1
Date: Fri, 29 May 2026 06:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780035753
