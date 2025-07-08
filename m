Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249E621E0BA
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751954994; cv=none; b=ZOv9lkSirKggkGi6HVn0X0j7SYJ6Ylq1j5rYCBDdQHXeuEwCVgz7iYthszFv64C13qqA0EHWGuiVzQCHN0sVjDSUy2eMfmPBLRJnB3+hiDbOuW5Smb5ldjdAGF4pldt+w32esOcnqpyKVevNeF1y9eAxr6NSAzi74cX5v/cc2dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751954994; c=relaxed/simple;
	bh=LEyaAjdIOhNIziaM7oPYgFHAbYAwZ/TyC1RrmYAwEXE=;
	h=To:Subject:From:Message-Id:Date; b=hB/vrOWQ/3Z3qyBO5gD5edfr+qP9fcfEtAwBIqgYXCPe8kX15+h1kEw+9c4fiBjI+xOsk+DSB7GiUm3FSSVmWU2O5zw3yx8zHlZoIaXis1NOZJqaH1no91ohvSRZr2W39BwZuPIrNGWaor3u8CMykFVthcPCkA/HSsett66ARtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T8+zI9BN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T8+zI9BN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D79C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751954993;
	bh=LEyaAjdIOhNIziaM7oPYgFHAbYAwZ/TyC1RrmYAwEXE=;
	h=To:Subject:From:Date:From;
	b=T8+zI9BNorp6tqhPbC52rVO+Lh62PonZ6nhX5MPRjhSTWXkrYBKXyeerSEPA5ATFZ
	 X7H/6axNw7yoESHgIPC4ui48JGqF41V3cW3ToKqIeMbORkPbdBurDyThkWTdAX2kxI
	 xOb7VQS0O4/OLAH/u3pcssfQNH47kju3IJZaZ6i9qJh3rl6R9p4HBHyrob5R7jX6WZ
	 iBY9huVj+pTSiGHzG4btZNvATlzTgUO1Hf8fiUhBwhcuv0ejJozHBIGJ+o7XVb0v5N
	 S1Jsoj/Gj+kqZU5RcS+BOJEL2jCCcISWr6o1Q9JwMKBdNL84N8PgFgl5FbNbejJ9sN
	 mHg3+9AoK1kcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5FFC8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175195499357.19344.15855867100602455779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59cec8b844f09e20d936e7a39d3e7d7a02a66a9d0438c5906d9f03af0aeb6407
Date: Tue, 08 Jul 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751954993
