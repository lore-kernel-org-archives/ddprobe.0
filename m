Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CBB84C9D
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737783954; cv=none; b=ksdgUg17FCwKZR+8d9B8Lsvz/LxBo98knI06EcziTy7AQ4/xsSEDMcOJ7pH27OEzVzjMXXzy9yhN1xQqSDcQEPz2GEbbmvDtwAydFJykfKSDTvYwji9UD/JRyyCqkXMiS9wWJis0/L154Z1MsXJMWjkGbB7JSLeqy349vyMb2Gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737783954; c=relaxed/simple;
	bh=kwi+omRtE8AquLXnSuBzkb47QNRN0LwVFjcDkMwDtGc=;
	h=To:Subject:From:Message-Id:Date; b=ErnFL8XHc1Qk8YKagMHcaM1A4hx2JIiXgmW/utYASbuqHmZZoOeNANDaCe3LP/UEIy/X4Pc0mj7j88DVoAnSBY7hcN9FQ/j3ET2/QTMortBEFZdFwJwJApPHdf3t9wHhmdKXWp/fVHbZJW2T24B16fP8L3igrHG5rBvaNDjX2P8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rnUUX91P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rnUUX91P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B70E0C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737783953;
	bh=kwi+omRtE8AquLXnSuBzkb47QNRN0LwVFjcDkMwDtGc=;
	h=To:Subject:From:Date:From;
	b=rnUUX91PohTqPy0gM6qc1TWze+4MyPCMa/Gi1zs9MTy9DIvj2XIfkQQxRAT+AC6ft
	 0obQvzmrvbFQaROkLrcRBGG/Twooxf1iaoS87K3RrWM98lHyVdr5iRBJC8aM1NT2s+
	 5SHjhZrcz6yjNLWuDOfOd4lHGq7AHdZzEzcipiEfJgkopcSwlEWZxVKmqUbnf5f9Gj
	 pplu4V+Y2Shj7gIESZGNF3Ws9xDcP14k5+gahS2ke6JFAln5xHEOjmqWfr8byA9Ym6
	 Vx/dCbRcDaqQ1upgZNXiHOzzMkNlkthujIH+uCWQqIZK4hUotZmFxvNIoIRRrh1dJ7
	 AP7FNg2fdNvKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E666C02182
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173778395362.11458.4989718486592713749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3ace5ae941dd26b6a45d6f5d438d9921052d482aecf0075b02f0b711e835bc0
Date: Sat, 25 Jan 2025 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737783953
