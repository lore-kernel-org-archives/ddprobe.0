Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437F940D578
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788276034; cv=none; b=LMfS8otC2isePNoCif83jmuM8mCSXCZyjFp8XW4x5oFIz1bwIP2UlsJoWj1jlDr/mMy/DQtIbmi2T/i2Y6IFGt2OizuB7oEkn85YfyGCZq7/kPXkD0Pv8MjP1QTNpeaYNcQGet2HFN85CBJL+VxU7/rUogueNj+tCWIYz+p3Aso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788276034; c=relaxed/simple;
	bh=lAmTcLAHM4uGXHwvFg3SEe0hadf9YqEtS2BTIrmcwr4=;
	h=To:Subject:From:Message-Id:Date; b=RFde9a5r/ekDLdC2Q2Zb8vdsRm6Zm6qwy4sn9ZJOOnoRm0ytNEddRYRcB4CrDhRcFeUhEvMadbI0iDDpqdBRHZB75vEM/XUSil9Rf+vqdtwtM3IcIXLKlFiJ9BifGg89wieE080ZUp2xA7tbMTPAcRNDB1Oa2p3Xu8qT41cGEPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U/bhJLFS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U/bhJLFS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD587C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788276033;
	bh=lAmTcLAHM4uGXHwvFg3SEe0hadf9YqEtS2BTIrmcwr4=;
	h=To:Subject:From:Date:From;
	b=U/bhJLFSrNgj3cZPHdJg+Kvwb4Iht8zDp9tvTUNlsqmT+gBzI124zPEhxlZOqjXup
	 uzLYleTF37tg7VmWC18452It3Vmae/7iL/jZSmmB11WrQc7cmTiwCCUGYhv9XbUAG4
	 NC4MMkZFoxub1qx9aXtZmkjGoYiCPTNoq8CTQ5YXeae5MWRVcsfcuggpCTcWRx9syW
	 Zj7GUCjSc179anW60oagpksALOewD8lfrPuFMXU+U7o7tfexPeOQ6L+iViOR+YLywx
	 1vEgn3GEzq12zp9deqiMox0/mgp+hFJyJZTJvVTGShhegSl81vslk6BNc157PYk3nV
	 EfRNLx3ticmKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA14BC61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178827603368.6600.11874797494242551278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65b1ea4445ea8c34dfebaf28bfe4a6a86a8348f0b3983db1b72bf8d47a68fd80
Date: Tue, 01 Sep 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788276033
