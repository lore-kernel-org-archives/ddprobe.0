Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7E91E0DE8
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792032634; cv=none; b=mMaHTwkwj1Iq3Kd2yjX3bSryrL/6hoJhpCi1PElQvl7j/UEboBzBWSq1rk4ca9icWUrG85mjvLUNSEFGsnVKZBVuanSkI8IUpXdVMAv1fl+N2kZpmTvFbX5RTgnWz5i9rFtOvCxKLVetm3Cuf6qDZOFhI0jURPNu/8SaE8QTyn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792032634; c=relaxed/simple;
	bh=mPBx3adZMqwemZferRrSFfgDDUWwCtgu5yHApodIZCw=;
	h=To:Subject:From:Message-Id:Date; b=ng+MG05VNdkyhJ2dQydUWbukurRJkKf/De8aKFL59e60N53M3Zziiezo63tEpfVbNx37mv+nlmhTEJFyRL+HXLSOnnZAF3zzOb6quzKYS00jnvqfnt4uzvQBst42T5KMGCwY2/jh6TXwEeI/JJ9aoM6KvnDNgDd+19yjZrmjBuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tqKVNvtn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tqKVNvtn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA9A0C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792032633;
	bh=mPBx3adZMqwemZferRrSFfgDDUWwCtgu5yHApodIZCw=;
	h=To:Subject:From:Date:From;
	b=tqKVNvtnqsbkMUhGun9bjSYxZQmhH11sGrIFkvyyhD0iQJUgfnlVelJdLqUjhfJBh
	 Ql4dtxFbzuY19Og35w5ZOFyDb6ySWld5UMI0SXdZtY8uFimqsBDyDvojtLHf+Wk/12
	 ZrbJiJMvSQKCIJz1T95/YGtfo6rojh/Z5HR5mKVDztWi3JpVaBuFqF/xmmGLOfQTzh
	 aQN81ttQLHjgJICNWQlMYFq+WijQv6m/VjWCiemtuhoZENCIeGeq/Y8LQrhUw/QqRD
	 Vr0S56oHUgcg2mJcwu/H9KuzuWBIngBQ71Qcaax35TlDg9rx2Ea8lFYEgdHpPbZtEt
	 hFtp0vf0DwhLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF249CC6B33
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179203263370.28794.8647611330830802849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe64eb54f4e3e3d0f1a6f728c10e3f45c789229ef939239462014d5906a3963d
Date: Thu, 15 Oct 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792032633
