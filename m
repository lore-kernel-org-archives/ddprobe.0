Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FAC52B2DA
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 22:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740869934; cv=none; b=nXmxUtQ+KLrFKYXX6YMU8YeJxNwtjFvvzoHjRcMHdtxtXygP/LHGLi2sRVSMTnvbFQC5QJTeuBukqkQndjtG536IsD87j9htzjeRFk5NhoPNwijfTqOt7dxSdkSm+U6Rod4nB1jL4iHthR4cz/BoKfU+IQLcre9/ohEOt/MM4JQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740869934; c=relaxed/simple;
	bh=+60WlMm3nWFd8OUfsme/QBrl7/2w2NoEOjM+IOu2xj0=;
	h=To:Subject:From:Message-Id:Date; b=oJ0oOvTJ2eietQH5owAD1nGIkIDrshZJxRRhJwdWbgz6QR+C1cmqz0vwIR4zc4mlIT+fHLX1E20YRFrrNyxGXXjIb/gXhcZ1mIs4AtqXp2MvGknXZ9klstKXTcuhG+tvyIfsYVrbulaoku1kU1hpSAahTmuHflURckuOqcQRKWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kXClJXla; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kXClJXla"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9992C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 22:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740869933;
	bh=+60WlMm3nWFd8OUfsme/QBrl7/2w2NoEOjM+IOu2xj0=;
	h=To:Subject:From:Date:From;
	b=kXClJXlaevuBbeRQznj5vnND/eCjoM3DP/XUx67T5+9KZ22n2oCbMBVTS9tz6f5jy
	 7eHsxFJd9lRh4SGxKvRBJ7RyxTKbvTeCyL9Ojk6OdraGuWxrsKnoXSiyQmcFtmGD2z
	 xMvQ9Bl7WQ+LBDSd0C2EC4PRdvWpTTj9TbxNWRENQQKNsRAbQEUit0lTTcA+G0YAbW
	 zkEJJFvGviL17E+mxx86TfDRdzxfs49/vqsvvt7VG9exb/zNg0YSmqUcX+xYhf9vbb
	 UX2qYroe1ngeV6agzTxmoTZFiD1I0eKN2nL3eFCPwyjTrJAvhmMnNSuL9itI1s1kyH
	 Nr9T6eJMrpuwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AE6C021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 22:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174086993358.14904.13231755778404963091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 560f160767eecf92e281ea2e214e4a035f84f0cb5192b5ae0ace2612848c7047
Date: Sat, 01 Mar 2025 22:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740869933
