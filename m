Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B2439ACF
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747402194; cv=none; b=Wj9P/B5DOIQo1rrLVd5RaDlFcgQgHYV/FLq0zB4DZU2Rv0q7xqnCh41R88pn1CzQceAr872PVO89OWeGIEiqyvRs004SFMMSgF/CEKJ0JweA6YkyYDBaZVmOoEU2uYR1UkJfoLbTOZnu1h2kmOhfUxnJ6lui+f6BjXfP1dv1pOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747402194; c=relaxed/simple;
	bh=BwFjw8gsbCSvx4YcGuTSQJ7UCWhFjdhNd7ur6COzLM8=;
	h=To:Subject:From:Message-Id:Date; b=MSd+J2zV/OPNG/+Zui4IwgUAQIMSI0P0JXlkLT6lYCgMHNbIMqR37DLNHa90nx8YBHUmINiv0NFUNzgCkifIeRvPx6RpKxXn7Rtnrk09xvRJj+FQkjzoPadnxNIamRGbs0mF8UnHOXgtz2h7cM1r2dTpe90AcRJUxpWGQMAU5fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TlRmArmx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TlRmArmx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0F6C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747402193;
	bh=BwFjw8gsbCSvx4YcGuTSQJ7UCWhFjdhNd7ur6COzLM8=;
	h=To:Subject:From:Date:From;
	b=TlRmArmxK+s5cnxLVAXXJO+VyhJ8smCqaoKqoFtzVlYgQnq/3URGwJ1Qw6tZKpiIU
	 P7QXLxXV1JXul2tIRK+TJwyIBVoKNCP1kumfhNv69lsrI0hMKjpn7sWGXpUyNueF34
	 o83BwrraDqDGLW6H1UajCcPSRM7hv2C83K8ltg0w681Jf6jEQ8B7R2Qh3/nsxqMZf9
	 ehMCDWsU3XD1hjSu2ZVF7BfMRDAsKCwdSFJhDWtqYFf9q0VNyZtoGs9Jg61kG4i15t
	 HrW3Nhg6tbYl7NDwoJskuDqzFovdKP86oo4YTlhh1Jqa5UUDUh8RMhk0DkBAHgL31S
	 Uoz+13cJCItNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0E9C3ABC9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174740219357.30426.2194442456571563812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00db9a533665b0d08c277b6469acb25b365fe4d56665b5175be44ba7309c6390
Date: Fri, 16 May 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747402193
