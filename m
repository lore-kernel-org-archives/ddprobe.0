Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84B8235E92B
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786262434; cv=none; b=mN+FVXQUhZ2NE6ypjUpwhGvYIr0G30A7BGhzBQS4gGaNRB2oJqmA9BNTnk8p/zQlON9KVi/t9U4H/lacXnJO6CEKpRg+wj2CPIxZqNii78tD5QfOLPTQNOa3QOLIwxLN1PzCpsr6JLycoB+uEdvKFnGUJd0NQAu7Ekk266e6ouE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786262434; c=relaxed/simple;
	bh=N/MxTRwNptGzt1RjXVtE5NFVunMAZPgtkwVUgPH+1iY=;
	h=To:Subject:From:Message-Id:Date; b=Ot2lpfjt/PMZM0TBT43FGFK8LQdl5rwUzD1CiTPWSgfOWTp1pymHx1TcaofKJL66XigIo28SnwlpN1GK35DVmSe7nb+nb44FtbGhpcKp8Cec6tai0gXa59kSUEfRdT697xND9FT6yN3jgjsAsgYBHLfDruVmjChumsJyqtWNAQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b6O9AA/Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b6O9AA/Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3865C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786262433;
	bh=N/MxTRwNptGzt1RjXVtE5NFVunMAZPgtkwVUgPH+1iY=;
	h=To:Subject:From:Date:From;
	b=b6O9AA/YCP8MwpMXW0FN/PNSGMgYmZS9tvnAyK08BKqE6ldkbDiShQAcfH0QC4zJP
	 x6CfMFkhuoTS2m8xryk57KSyse7o5gVDbe096nOlLhnDMqEsQrKBGbEYNeSXdABNvT
	 HTwCa4F79NAqXy1SUgcDltK8hDL7bilq5uhyYJS78Qj71NmsKDvoDc0kg/Yti8IlO+
	 dUbk6fywd/iDiy6Mwz/uSstoURtXH/qHpJ/0Ms2n8JPFW5nqeVfbqCH5aJHWqq8Isk
	 NeJAttxmYA7odDfkXEjeFZbCmvlV/Gd/1dbacIG7Wb9TVqKmkRmJ5LNrvw+k0k0EuR
	 JQKdEAVZ/s34g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B91E7C5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178626243372.27338.12598861218532616344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8edbc5e5e78b2966549a78fa16c11efac6d954313046527d2bace52f4b36a4d1
Date: Sun, 09 Aug 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786262433
