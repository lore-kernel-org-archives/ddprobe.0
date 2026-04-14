Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290192853FD
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 01:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776128854; cv=none; b=PbU1/M/AI9zM1OMdIV8QJ+TYVPSGwbnh9N5MLtSZjSzPdxnqb6NDFrmb6FmYdu+XPBw8fvQkTFk5LWnKeZXHjrC/jSdUJMoJegXnyEKCjzbHOaRK9xzIcuZv6JI2NK+oyFdqqjiwZwu29rsLlnASRnFyBR/9T2ZYQShw6OFXeOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776128854; c=relaxed/simple;
	bh=N2weKxk1M1dL4JjMpKoqYVUvGlXOMefLQ82yWh01Zgk=;
	h=To:Subject:From:Message-Id:Date; b=VAKVuMY+lqJqIx0YRFLhMAR+JSuffKUiPlyeqVRkea92qwR1eYP75YQDWSPqX7t9EOH6wGJL+tURaQsf/eZGfKsXJ8HzEMLNrxrqtUntuw1uCAIqQTvIN4Qg5lXE4dHdxMUhDYC1rCQ7pGQ6qywmpq+OoS0VKEC+7vDc0Sakvbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SLKivU55; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SLKivU55"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2774C2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 01:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776128853;
	bh=N2weKxk1M1dL4JjMpKoqYVUvGlXOMefLQ82yWh01Zgk=;
	h=To:Subject:From:Date:From;
	b=SLKivU559LaSrTJ4S66g72HZjijtW+jzJDvpfZLnBTGv7oGOJ3caK2WB97cBk9fff
	 JSmoqpZvUcjTLuMa5QZETRtPuwOf3BEyZe4SSYR8MTuqirtzLyDSlIi/BLeI4rfQcb
	 2/pv4a/99KcoDisLRrDfV8p/JPPqvXckU2WOi2ljSVzBvftoc9Curfcn4T9THxrUOt
	 bi4/+SI1cPXurFGBEkF1xhDOh8LEIyEQsa5mnJK+IKv/ZC+zGpS04MFRBv8ltYG5lK
	 ihSlV3qHbjjV4aI5UPzzMqhsi+chqKVKImcvmj7+2x64XInf13cy5+jwdBRXl7c7mc
	 Uu5gk2z/PKFog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7B8F531DF
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 01:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177612885368.27080.14612478391370453648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 805b0d5edb32469bee5cad6bd8c53f78a6e6dd36edae42ab61656a48f6360b06
Date: Tue, 14 Apr 2026 01:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776128853
