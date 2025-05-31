Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF52EEA8
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748709594; cv=none; b=MxogUMr2XqZ4ZJXpoKGFKzGrnJYxeChiZwHk7KZQirvONddwazw6CZ+9UEsh89FWTXd0rUEpVqI6PzCZG7IsM+aocPs+WA687h9mpCAOctLmoPyb0icW7LZ6++CMlw0AwOwCl49ySFvex9qoICQ5vumj3ZMQ2rKYOlpbNlPWyv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748709594; c=relaxed/simple;
	bh=SLUOntd3CHX8ycpGy3Q5wwNl74e5sclKO5eVbdUeaGs=;
	h=To:Subject:From:Message-Id:Date; b=BzQuC5v6muVihlZ0c3fUON9DLYk9qbhCSR5a7ZylAAYNVzL3ZS/z72e/r/RThDbYEGJC0kPumpvNUTXk0uI7E7hj5kUszyrRdFNrICCpPA6y5nh7qrc9STlsJ7Hb60XXwJbJIO0OzLlpIqnllDvKkqlWadwCGZiJDZUBsMP39Ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cSYBbRTI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cSYBbRTI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A558BC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748709593;
	bh=SLUOntd3CHX8ycpGy3Q5wwNl74e5sclKO5eVbdUeaGs=;
	h=To:Subject:From:Date:From;
	b=cSYBbRTIUdZfUU2Ier+DVofURzNKPIl4ks/pd8mFRkrREEDXzDQiwP8uTbXx46OM/
	 oi9nEryx8Qy5wtbP9i3Suuz5ZvOnReUKHeYWwJJNttSSQtDnHGBZpM3QA+J5FyPy1O
	 1TIQbPv2LchxaAm7O5pOibj5g+oKbNOoGjryVb8+A2KQDzOVDrnf0xTH0LQz02LT3u
	 f1qnmlYCvavGaklZKlZhfd2Sg0QeDAV7YqHAFx/cr35is6wcJ/To0B6nJA9sgoO4AB
	 0TPpMlG3lFJWpowN0CdvVmesVryVxhDILgCxYX/qFTu+cA+E2jWZsLtbfkf1ZkRJ1o
	 +uAnfp+3FXTyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F2AC5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174870959358.3962.17166815998259741635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f09613580a4b67e803bb22cbde31ffaef6fd326e1cecf15737aed8d8c225ecca
Date: Sat, 31 May 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748709593
