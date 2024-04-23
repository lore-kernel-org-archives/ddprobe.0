Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1013F745E2
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 13:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713878423; cv=none; b=C+G6GSP422L6uFblnyLCeOT/JDHqYgomUA0zeVuStca/3mycX3LH10DbpI+2KYex3fwWKMnvVxc4RWGS+8icJGmnJAez5YhlggcwGBW54zimo7lxhd6vDd9K9z2o0rKdOqMpRd+4OcuTSymBlC4p8TD7RfGW2MDrVD4S3KDtXDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713878423; c=relaxed/simple;
	bh=TDrECutKlzMZZVhAkj0T1LLgkq8Ij8Sz3k2rZQ+qY64=;
	h=To:Subject:From:Message-Id:Date; b=k/umr/VH05n7Sa0pp5yz7BSPw42DXuyTzDzrprwIqICOjjd9dAjoSeYRoHsW9FJ7pGeOIlqDMmJOSFhBxbKa+Gy4sXmWhQxXiYkjSUpAKlc9CTrZ9mpKB/TZXiJl37bCl8ilRpFtLXLoO8+tu4AK12yku8hWcKlpoccq84XKpW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RpT5N3V2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RpT5N3V2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDBBCC2BD11
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 13:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713878422;
	bh=TDrECutKlzMZZVhAkj0T1LLgkq8Ij8Sz3k2rZQ+qY64=;
	h=To:Subject:From:Date:From;
	b=RpT5N3V2QW+dsJKXWVCC/Y6GlrGGY417WP3MgFzbAzlWHYs0pgbkUG6WHoGGk0rPF
	 9bWN7tJsraI3jIkdmLyFbg+3sdkgVQcEw8Eixos4W4ubQo/m3+u3As2tb+DXl09rUv
	 v2iBcO+zhTbk4R8eGpYdQnbjYJ1s/B+5oJuxR+enbsfnpCwDF/mebmc3u9pj9zHXgM
	 m5FQuNKKYi1AIyAMDNf16SIE5L3Jj4uSCKltzNmuy9wN57wQH+bNwAyefS6H6JO0X2
	 ldhVPwqyKF8Z815aPrgmKP8OSEA36RBaCPjgVNCh0Oo/S1LPokoJhPZwsfQChTDjQ8
	 jDeottj0My+OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCFEAC4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 13:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171387842276.31770.12059533581777891587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c772f8f45d7808e9ce562f3ad69509fdab0a037ef6476232dd26dbc0ba2be4e
Date: Tue, 23 Apr 2024 13:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713878422
