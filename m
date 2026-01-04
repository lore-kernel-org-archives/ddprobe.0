Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E8B84039
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767555234; cv=none; b=AVMzfurzGNxFR77HR1K6QqhByO2kbznfh0hkHkx39kh953z7995pAwtmD98sIcgldmyklAYmC9BQlvmz7KKM10pTTZL/EKQT+9pefFy3etRh5cKAFwrVeZTGaDpgrVouSIRHj543t4x0oLebGhW4ADi6csBhPhm40jyno7jSv5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767555234; c=relaxed/simple;
	bh=jLZ14ZaSzYW8rycwnXfEiK0FpvVRua3TSRzr9UvZk+4=;
	h=To:Subject:From:Message-Id:Date; b=pRAqsKl90tf442QWdSLGu3cablFW3kmfchCLebzVxxUyLe7DsFgKVPjtPFm69qN6GPoZ9DK8BiwPC9FJqlfged0Tm2T9Wy6TWx1Az8p7Bq8bZpE9BLc/25w7bvt8KqxGhufFrXm4+HkRScFAYoto6xRJL7QlIfZfpabcfb8Aexo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQVyomqi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQVyomqi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4501C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767555233;
	bh=jLZ14ZaSzYW8rycwnXfEiK0FpvVRua3TSRzr9UvZk+4=;
	h=To:Subject:From:Date:From;
	b=XQVyomqiyTolQY9BEglDV2Qx9unRgBAA14QtMLM1CDu9nTY8IC5JKgpl6Fk1gFaEw
	 TktpKDvMdp7OC/ThrYkFFhcKk84AwG7W2fef8S/DOwnb/ItJ7fgNs8fUYv8zq77FUP
	 lhAxonIhiV8JKgi8tFvRdsKvxSF2FG7Cw+7OoPEpOvW60sLAti51LAQGncvLe2VUHm
	 3Q4DTqFNOCjV+wTFoXwrjoSn3AmN4gDGhj2V7y9rgCewuW7/mE8blOW7ilcqTNbtOZ
	 4QKLAaJjaCRYMLS8Hhy5C8lEeCZQaUoIjRSk9oJ09ko6Tfw9y5QD1Wmv+uS/Mkuu13
	 0/2KFjCGQl5Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DD1C2A062
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176755523357.14471.8506163758376249686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd63b0e05e6a1633eacbb504af13da14724a9714072998ee81ae3dcd0a4ff589
Date: Sun, 04 Jan 2026 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767555233
