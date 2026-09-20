Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FFCD3148D8
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789948234; cv=none; b=nKHBnwhOI+TmWuqf9XkCgERVP0ZZ7MV+mxKfDFiUxZnKNXrlHwUNKJIrARDcOs8NrSHY2+wYuatwQ4gT3uDXbBH9aqAIRUDLngrDaYFfq7m4791cBnCaWQxF4xm+Ul3EcTso72Q5SYhk8Tjbdf1o9Q6Z8VFe5Dyl7gabL4wCoy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789948234; c=relaxed/simple;
	bh=SwfvW5CU753WawGX4w3qe3EWRClxXCKhCs+Iu4SJHYk=;
	h=To:Subject:From:Message-Id:Date; b=dSyzF/WiPrMNpdZuWQGApRQ3RaNEYdq7pfW3+T8ycMI8Wj5Ghm7ymhjVKv8qCHcd+3v7SrRuiyele0dTz1s2zL9O0ESn4xNcjy4+A4cxcMvMeuFj0wj0cBuyKjc4h9CUdk2oRDbzauWq4ca9gbIqGa7TptppqFQxTJCNhMsvvRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GPCr//4m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GPCr//4m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAA35C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789948233;
	bh=SwfvW5CU753WawGX4w3qe3EWRClxXCKhCs+Iu4SJHYk=;
	h=To:Subject:From:Date:From;
	b=GPCr//4mNKT8x0CsrwGaVgF+OdQ8fbHVvnchOggn4k7B82LUtnABMxGgd++FQMRrj
	 z8a/IYY2kd/xo5rBvWzh2oJFgrqMeFcdr/ZBh5wYM6ewbz86NLA3UnKBLAQJiH6cel
	 zdN8Aam924zOaSXvCYQnk3S+2zId+RDeDAylF6DyaQCXnwoZcJPZhiRVXfWhvraReZ
	 1oMcAen7ge6AD3K+8iY7VqElvsh5NDir0IoGvIB2q99qW5wEIC9aemZkFZzHQUCZqU
	 nl84phn9gzZnjVRhRFkpqz0GZB0xmO8Rkmd81WJozBvy23BUSVGOX1J0IzHQsmBmSO
	 XMfAze3Zn5/qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B11A5C982D8
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178994823369.20049.11136850500160747474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7c0556fd6c6b5e8a7dbd467bb7fd484e937b3eb57a916352fcb97c406fc447d
Date: Sun, 20 Sep 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789948233
