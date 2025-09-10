Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B41286425
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757504995; cv=none; b=JPInukhnuLaWZtI+v2oodDJBu/YDKB53XUkj8ZhVsscIkYasHVT4EvmP7H9rk3zF0enVn8YglC9/58LrJt4yknwt1r9rNAfvgZdMF9KDItsd1gFl6F3Kth8D3Tbx/JfEK/xZ4PfXieaS+tu/AdVdtMrSYFORe6aunn3wzZgJtOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757504995; c=relaxed/simple;
	bh=kpZo2d5bFDnRtH7PIrDWtHRUTE9IaCYa9BROx37xrbg=;
	h=To:Subject:From:Message-Id:Date; b=eP5kEDvMb9YIbXXZn5x4KewbFjym5saA6RxAYPdT/vWuEtFay7dwVmDZv4LZBLvbL064u0LyGskKqs9ibFrJFSHQf974saZPx+wivMK/hHOORc/RtCvVBux1/WE+rDkOMvympqESQX3i7B+7B/5mtZgALNFf4f0lHKLRnVudSWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s/SjA1eU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s/SjA1eU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04DBC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757504993;
	bh=kpZo2d5bFDnRtH7PIrDWtHRUTE9IaCYa9BROx37xrbg=;
	h=To:Subject:From:Date:From;
	b=s/SjA1eUt2+AHRyrtAJ30cI6zPE6uN5eVgfjFzXwKfR5SZQzAnMRa7D61oidCh+xc
	 1pbdfl83CtyGQAxFHnnSzEai/pYCiNvchv7wj/pp31WeHrU9FyIgP7GkjSbU9MBRpB
	 Y0lgYATB9St9q1ilK3BNKnWQ7qemlJWbYIzLv5qj57WDZh4x1qztCZi7zW5PNO3nc6
	 RJK02oJ7SrsaTKf05Q752KGSMXLkU44bbvrKdB8vAPyD5BEuDzN2er+CgcZQ2WeaGr
	 OcDS98SNVX7qrNzp4lQQN5ekYvDr4hvPyvXyC5z5RIe4ylOZAD9khVM/UYhDUu9i3j
	 bI9DkjOnlcQ0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7DECA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175750499357.3248.17616166033344068373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f35a050762ca5a663b6c35d8ef2295c7d990a757a62c57558e8b543e42cb6d72
Date: Wed, 10 Sep 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757504993
