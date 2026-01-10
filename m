Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E5D3A1DB
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768039434; cv=none; b=SVAaRnvnFMeFlpYR65Zz18lUbP3EOW4tVQpmnIalbdUAgWDJq+EIfDqhwNQX8zwoYNq6udWw/v13JiWV2AggIVf0fOE8aQOCpSO5i44swJ4UoRhlAqX+u7RyQ7eV+db1/yq4MIydzbf/EmXsekBPGy8xbosvrx80+qtZ8S9Oh6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768039434; c=relaxed/simple;
	bh=2tqRw5RKyrepLQW6lMqDjU13RFUUXMBbJhUzUalCw0Q=;
	h=To:Subject:From:Message-Id:Date; b=PtLU+sd3eImrA0JUPVXd2gsXv8I2WvXjiW93WjE6SrNT1YhnaimjEK7atMkm80AR2yaK0KfHb47Bp8YbreC4YMTNm+vLlN6xLMF7rMG3S8jsOZQGomwR4sGDMLZlBurPE9YJK1EAKzuvZ59iuOpZT3v9UrNpgMloomzlDhMeFeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rnPY9g/P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rnPY9g/P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9382C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768039433;
	bh=2tqRw5RKyrepLQW6lMqDjU13RFUUXMBbJhUzUalCw0Q=;
	h=To:Subject:From:Date:From;
	b=rnPY9g/P/LtDYLHNcloUEswUvGU4EH/rmZ/Uck7GgaScYt83L7Lvp+Vz2OP4Ca5U9
	 XUzhCKnEj8T6Q2QLASgBLw2Igk5pQ8v8DqJdLG3TvI7uBSie/lDUTMbhiSAhBYj4Et
	 wkBrtFDpYbbvKKGk34p8hOLIyOdkPBYBDwIN8O4R/WFpD3tTdGfpZ3uwBAUi/Tggro
	 8mYNl4diDQGcHtkGCsrkps5qzVCeJwx0Gs3N8AavjzqJp3/y46n+u34o8u5dGB58+d
	 xGjWeSH65No203o3sbn4dHwg2awikP5Zan1nax4PQJdk15tERkO8e73gueGpHoy0Fs
	 d4xqqfIHVBaLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96604D277DB
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176803943358.6018.17222887401910192247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0533f2dd408c0c520ce542cbf9269b44051caf01e26185cb7f775166ba13f4aa
Date: Sat, 10 Jan 2026 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768039433
