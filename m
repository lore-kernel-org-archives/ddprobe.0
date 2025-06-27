Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40CEF262D14
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751065794; cv=none; b=npdWlb+zCv1KENEm+MhgxltOYPm6ksL7KOketLv8Lnf3Rq7kM/1AyVbgx8MYbz90ZZh1wtq+vS5C+jlZmF8fWSWsA8oxES95+kWyFLQHVNaN885oqUDzfOsICbEjIBwlYUWUs8QM1ebhfKUsW/y+KcKoKEu3BuikYcMORzTiUKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751065794; c=relaxed/simple;
	bh=j6t6bX32qDwv1QOs1IuEcO3Udx636BzMT1yWTLWUR4Y=;
	h=To:Subject:From:Message-Id:Date; b=ocxmXId/6tYK/Ju8d0LiU3sAWkE9y1W8BNMOi/pfQS00xaJFO7d1ST6o+gUwMi51kMhZhvu5CRlCJrVsOHadgAdk71osv2qNHAOGqE8VUuf9DLukvj90k4Qs6ySg0E2XhGOh9xDsLJSFbGJ9MxDeHvVIM44YsAr39tyP1LAs6SI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PQXSimWR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PQXSimWR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1ABDC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751065793;
	bh=j6t6bX32qDwv1QOs1IuEcO3Udx636BzMT1yWTLWUR4Y=;
	h=To:Subject:From:Date:From;
	b=PQXSimWRXatF9OGjnXUcyk4x+J+HuxCWux+X7mR1O5kSQY1za1X/n1O3yzKL1FnyC
	 3pUkvJ7I4MWCI7fY0UvQMnZ+6+KV87PhGnSmQT2QGw0r9HHB2n8dTpACu/1i2C8mLS
	 X7+405DQVP0P/gdQLTTB/S/GgU+OHvJLZacxfBzTcMUhYxPFiXsacuo/PCm2VBhxT1
	 s6uTBJ+D+PcKAWKuPB1asmF/OmKohlIf1YXIx0EVv9yLpIRi2uanh2VXh8tAg9VrIm
	 s8n9J5dVZ36w5vmkC2lL1E/k6/MgkmeHNL+Kio7YNDXmq4ZLs/Tt1VOVIZ68y9YRhs
	 tEuAD2b3bgi/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96969C7EE2A
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175106579360.8216.7718998609476870947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 224fbf1f11463005186e1c4bb7b8a1bf43140d622a51542a42d929598e1d86fc
Date: Fri, 27 Jun 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751065793
