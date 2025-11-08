Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B51972604
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762609794; cv=none; b=FQtorKzbfF9cPA7JL/Zs7WA5h/B7ORicmVAp8KsEQ110Qj17uSKziPO5VV0g5VyQtRAZFfPvG3CNrBwlWIsmUYR775pqp4kap3CbdreJPzNt054zB3ZTsIesPDf/ZjFFiucQdAYG5kWtfzqLFvEUHkW64KPioku1zIV0iMj8m6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762609794; c=relaxed/simple;
	bh=y157KBwdNRifpNV7r+qtwlZsGzUWIbK/K1M6TL6B42I=;
	h=To:Subject:From:Message-Id:Date; b=LyTHfX1YN6kkwUVzId6TBF3PDRkNWD7dy3YdUUsEQKJ0BkaQKbZQ81DxkGHGk3JIY7JWSZmu/CzHGtzhIU22hZ8opX2MBGT8mCEUdZtqlURyQWZNbFJa+mV0xe4XxwccsMvfRAvvu7NBBq2DrV7C9Tv+QcwltHdLGw3cDUHzaO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lqw8tapm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lqw8tapm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E260C4CEFB
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762609793;
	bh=y157KBwdNRifpNV7r+qtwlZsGzUWIbK/K1M6TL6B42I=;
	h=To:Subject:From:Date:From;
	b=lqw8tapmt/LckJPsu2ixWRN6IGJmxuIiG6cIdD8w0Yx1VpPimGjVTXrOB8iYrGnFn
	 A/fjJOmopINIG8/X5ZmXyofm8E7QaXjr7VCDDgu6rNxKOFNdc7Tw4W4pphDInqKNa3
	 Z1bc9sKkzAAP/D2tL8Lx+v338V//XRX/6TSiQm3xfxZmRQmQfIActkE7hsjM1o9Iri
	 Dv7IhdcRQwCSru2B6AwaeXjWrhB7Hfgx8RgsDyIk0IPsN2tKN7m07Oy/fBQaxXb/Eu
	 nKZmypUuYVCbVvFQ7FfeWGDKssv8pWLtgnGyVGQToigy87hi9hED7pSrEshb2ovgl8
	 ffptdt+cPehPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94327CCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176260979357.26679.15440833396434782734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35e0eafe2832d73f5d02d86a88426646c1799c7c1df4a8fe01767fa4cbb3d65a
Date: Sat, 08 Nov 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762609793
