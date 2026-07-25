Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C77371895
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784979034; cv=none; b=sFl0ouCCDf273SSrUo5U4W842pjpIl7+80o8yq91UJ3/fjBl8LMS9vEc07ZJ57QADuiISgXmOlAfQ6QinjlJAfDZCys3wUgQBKvZdoZ9xtpZizxxkM6SAivGTZE5oyVwMQdqxU7VkaLoL1u8QsqtOuPn94snsiV9vKW1OkgbSvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784979034; c=relaxed/simple;
	bh=9wfn+vd2wsZLz7f6tJjLhja4laRGuzMjDrb/YIuAqM0=;
	h=To:Subject:From:Message-Id:Date; b=W4Mist/HBt7CpLV4xr63K6YfTk+FxLm9/jqt4oU4ymOoCKPEFfKLk5AXUahRD9ljy9W/iF0t1dcIyAXQpo8L18IVD3QZk9XYL+cV57anLXth0z2EQo8m24mNAGcRVku2Dmi5OqixGb+AyuK6a5jyPyIuqP2/T714ai/+gfV9iXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1Sba6Fd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1Sba6Fd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC37C2BCC9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784979033;
	bh=9wfn+vd2wsZLz7f6tJjLhja4laRGuzMjDrb/YIuAqM0=;
	h=To:Subject:From:Date:From;
	b=E1Sba6FdClNeUpVjH3lHOKuWKxbwbH2SoAlB4hOokJPmUsP14QyhnsF60ur5AYIhh
	 WUaXJhJnnuUv3kIlQjpulUeK8y+yX4qPIlZINXNgUTOla6ZGjtcMOfsmUU+QaTa8rK
	 jS74EwuJYl/pzbjxljTxzpIGx1geaDPRzBOmLN7bW6wCcnqkuWoDtOGjHpUBfjsxSm
	 oOyor6bsu0HmD6JmgHN+5tyt3XK6QS4zgVJTv5Yq4R7hyrh/yy98rrepf7YWaN8nWn
	 DVuro/h9sLK5sOwB2akcHQiDY05Tl6BxVDKrEcYretuEk62dv2nCGnSNTzfGr57c9y
	 r2cSIxdDecgkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEC6C531F9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178497903368.24103.7955539256746852735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a933a711ce55ac7264a8693a5e954d42aeeeadf61b6c65e3ba83305c317296b8
Date: Sat, 25 Jul 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784979033
