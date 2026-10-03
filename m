Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54D9D226D18
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791048634; cv=none; b=sJZFLlcXfFkMX4vMflKp707JRzHVtpYg+pmYHTiyV+IN166osQ8FHAJjl6oseU5jJSqZxNzsIzIQV80YEqEMruaTI7DeaRNjqMDvBGyMzkU1ssS4XOZ++nIDV02vjMROAymfHBv0qFJ7B/bTkCwAcGEnq0rZvoZSPH5T5xINLGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791048634; c=relaxed/simple;
	bh=BjAHAYdf8orGuN6gZtT4XDkOLSLDh9Zx2/Ng9NCFeEM=;
	h=To:Subject:From:Message-Id:Date; b=kUyCQDrRLXO4duIHsweTgMIxL9DpUiSM8H0TwR6j2rCv0d0qm9B6jMIbmTRbJQMQoXBmjRtz6KQag5opHXCKUQq1xYhfO3lYBOi1Zv4izFGKwSUZYtLBaUBTISRTETNRw79u28s08MOycqkbN4sFt8dt5f1AaJZqIytPdf7qGNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OUPY+DO7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OUPY+DO7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC83C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791048633;
	bh=BjAHAYdf8orGuN6gZtT4XDkOLSLDh9Zx2/Ng9NCFeEM=;
	h=To:Subject:From:Date:From;
	b=OUPY+DO7pI2BEfgVUvSdghHap1K2nCP+9oJGACKbpzqCo7kYB0mjqTbO4wO64oVVg
	 Sd92dH6cRy3p9MO3of5BLCAf3OyXsPecapaXTtL/J4J581NSIVMi/F0bXVIhdZpHwJ
	 rXqQR5XxApqEDwuOaCZGBp7KwnvF5hoR/J2LFfvILfdtJAeGdmDLXEq+3S//x+9zXV
	 q69arJ6rAfeswpIlusquhv1TO7IYnOr3zSeAX3utUI99S0qv5XUf9oqakqFh2Hsvzs
	 GPQCLibDf7rncM5lu3E43E9McZrkTfCgaTNzzW+ee4KIOO+7IHQ+VkRSHSerpQurTs
	 CEG+V95hV5UXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8B3CA5FE6
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179104863368.5038.2126960981595530270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2df01fff18ca9841dc1162d77e36253bf5c86f58b901bdfac0c805687d4642c0
Date: Sat, 03 Oct 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791048633
