Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3E3305943
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761581994; cv=none; b=fcfmTAb+TqyxNkmnKgx0Ao/tle0QBsIZxA8xBGnmFiNie4K4jWzDoO5q24k0GgtqAs10MesRD/yorx36Oe/wyx/16tQEFRBdnK4B+DtawhTft7N2gCUa3e+rsYGBr5P093FUytAU9QzvmBPViGBrBAxECOP1oH+A+bkkkajKEDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761581994; c=relaxed/simple;
	bh=F7bxK7EZFshH3ieDH8fVEY7bR9Z0+eoV2BimP9WC5ws=;
	h=To:Subject:From:Message-Id:Date; b=uLSSnnBMiQilZ7H3q5i4Y6Sdq5w0A0NToQ4U59WlehOK/WvbtHCtDVdMzrRd0arlKIS9AGTcNmmC0XOaK0X162PTG1Iitu/+UPf6WgBKgkovV8LEicVRdEirIFedp7AE7pfLFSyrH1VaXcdT3QXz/ytqOVmjHFz6wZta3KwP8dA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CkmMYnWc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CkmMYnWc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0538C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761581993;
	bh=F7bxK7EZFshH3ieDH8fVEY7bR9Z0+eoV2BimP9WC5ws=;
	h=To:Subject:From:Date:From;
	b=CkmMYnWcGZK5zA6+xTBW8n02miTYDGN1/nHtYPvzUtN6ef7tZ6jODdG0vAOcAGQAi
	 +6k0p+Ecyj4ok2T8+lPpMRPJe+U4GU0g0h4NG/2GFyNXOKEsLa9tOY9lIyIa/d7oPw
	 rRv6rt2CUoAuT5eOITt4JPKAjioim0mieMLFafW+L45NfR9pgfBtDUgpVWbhyAde0a
	 r6YFS3bCrxOsyrvpGLe6iLHwPdTM8LUC/YeJ+fMlrfzSB8CxWVzQGLjpf9ER7T2PLg
	 sNZPGtwWfe5B2qocOkGdVYotHdzWaX1uNBKQWsFmNlDbmZQeUdPyyLtHn5tsLNya8j
	 ghWiAJdEnHC2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917CBCCF9EB
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176158199358.11827.18184637607101015547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8fa50e80095472b9e2290219f323e3814bab4602cfffd356e57e5ca8aee7157
Date: Mon, 27 Oct 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761581993
