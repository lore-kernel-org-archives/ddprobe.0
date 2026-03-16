Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 133541367
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773619494; cv=none; b=VBpb5nCCIlxHnQ/LknfngYCbLTIjQCMPWKglElaUvQcbzI4fuOjiEyIeI1Rb7+1XlWrY30EvZOO3sXU302VS7UpSIlwbGdmSX5Divm/C3paw6pwA+OSzsxgmmIhZej2wPyBrp296uzWuKK3F9ujLnP0FBrMlRyq8mwmXwJIIqlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773619494; c=relaxed/simple;
	bh=1ADYRn0uC9XFu3ckkmGqLp/6UDps+buJdGjGAYJyxe0=;
	h=To:Subject:From:Message-Id:Date; b=TmaIJqFLC5dI6AnO6H6Tx8T0JqAIwupQCJPZUJfg4LUP6PTc0VuFxVNHZaU5emfaaGrJGuwN4iNsA+f/WQjsyRxZfQ3cah2iag6bd4RMubwZZOe2gAYoDoa7yoSj9qwJpoV+UTOjwB4kt9tDmsGClUT0uvXZ9KnlGbi4ajZKFTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y621n1nB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y621n1nB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE88EC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773619493;
	bh=1ADYRn0uC9XFu3ckkmGqLp/6UDps+buJdGjGAYJyxe0=;
	h=To:Subject:From:Date:From;
	b=Y621n1nBVEj/5PH90Y6UKa9xQXnGOR8ZjIJNQFh7vP47HewnwsGhawfd900ISn/dU
	 zgFJ7UWYCjRVZ5O+DdpQsT5MenO2OPwdz1R8QyxIs9ZF2EhUiZ8qO/w0Fg93YJJ4XG
	 C1R6Olu64H0yPE5IJ67rm8I0evF0ZWtqbYOt4bAmacgTe2Pk74R7Aox0IGX+LKF9Wd
	 M6oUmFHUa7J2WAlqf3JySh/On9T2PcRFD7V+GyIcE/eJJLzsocSzycSQ6J2KEgnuFp
	 Apwm1aU1dKprZ8afE/aVd1iEF2NMMt6mMbKUtT9pDH5D6FMEDb/E8eQVl5ArjbE++3
	 spEtxJN5L/Q/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ED85F3027F
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177361949364.22522.16626796590972298692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3afcbbe2547805fce1e73b531c54e4d41d927cdfbf6167a3f7044914ca79046f
Date: Mon, 16 Mar 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773619493
