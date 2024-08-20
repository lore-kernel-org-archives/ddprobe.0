Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6130A2F5E
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 04:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724127954; cv=none; b=aKVi1a2X/CIw42e4FUK/g+f20y6IwVtc9TFnIlBMTUlOhYGT5z9ZRpFku37dh9UGGfrP5aYOsQjEVod52bFUOkcxLb5Oe5gnohVZ7jYTg4N/CQB3NZFCCvmvs015T7KObtsHMQ7luVYbAgF3+2dFnhHfd+8anTMxQlS95sKX5kY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724127954; c=relaxed/simple;
	bh=cIXClq8wdIvpaWhh4QKIyhDy2+wm0YbyBUVS1M6uDP0=;
	h=To:Subject:From:Message-Id:Date; b=f5BeOw2Jm+VeCmMxM6/qiUham0Fb4DraV4fGvIH0C94abhQrESmp2r8n1h8SpWjNY9hdNnyetvDb3X8shQ42Iz8S7spF2BLvhNKQTepSYuPUxC7T2GohVRA9+/zuK+4CjIXeo4r09/cncUHDHKjCrxsOZxqJZ9GhmL1BJ1JvoH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YVAEqO7v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YVAEqO7v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C9CC4AF09
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724127953;
	bh=cIXClq8wdIvpaWhh4QKIyhDy2+wm0YbyBUVS1M6uDP0=;
	h=To:Subject:From:Date:From;
	b=YVAEqO7vSp90B1YDO8frK4jw3dh9fDUFGOeq6DCg8BeH1bNHDV6ddEf8CoPrGJ2hF
	 AUx/9MWcuBkep5knRAoPVXYlB5xyNrQOVRo+kWybJhZr1nRebwIKeOXaHrro0aA1Tl
	 6wnuedhQlKduaI+tqRONO4FKj2dCOzmiK8XmOZUxVc5amMNdnsmGzaW4clyzI4mV/y
	 GVYJtQAZN1pugSHM/xeT8lrCQ6Qs4JPG9q/Ys5I5TfY4SnbhE+uwgHmCKz7+5UJi4R
	 OvpVWYwGhShetS0PcDDEMkIm+MzBL6hh+Oy2l5JFsoiEGuSzQ9tdUH2HnVoYn/3VTg
	 1sDEmG1MqUBsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B88F1C3DA4A
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172412795368.26973.8283255799045674465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6d94fc9d19f9b3d658fa9a81ff2398c18e276d00b945c2f63fe037b20a162f2
Date: Tue, 20 Aug 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724127953
