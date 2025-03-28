Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A26A84E1C
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743166795; cv=none; b=SjADMoBUk8mhnQDfTGvqyfgYbqitQYNUyfCZpJSzYeUTkJzmYRGnbPe2mrgpod0agvT+a6xthyQVBF/4YT936p8e4uqw82Mph83Zxh4vXI0Av6LtCgo2aRRCDibOA6suFXH8ZWkwvsa+FH3gsqbtsETICutz06HAJNLjac3MhXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743166795; c=relaxed/simple;
	bh=CBg4C0qTbA2wvTeBbZ/HCtjQ0gEb4MWPw4CZiTj8tRM=;
	h=To:Subject:From:Message-Id:Date; b=m84XbKhL9FjB353WBoJNXXEm0p90xI9Qm+Rr2fZKuOFaPcfcAZEqnBDxefgNIEf2RSdY7qY2pjmJJHi1zALAuTTrvoMQC+jA+UfymFSgOeKyTt9vsDauVxv3pqRrYuztuJYCxpU7gNmi2oCRXRt9Wuc2uxsNJRNwvrI4A2AxC7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oZW3RHFA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZW3RHFA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B122EC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743166793;
	bh=CBg4C0qTbA2wvTeBbZ/HCtjQ0gEb4MWPw4CZiTj8tRM=;
	h=To:Subject:From:Date:From;
	b=oZW3RHFAFw6ZObkWVdbfNveNeGm4dNVtUg7y3blH4nbRrProQDigZA9hQrhBuQwzn
	 YfmyYZ8B6FlPLHz4PPdMRc/zYvYbFAR1sq2jb1SXy/4TNYbALcTEP7Td0Tn7VYZ0hZ
	 E0NSrSwhotuoupx080vDsSkME0QrhxUTnhusNI4VVwJVv2qtfiubRFLFPzUK9KkM24
	 frF566XzOz6OmkG0dGF/tOOjDHDD0lda40FwGVueWwiZ09r0ldIEbckOhLroGxTEEa
	 c6++cl8JKP8Ig8A2okaJO8OWGES2viyb/qB58o9NCpmGKjYeZngu7SAD+m8B1sRVKr
	 m+RNJbt7rRbcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970C0C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174316679360.2858.2900346904209303475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3daaae4bcc86891ff69d054985bbdb72fa4085ee59474f10ecd6e3b3dceabc5
Date: Fri, 28 Mar 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743166793
