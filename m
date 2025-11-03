Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259D52BE62C
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762202394; cv=none; b=TIPHu7uyljLo/2+BTvxLv+k8dcZrJrWhX/Kx/yn1i06UtA/DqCcVI34+tDtrYNibNebYA5cAhAlF8w7qw27HYlo1UwH037D7kDbwwhqjdlZUCJr3oW9EOgHM9kXuWLlNP1ZDUEri0o7FTvwSjDTVFTh7eRvMK7e1pf9XEEeveno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762202394; c=relaxed/simple;
	bh=n2V1zZ3Z8r7JMu+9jMPcM9SRaTkI+JVSE0GGyjsBZEs=;
	h=To:Subject:From:Message-Id:Date; b=OO5DnTaZRWcc9tqloHZ3w3TWGXXFhkzadeq2q0KgVK5dAsRjjB3vME7ZIk9Vhd1+kTW0PJESUYBUFwhfI5WoHR8X17dPcZ107bhUTQGIObAYIAGhfpUBa1mAdZQ2UrmqZ3sx9ibkmb2JuRyh3N7OvCt8dUitp1iukO838AQqpQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OICUQh9o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OICUQh9o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A481CC4CEF8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762202393;
	bh=n2V1zZ3Z8r7JMu+9jMPcM9SRaTkI+JVSE0GGyjsBZEs=;
	h=To:Subject:From:Date:From;
	b=OICUQh9oGBPX6h7w4A5s2T46HN4DTSI3F36gH7t3aJIbBsr5b/hjuJpXTNlVDBvAZ
	 KXHwhs86x04PIHovWGAWQ3xS6mlr1eduljB/rAMLchKy+W/ELZYGtI5IPgCu1OTiTv
	 x0rtZtHa1mr4zCvovxMHR7AL3NIidJLpqN7RY1I5Ohm+0jn0skuMvygJdxtSdNYisI
	 ya7KXBkF6j5mkYFlbPMa9XeWJDxA/Qa7EP2udcEhgvGPsfPUKRVc7bMgIIcODlin7R
	 STY1tvRCKxq9k5expKLU7WhJCpyYrBhIYxwnLdXG0nVczw/BlSBK6PmORDtvjB2+jA
	 zzAkwOk6kIC5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920D5CCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176220239358.10122.2438439426621179051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91dac79743d3dc95c7bd91a188a721bfdd32ecc2f2bae55f97269fceac71b754
Date: Mon, 03 Nov 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762202393
