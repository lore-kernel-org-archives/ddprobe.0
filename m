Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B97B21FF52
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746123594; cv=none; b=ED1jyGg7ai4qRS81rCArRWKlZNbSrGE8OgUKIwcGDtnrteEX7Om2XwWl8Qy2exdTMzCnKGl5n5XDOrRBaQvbzfldLd+2EatTTrpP1tMfWlfjEAvTwa/oGo5pgm9t8E/ddSt6gVysTTE+oQKn/jJzl640B3uJ19U3oHwlZaNW8p4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746123594; c=relaxed/simple;
	bh=Rubq7UXAnBPg8+T+HuvjrFheAcdwmdRv4d3o2yrXebI=;
	h=To:Subject:From:Message-Id:Date; b=jQzNATy0cEzYLFsTTUnlCwJ2UVzH/KHNh84S9eiVtElocwTN895jCGtt8/qfAaU0CTSb9rtus6Q51ulGp+Eir6Yp4YXHl4u7K6whLAVtsbYtiXqhy2u3cemXsKlHFkhlaRlfP6ejSfSSXQOC4FBLKI2m7HwWr2r+fGI8t5FaE2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UJ25So/4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UJ25So/4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BE54C4CEE9
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746123593;
	bh=Rubq7UXAnBPg8+T+HuvjrFheAcdwmdRv4d3o2yrXebI=;
	h=To:Subject:From:Date:From;
	b=UJ25So/41W6fBx80NhH99x5TptoWQKGI7hvTyifAdkB+Vxvl3kgR8bwbYh2mGAJ/J
	 goJGcOxdo0B7ywo+Ke0IyY+eBpBhjVc3Lp/waI5GGtfzPqHjk/+pE3nENVx2l3LtxB
	 AW4YDSOIfoTWbNeiaxCqP73OUl9x9q9fhNAqyUHqq1dd6ifgc/mQIZ0qF4cJRwJkhe
	 Q1UeQ5hX3CGHrCCIbAFjVwLUyKHnCSDuzg7g+Ejca8ivUT9d3z7lZqvDAujs0IazDj
	 BL6p0LqSjh+1W5A09moRko+ISs3kOsvkUSb5w0ZiHwW/fB6Eafy5WKOiBTbWUHNYRl
	 6H7KY1YUhGSuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E778C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174612359357.9404.7321053664561920230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86ad6ebeebdc68fe79c3c4323379615b050af404bf527b0da7efb1d6ac29d677
Date: Thu, 01 May 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746123593
