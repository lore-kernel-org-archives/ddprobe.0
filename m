Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57FEF3939BD
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789902634; cv=none; b=PgA3HDci3bEtFLMqDaKyY+hiG2vTM+UGZDbeeZhYxFR4TTX0/5GA5WVHxX4YkrwoQaXxluQ++6pbs3NgdcfUOO0GnRyxBZgP66dMJPlTf0VXhA/FiAQBIXvV8GR2wasHarUKrcaUs+gSqDq4tI7I2whjmeN+6mkMD/roV4Gg6XY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789902634; c=relaxed/simple;
	bh=TWU5f6XtzSvy1nmcZXDmLlVnNzAT8czdtaDuThoz6C8=;
	h=To:Subject:From:Message-Id:Date; b=nV7UiHrnvdDxuIl3THizfI9xf8pugHNRHpTtr0cyBtXz9FFKa8oQeFM5djnxsP9z1qBkBtWKN25QZCP3scnXaslx5t7GAL09woKlBXIXv2Qv3DivXa5BZFUgdkLnoktM7CvqE+ODKC51MVtpg4b/FIHkIEpH3zMN12/5zUAdwM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W0pt6EtB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W0pt6EtB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D207FC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789902633;
	bh=TWU5f6XtzSvy1nmcZXDmLlVnNzAT8czdtaDuThoz6C8=;
	h=To:Subject:From:Date:From;
	b=W0pt6EtBy6cwPoOquvkwrCUdBjqAHV1V+CxWneZD42e+vlrmNqXGe/NA7E1WtOfar
	 UNJYw/sDE3mXtzW71HWaVKAYyARYKV6oZ29NJ0MSvslLDnVWQ3vDluY0Mps1Pg7+x/
	 bWYHtGS/37h/54fnZhBKpOjW9Cg6meCR+UzkGB8t4O0ZXM7oubHBc7x/+AYLF4a4WF
	 nbRu+cbyPuurkECcEYiwMXFfWNKFRmge5pxi3ccPx8gwDPd4RukfqDRJ3FULsPoyPJ
	 AhKSVvBrTfxVPL6jMERByLQHtw8JJMwAWBCiIaXFuM7lYtqMjVLFtIJUA/xV7Rys3W
	 wAsbVC6+fR86A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB393C982E6
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178990263369.3325.2622673126046872538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fab807f156ed57ef4ee8593666d4bae3a1fd9e31000ba15afe661bb537588d0
Date: Sun, 20 Sep 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789902633
