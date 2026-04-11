Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 754D02853F3
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 04:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775881054; cv=none; b=pzGbWTgNIbbrRAYxtp0Gy/8hWWcqxddledpgOWiORYIg9dNHefOWhCK1z7qWEP6eydcjiFYSIOJSrZSk8A4bAiubHLnqbukmkFwEgYjHRrQgodl/W1rRuqPIMkcwQActl8jBulPIeDUFUVn+fN/hQSlhJKqMf0ZPdk9bQfNVN98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775881054; c=relaxed/simple;
	bh=EwePXE4qO0wWv+WyiSLWLRdblAvgbV/TQgzVQDCQeso=;
	h=To:Subject:From:Message-Id:Date; b=ihr1Alz7veWcqKB/KnXktZYqetoNlAMWDk/INdsCrFWOKypU0gLQxTeOX5UzZQZMNDDvT/Z8adi9iIXrFw9QTGItUeLmTXkUMrN4llBFcxXnGxBM4/jQbAtZ+D5HkSVFl+RFvmOD9TFBNmJwQeAOXlgJr/CYrhGZ1/VxefBkneQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ltFgACPl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ltFgACPl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF3C3C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 04:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775881053;
	bh=EwePXE4qO0wWv+WyiSLWLRdblAvgbV/TQgzVQDCQeso=;
	h=To:Subject:From:Date:From;
	b=ltFgACPlJ/ZLo2jSOLu4P1v+BwZK85X8EB5HPaTY9m2hE7iGP/kgyktLQXmu0TMf2
	 MqTcsxMBYjk6iEU/TsqSAYVegTaZY9MbaNI5PccOTpSTW41FUl0nj2nAjV5WQ6KFeS
	 M7KM7+l4OjZpDXfv3z5AATO30w2FNLFDmvTsspQAiTHjFZLnmis0CR43LAlSMRp1I9
	 xML8pisdJTFZYE43hu1fGqByRaw9X6DbSks9YctpFCGnQ+IEejkKsWiaZNJmxplLCF
	 GTWxutChiQNl/U3DLgCffPiorcuHoeNrzhpGHBRT7+Te/arrFAlDmKBnK07yMmbG1T
	 GnagnQeksbEHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCB9EF45A12
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 04:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177588105373.23010.7856166529981785958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 852807c1b2b9c710b4cdb29a6832e8af5970f13c91473ad8e54c27169ba5c4b1
Date: Sat, 11 Apr 2026 04:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775881053
