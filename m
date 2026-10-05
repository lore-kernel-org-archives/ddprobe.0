Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF51221546
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791187234; cv=none; b=p87Gh1UJPt+T/Wf/ydFhfRr37rhZGTGFPSkrQepZs6rXTKgDteXqknq8U/M8ce4KdexhsA+6FlVlEOm9C7VVoErijfUUCwEPl0G8RU2Pxt/+jUCNnNkap5QF9iuCoOI28NWQp6JRRwVsgR3be114NqU0Wzc+wpARRoM8OnyML+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791187234; c=relaxed/simple;
	bh=WNDOoDBKN7/3tZ5TDDvCE3lTgDlODsKK9v6FB7s9bqE=;
	h=To:Subject:From:Message-Id:Date; b=J2Vac1vVHUK+486f4JruSOZVBV+7uNvXd7k6CNq927o+DHjd/U1lpjYKxYPF68CoMzzN3ksMbkTLeR79F4bWx8x4DJObjQS5LAwNwfAupv2Zqh4NUEv+ivDk5u46wzjPItpPn1B1hnLwkwbuAxQAtBfx7+MAf3dSrmeoU/fqspM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cMbbYlw3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cMbbYlw3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D695BC4AF0B
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791187233;
	bh=WNDOoDBKN7/3tZ5TDDvCE3lTgDlODsKK9v6FB7s9bqE=;
	h=To:Subject:From:Date:From;
	b=cMbbYlw3pXQtTYBWaWfizjFn/idMriFT1UaaJyEp8L0Gl9iFSA2Xry1EDUCN+zWM+
	 tUdW4bq7qL4obVbBLlzhC3rOM5n3fG6cE+cMkNzz7rA8nXS1zQ7PqC6H2xk4dLI97a
	 13h7IYAUXN0oR88zsAsP/G6uW8BFzvfM5GPuE9XhW+KFh83ajA17bWmYcxl5hF2xSI
	 xUiUS5/No6WrHSX4GNzYhgGs24hF2Od4D/2a1GC0wkwf3YlXh5xbNC966g1uk9CMx3
	 byXC//dSabw5TWnfAKOs7AQhRQ/O47BGMkPoQdAkR3+G0sm4ap0wVPpCGqK/ZRlGqZ
	 0SGLrOpS0r9Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD940CA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179118723368.28887.1039416586461391387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac4c72b6e2cc1ecbf07851279a86482021f509cd09e64581cccc8e3f35795076
Date: Mon, 05 Oct 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791187233
