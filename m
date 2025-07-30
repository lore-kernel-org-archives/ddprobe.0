Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB13C120
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753842594; cv=none; b=fnlCyIvQzgF+AK7rznyNc6Bv/gD9YKVtU3dtVCh7SC0PHFa1EVRdQtQFVQsmAis+H0wJ2iBHF+zs7VM2CYX6GFd8kJo5WYV/HES6MuzALJEn8k7yehSq0w5S6zESuGtlwQB2FPlMC1zWjWFZqZOHYZJy4p/PgdrntnFbViB++TE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753842594; c=relaxed/simple;
	bh=VNGGb08WJ6q/rWvNwAQhL9BBYbsmPzEKLAcuAQIzZLQ=;
	h=To:Subject:From:Message-Id:Date; b=li9BSJvmUKh9VhjGXAMXLBCJ2ep4xU0+1ZgGdWHDyJJXgzBkDRK/6dD+uCqpgGsD9rO4om+dutZLEk3DgxFE1nquWBFOF7V23/s9I2G2jixwov3xpTS39ukAjt79avu5RgCm4UUBWwPkQNmoAtubGxjnq6kFreHgREHNDG5QAJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uTnchLau; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uTnchLau"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90A1C4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753842593;
	bh=VNGGb08WJ6q/rWvNwAQhL9BBYbsmPzEKLAcuAQIzZLQ=;
	h=To:Subject:From:Date:From;
	b=uTnchLaur2TNH9umXxzCBU/Z4dVAQmZbJmsK7bnL4IvirSVQ4r0qV8eZoeeQUaGmf
	 Eaq1KtkXFr71jMa3EZkfozqKtAIMuaOZeCwus8GQTAMak6uTpQijtMXe1CaM01rqbw
	 IrLp9aiJBrOToapoNTalSZgYAAReHl64x1rfdM5y8UUuygc6UwkYovxklbij0azXfK
	 YW+DvAfLRZ00vJLOiqiiKQAaTqZMQMmsfU0yAGseFqaDLpxgwJXV6ZWhrmVIf0IF90
	 Vb/gnVvbvTXNbQ32hzMw/8DzZPVMI9XrVHuxLvLdQSAeHz15RAEqcCggfDt3BlNTnH
	 mC7KzStm6JOAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917DFC87FCA
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175384259357.11129.13576251176766570299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b80b7b0a92068414e61b99c12bdbdc2192770789b64b0492729d51b0102074dc
Date: Wed, 30 Jul 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753842593
