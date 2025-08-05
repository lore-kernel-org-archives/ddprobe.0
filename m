Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C521BCA07
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754405394; cv=none; b=jafrNLBVCHBEE8oS90lMRw3ZUyWV8MYKEXcwqaRmx5TYNYCZfmh4mcqERjv9UYwNh3Zwe2/cWtsR/K/gC7uR7WJJvUKrj6pdEprwFMBVI3+g7JshOJaJaE+2LhUrq3YeCweOszfS8AQWt2wI+9xuPmWeaukLVoFmR+Rqs0nLhGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754405394; c=relaxed/simple;
	bh=J55yn6ONPhEhnZtL/h5nbeHs9mwV1VltOEmVyCmVAyM=;
	h=To:Subject:From:Message-Id:Date; b=J4ogxpAcrlrP603mwRCrWjZKFOywkR9+Q129hbLpCC9IG6QR5kWNO4q/wzaN2xTwyQOPKZwtzPVmo8QU1DVVrPTRmyPVCkEU0kPT8ekYMQk0epcRX0BgjwyzelIc6uN+1T/r9trPSH5XQmqQkjTB3vOmijHXidNafsPG7ByK1zE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SNvnIhYG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SNvnIhYG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF86C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754405393;
	bh=J55yn6ONPhEhnZtL/h5nbeHs9mwV1VltOEmVyCmVAyM=;
	h=To:Subject:From:Date:From;
	b=SNvnIhYGjMwn1H3Dz9jZL9GAEi31nd9UloPelm9P5QsVPMehu4lXbKZ9arGy6/Ngc
	 Ar8YPG0wGmK2cHgQMKsRYLuu8TCF33y+oiquvZveniDMeIgF95l1NKGf/fRNORIsRX
	 Tr7Hht0+GnHEoYOTlJYfi2Om9SYp4tPWBCSpRpmn3oIzJU0bsN2AGVDIwFy103fnEb
	 oUN7lhTQGiV7Mvvp1rnBg0givRf7/9+vigQxDa6yUi3s9lqsnQ7VOcpFqaoK8KjVau
	 KqhVgvZyZGeJPRIPPDHFkj89f8hhnXEAxHMdqLUQhuS4S5cBvB+g23Vj80BboKvbYA
	 iu+aLcQfV6JFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6C5C87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175440539357.30320.14296306675297562424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 027ba307e211df4d67acf794071c881f41d9f5e1eb1c8168fd365b0297f21876
Date: Tue, 05 Aug 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754405393
