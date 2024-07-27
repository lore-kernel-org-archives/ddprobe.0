Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17FA86F2F7
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722082554; cv=none; b=Gcw6asCtf9Qq40NX1EdPvCTLGuR3aeI9MMRR/J9a7p2T4hsswcAYBJ0sVwI6Oqj8opySSiDnxCK5GVLNxU4ngO+1A9pzc1O+FYRM2bohnaGJcVFITfe29/uE5c9kajctaewwN/4eRUqYwqtMQ3+a556iJC2AehOZbDjs6HxkD08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722082554; c=relaxed/simple;
	bh=O7umDsIgzkL74wfYYtpyT8bEuuq3NRy8+fqktcKynxs=;
	h=To:Subject:From:Message-Id:Date; b=q1ITt69S9m77aoqLwhgh4B3Og2/R/iempyXI/31VevzWg2eBMx9d72hnCSzUgzpcRFSxw06gs42KDFaJxL4e7FnaDfzs/BaYyYaeXLH5uy3321FaoTUqqcQWZADAKRCcp8bkQs28IQ8PV/EQW9OIeJxAEXQeIv8XvkahYHnours=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N6OrkRt3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N6OrkRt3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A84C4AF0B
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722082553;
	bh=O7umDsIgzkL74wfYYtpyT8bEuuq3NRy8+fqktcKynxs=;
	h=To:Subject:From:Date:From;
	b=N6OrkRt3GEE1zlv7FfqpcibNzGaRlPEfwJ9SS/AfVg3yKy1Z2cfwsIOtQVqaUib6M
	 QeTaRW0A9zyjt8miYZjvLWhKCioKjFETOZi/94hzRwtjkSyN8KUkFFlVolA6tzcPJU
	 01NUhmvBsUSsyXZxQ1yY1/BNVhm4Ha3Vq8E1e8vSbmk/pSUgpTgLXNlUCKlUC0a2zj
	 xY3LpVurt6KDvFNHMIuIdMosRlYktumnyNrApZR+xwOJHcKlIL0X2mXDXS8GSkldN5
	 ZWFvr0SORKV5kJg7iJ6IKYbfUKLefIbYUZJKatTOezb7xdNNvXn0tO1Ts8PrZTaWAq
	 q3yuAvZbCvhAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9319FC3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172208255359.22824.4599132159824904625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b326171bda9c996f118cb30da6ab8a6dbefc7f2064e2301bdaff4a634a4e052
Date: Sat, 27 Jul 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722082553
