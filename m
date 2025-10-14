Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B6E32C2372
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760414994; cv=none; b=sx+vH1BwJ4KJRmLBteHc1a5ckh1eZ7FkGeAICIuyAdyaXjUELjShY+9zCbVHdOQgqQvCLePIuI04F/6GX1+ykWN1pQhE6ozWpc2EcNZeM7fTDEImKFIKoy2EmCwZsjLpC+K2PF7QUpQ8bZGWoApl5KgBcZ2h4RrBLBYRrc6Crho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760414994; c=relaxed/simple;
	bh=3QY6jxRlxjuUEOSN8k8S9AZth9qZKa9H/hPUIgVxO6k=;
	h=To:Subject:From:Message-Id:Date; b=owvprXfh8FU2IxqA2jeTo9OM7/U5c+fo/giDNb931POOBUkUlZGXBL35K2cw8cSaAJmF/BtJM4fKJeMp2dEjngDYdJZUWzJUShT2HMk57/lMBOqUqD9+VeDLiW1CoeuQJRscsJuBHxiAVyHDN9vcuCJ/lCcSk3ju2Yz681A37rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oyBlfQLU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oyBlfQLU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2243C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760414993;
	bh=3QY6jxRlxjuUEOSN8k8S9AZth9qZKa9H/hPUIgVxO6k=;
	h=To:Subject:From:Date:From;
	b=oyBlfQLUO0P2MOqzH5YmXHL4YjPn5Ox0sUx91R0VsEudrmJ5jjHPYaOi1gvbT+S/o
	 maJ2bP+Ly/E9Qc6BsGsP6TyiwOhahB3/Sl3B8Ff4XPICf8IsFD73+a+iqIP50qeFcH
	 uNiqg+DcJC3dFpoz9GLf7zPyHmV5AcIrFUnJSV/upCNbhUN5jw5SyBlAWJEMCjtFag
	 zXt5nHfY/OpKFcl7AjjAtDT5lh6xjk2VnuI6SUllkxm8OxX8hfk3dKkSVXDcSjIBX2
	 9fHXe3Tb+w3clmQ8j28Hvb/Y/Qaxj+46Xft3NkR63PDt0owXrsk9tKeyD4pugS7mcr
	 9z9KYbORpjwcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7BBCCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176041499357.19305.13606480568325539131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac264a9472a0e20b99969177f4948a362f9062dfcd6ae34b2bd4f13a4a1e2f3f
Date: Tue, 14 Oct 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760414993
