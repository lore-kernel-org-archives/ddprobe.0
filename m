Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45FBC3C1403
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785929434; cv=none; b=TQ7VFNJ+o8bAKYjMfeuKFo0T7zYklUm6fE6E65Dqxd7IfIeOE7W0mQ8QoExI7O6vu0/WS7zMZwswbBSiyggQdTJRDcTaUw6VBo7i+U8ZH7c2haBXkmQ9ZTdAwntsZQDg0RU1Sb1qJaF77dmQ3gSVLkzwumidSdd8jNUe6KR9Y1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785929434; c=relaxed/simple;
	bh=YvliY9KAZn95UpFgraDQw5djiTFVI4klIOwstauGbbM=;
	h=To:Subject:From:Message-Id:Date; b=DETZv7Z8ksc/n8uhpLJb79rxJYdX9JVjMZQqxW6JNa+6EPkJDe4lHnfdptstDKHAJqJVlnhtNgEQ15twgsekONjrRhlWay0K5wku3EPJ90Kt9MzzWfmexjtBUXPj+QK9/oXrO6GYYAM8hiHMFW9D+pHgZhqLLIDIislXGiy8+p0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oIm75ReP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oIm75ReP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB7FC19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785929433;
	bh=YvliY9KAZn95UpFgraDQw5djiTFVI4klIOwstauGbbM=;
	h=To:Subject:From:Date:From;
	b=oIm75RePeRa///bMwR5VFGfYOoSx6orey1PeUVDS24redr8y00Tj7IyJz66StFXHA
	 LHchCX8H6FwfVYp34zaBv45adFkvbkle0ea0C+vKwCpD4VZ3eT8mzOZxdF3HK2oUV4
	 eoo0MDmZLFQ9DWETrxORC4Kghe40vDF6167sUGAUCU2A+tTKA7/D9zsYTl+s4NTDez
	 PpjjGD0oSJYXYF+woNTUquxodBdOV3CEafpQh/csSc2tKL42AUFt7Ue7Ptbfe4ji86
	 xoQjqjDd8PybWVzg0FgWd8a+WHLEtydB2gAEvoxM1YNvSIu5qBDdqfBDD8Xqu6Yvo9
	 v/o11OtDNxxiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C4EC55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178592943370.17119.4010258936708874458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecb73d00cfc85c073f0245ae0814f818129205d130aefeecbb7c8ae5fdfb890d
Date: Wed, 05 Aug 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785929433
