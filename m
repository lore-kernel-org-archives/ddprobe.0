Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E65235965
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 10:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765017774; cv=none; b=ZUKwN4F9qTWq/hUpyVGL1dS7n3r73CeK0athvUEOTIOJKE8tqPaLTAI2SMqTVVOV8Q4Yu8r9NwuMypBTzMf+DvHobjf0FYySkySqhxifMXUdXt8JqezCdU1EFB2glFdIo4OXNjQ+tSRaBen5uvbxlcrkVM37sVqWliIEprGv2vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765017774; c=relaxed/simple;
	bh=uaGVxs7/vFcV9T4+KnH1xyRYs/GruYJbPnKGGdAklbc=;
	h=To:Subject:From:Message-Id:Date; b=qmTXBqHMtqK3mqqvMvI7C8JSFNiy8iQliIRblt4c4XdJ8MKirvyJImu0cPby+BHSa8U1jIK/nUHkcnWPcb017jUq9oeE0QLPX1y4kuUHMAG3yq+4Fw+kZU+Ycx/KYVJtgLZJURLnQe7Zc6xnBrp2TVvpceYaG8EljmZd/V0HF+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XeM3N9rj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XeM3N9rj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C72DFC116C6
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 10:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765017773;
	bh=uaGVxs7/vFcV9T4+KnH1xyRYs/GruYJbPnKGGdAklbc=;
	h=To:Subject:From:Date:From;
	b=XeM3N9rjtIQtPjUYR1eNyT5B+WCYE6aB/OhQ1jxKWDNDB+GoAwEkZPIHyAm+QTWF+
	 iwE77j58Bkx89QXomQIpjTasCm1nsPI+NNhaFN6ovf0qmfYjk6rmkni/P0jG/a32e0
	 vQ5QQIHJrgo+0OKuWKyNskYSgBuumhnE12KJM1Etfy1oewGgw6wTTI4RbMS5oZWUg0
	 OYjaN2Fxu6GggRcb2f1bNznt6dsQTstAzuQ2dM8XbfFcbvfug0AhsuwdCUOihjf7Vg
	 2LcrsXaW6X+EbsZmzpzv5aWYq4H6ScFNnIjBaAQcHmVQ+YkjpGnug3EPUp/gAkUFeJ
	 QNq6C83VHZVvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE631D3B7D1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 10:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176501777369.22442.10144289780681932545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bd6acbd99846b19bc9de9cdfbe3ec27dc5cd88f7bacb83ef0fff5c706e55fd3
Date: Sat, 06 Dec 2025 10:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765017773
