Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06229346E54
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774914294; cv=none; b=jl9vZtGNSqpIKWIf+vexmecZyjEXx6D6vhPLkIZuxf1gqcI9SpdiQOtlX4OsmMxdnplFpRUe4N+XpZmMEIra/NsVhQHuHDURCrtSfz5v1kHrWLUsKZmzZpz23g8vVbcttr8mYukiIj/65Z7f4RJyzdANuGf0mZsZzG60S42Nez8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774914294; c=relaxed/simple;
	bh=kn4Ndvc/zy/YbJD35/jcUX5wrXV3veVDCf6QxyZsh0Q=;
	h=To:Subject:From:Message-Id:Date; b=ezqeiiQRWV6MAjwSnodJuBBsDTsdkBjP/0Ns6CzAIswu/QMqzGBXfR34fkCPQA5PyC1F9yDZGByeT+CWjIpdjnfJdo54gvrsp4zrdUIgOTsD7oWCLLyPANCNyOddqriRzvWjZsIdhKHcXhxgaf16gyIW0aDIRung307zlG2r9FQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vOHg/mJU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vOHg/mJU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E38EC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774914293;
	bh=kn4Ndvc/zy/YbJD35/jcUX5wrXV3veVDCf6QxyZsh0Q=;
	h=To:Subject:From:Date:From;
	b=vOHg/mJUGuijYTOFIUP9XPnvqHFA1QpYbG3L7Ib8GYRNY+zhOS6Azm6CXakknjwTH
	 eFqJSwG1yq5wqZjLhT1mx1224mVMqF7IXWLwbAFePT+l+RSFE4Ul9lQ+XsiSU7k2a/
	 g96gAR6BsE2KcujsYsWVMiyx2R1xTdMdiCWmjIQbtJjhLuwylb2ysZKW+I0E1n57lJ
	 AntNBwDGhGbfRMCYbJ63HZA1Vp7zH7gRd/i1o4qHpmXtSEimcJkSJU7r+961gh4s4U
	 d8zwh3XyVjkG1OMCiAjMx2xTOkm7AwwXZcXoNkg5yO6zsSZ+Z2qQ9jQbkGC6KHBilZ
	 1uKb0gqcLJO8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908D41061B28
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177491429358.23764.5783363483701868642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c18533dda50039b682d1034ce02b5fa10e03801cd0db35b06975a9f5478230f1
Date: Mon, 30 Mar 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774914293
