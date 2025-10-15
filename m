Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F3925333F
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760548194; cv=none; b=b5nFODp6HBE7/3MjXt9CB0z+WQm4q+sDJYbLSev6I5fK7TS0gzsATjFfhQ4D3kI6oX3vTPJGPfpGuHOOlpYKqNOCo/XXCgVcIG44CgyXb7WwBAuJLjlM5ddbQmdUsPoOdE2JLW8u6GjR1z5QbVvh/dgtMP3898tZvd0Y41pew10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760548194; c=relaxed/simple;
	bh=v1c2ssUswEpctMzl7B2/G53tR9qLQSoOEyxbPqLTps4=;
	h=To:Subject:From:Message-Id:Date; b=Kwou69be+xtLygiUvZv37pFBTl7g9tpV5usjzJnUfgEPPztbm56YaHbO4gWT7kxH7I8fVMDzyfpsmTxOk0DxiV4PQz4uyT8JWoQl/8roQApMkJdEjaEcUgGknnFgFDG3Ac73N6RAmpWWa1ldixsfEAeiWmdnjng59QfU6xX9ToI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tso8UgsD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tso8UgsD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C2DC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760548193;
	bh=v1c2ssUswEpctMzl7B2/G53tR9qLQSoOEyxbPqLTps4=;
	h=To:Subject:From:Date:From;
	b=Tso8UgsDdYTrQ1UfIs7FwROR1EnjPDtX93qYfo1N4vvp6i4nigGHyd93f4G/tTzLd
	 Stk9LhDZtq/qFNi4zqTPWrvuHR4t3EFMtzVR43PpkK0nQGaYzg9tVKRi/ff0UoL7L9
	 l7YUk52gqmM5IM7yMfftfB5Pgiq4SQkAGeEwPi2cEBN8sGs6MP7wVePCcRbqNb5PkN
	 8H8cAs6VYNngv/mkf2G4EInj6D+guHwQZiZ5bkNQGTBNwjvER45Dvnsmvck2bm3SsF
	 lSEBa45Ljbrzvoesnj/QUnMM6wKq4IXy6rlrucdK1XpoSd83iB1HUT1I/R4P6qOshI
	 fwf2oV2URklGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901D7CCD194
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176054819358.22046.17517068551588324440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1208906e89f97634e509366cddf69c2772453fba425c2350fd731f9ab4b12e33
Date: Wed, 15 Oct 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760548193
