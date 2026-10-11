Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A19DA1E0DE8
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791732634; cv=none; b=b7sot9PChfBHVi32kY1skibe7T2yOSpGpdjz/132w0P3JczOaxHl3nckb33fUSTkE/YRRPTQ2Pb/y3lsQjprXqDv0MYBG2Zg9e7Li2w6rvCgAzMj8wC/l+lJngFiU7pOugcSWnHD/OW1NA9P+Y8MQtRiwA2/VvXN70XGN0i25ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791732634; c=relaxed/simple;
	bh=U5vGisX18hAAG/d/PqDyTW4O/1lvXOIYJhT86E4gwQU=;
	h=To:Subject:From:Message-Id:Date; b=sHahmfcMzSbKF93qN/fd3b6DvupLq0Jd7CD8dmiFPKBr7uRblt3uqcdMlUE5nje2uA9+3tD3/U93AAY/I9Cw7Zo8yIjIxZjfNeEg7Hh6tzy4eFhvxoFgFftVaye0P/c14KfZBN6rVmVULIy/9DbRxqLlFvSSx7qccvShlAH8IDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lp7JV+SE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lp7JV+SE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC9B9C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791732633;
	bh=U5vGisX18hAAG/d/PqDyTW4O/1lvXOIYJhT86E4gwQU=;
	h=To:Subject:From:Date:From;
	b=Lp7JV+SEEwhGZiX1eyHZHFVgi0ojwr1VJk9G1lUsSnPQ5PgeOM4PQ83IGjFv82gQy
	 WAQ2AkzhcQG3KyzaZnDfZIsMtEdWLpHRhdYDAbmuF6kLb3NjT7oPFtw7Dde7kddrLR
	 185BrdtbSwkBwW156vgD1iltsx4Di45kS6h46ll5gOo8k9RHqBRnRPKZ+fW5jdozo4
	 9zc2wNDQUMZOvHfo6j345oo33Cw4joenokBdEGo3SBQCuCZkZTtJuo5bVtOwFY1gc7
	 pZqIqo6jyAXs79+5MRwy/OlZCOFh/w/HHpNrDGM1jWXVQCaYkkkCDSdMpoph0PM26O
	 xHXVlCag9Fkaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B758CCA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179173263370.5787.4727245217399766914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3f1a3b4924872a593b7889ba1c1d59144e1f65a2edfbc7598f2e7246894ac76
Date: Sun, 11 Oct 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791732633
