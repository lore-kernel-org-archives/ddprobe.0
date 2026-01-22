Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB1D30276A
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769042634; cv=none; b=EZEWnr/ARCyWjU+BmczFO73BKIba7ZuNNBYrc2jRcEeQ2ofy4mStUv80A8i2VeHzrw4/E4hG71byHkOghPQZ0SbN6nmFn92hmQHC6FeeXDSfzfsx783z+itrevm+cYUy8oBwV+RVnSpEbZbTSwkpq2hAuh+96j87ndNb51amY0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769042634; c=relaxed/simple;
	bh=rOMUL4MTh2foqq15/7HUmict0WpGyMJgtWZra99voyc=;
	h=To:Subject:From:Message-Id:Date; b=dhaepkBKP9+MSJrwhRFLxhCLha9dYqjtmLPVaqUPR7uaasMjQi0ftzQK+SR+wtX6Jh34nNyNw8F8CqtkMO6Lpx+c0wUkY4y+v3O+EuSFHFcd3+Trm7T+lk/+L30vog3Y20Jqm0KrNJC4ucckHrgIEXvl8d3QtKKJS4ZnF6+wRz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k0+HVOkr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k0+HVOkr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4179C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769042633;
	bh=rOMUL4MTh2foqq15/7HUmict0WpGyMJgtWZra99voyc=;
	h=To:Subject:From:Date:From;
	b=k0+HVOkrOY8Qjryz/nJg04skGua72qay9MObfNaTfxgnMB3WLnvL2zz/WhWNRj5WZ
	 jFRLq2HVLj/+WUaHlh2vyR7eL7qkM8xF9v4OxMYqepsiVsk3lrN/2Qwg8qsUT8/mpC
	 cZFkR7ZsPgZ+rgAwkuyUxZaHi9KEXTXwx8Zj78W1vuk4AWRCyA3rhBk0jp2AFRqQA0
	 G5/UAe3hYWDsYAyzYvtHdsMQ+9l6Hn3gwoyfEMYaqw0SB3zvjALoma32D8m+gCIj0B
	 nDD2fTbpgcIqrE/PVJVSRkO3shvjI5SyMSvKvhsDlcknGs1YbOEO7HdRNBR/Iz8W6J
	 iRi68xqEWAGhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9337AC44536
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176904263358.13795.17013856873250191418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28a30af392871f2f840a10e088d2c2f81f9d102822dd6c41daa21fd10feb0e9a
Date: Thu, 22 Jan 2026 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769042633
