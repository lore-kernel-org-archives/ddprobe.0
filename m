Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E1624024E
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736814354; cv=none; b=oRaHpWcVdvxSrfk17O8DsyKX3L2eiyNaxMX6PUUFVnMlSF26AJMzLF/EDB3rwTShOnOLG7br61+ZTGOJiwEA5FRfvjoHqX2G58DLBFLiqrNC/2ToZRxuf5Aky7gIZdytoxdyU/yK59Vkd3s2RIrIoQhJM4Lgb/8tyeqf9/m5Ack=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736814354; c=relaxed/simple;
	bh=zxS2Q8xMXGbw8187BduQ3kgm2EsS6+B8qW4bpeUyOmk=;
	h=To:Subject:From:Message-Id:Date; b=A4mZQeYTR3w6xGAZv7kLpWGV9nDdaRvKbVz2prCr5VklEbIiAZ7ChGCkNpd7+ruVIDCZ3UB7u83I5+QrHdKwFYWe3sxcndsrYqqkJxe8qFNDq/N4C4qoxRtPh0BwFHrI39B9gcnaJ7ToxzIB5tloCurbxtfs8YJrr1yiVNZ9xM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cxamPNI8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cxamPNI8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3D9DC4CED6
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736814353;
	bh=zxS2Q8xMXGbw8187BduQ3kgm2EsS6+B8qW4bpeUyOmk=;
	h=To:Subject:From:Date:From;
	b=cxamPNI8ysFJmywe+voKSkE7+D9T51gnCqiT3M9861gQaTo9eDgb1PsTgK93+P/DJ
	 Qeti40vuoEuG8p6GrST7/eI7QxFM1LVr3H7dow3XACNFAJdlNw8Wm8sAr+2YeBDL7p
	 ByunAtvdqF+JdoxGpT44KLAC25sf9tMg+uF3YQ+ws+qP7OyrDgIReY3IOK1m5C00sF
	 IecaKLLmfaBBdjhRdWSsuSEGoRpQKlIkzzX6Js/t4SfUf5fbSac9plgbwYINRvw81b
	 YCECEKWDNQAOsOOuFR2ljw3TEnSN/+G44+3HrXiEzO7aLov59Ko14g7gAOh8GEdgIt
	 UjUqnls+W5kOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF35C02180
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173681435366.23094.4573162926527799409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bee0e6182968eefd2b2ccaf724a2b800ef2abab6412ce8f21d0ce4f3ea16152
Date: Tue, 14 Jan 2025 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736814353
