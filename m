Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E08A3BBF5
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724534154; cv=none; b=PtJp2E45VmC19y5D0X7rSdKdnPDzk8LU2XGDcj0U58HMvMOqOKrMUcO7YOjRM5CvndyMRFmfc7a19XT29ttJ2lWVGuPA4H3ibj2keU4imJMROsDixDgRYF3ctnKsPP7LGpGEASGsbvpgV5rLvSfm0eZLbY7obi+dmbmtBbm5QuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724534154; c=relaxed/simple;
	bh=xS7xr9d8EnwaglgG2H07E83DUbE0p/XAZLdLftFB4OM=;
	h=To:Subject:From:Message-Id:Date; b=rA17DWLe7sl5YB6aww4R7fbyuq1xsUNsERuoDePEDqlGLwdqinSF33bEOjIFDAa4xGWEW2LkFf0f6sNhgYbWfZtfNoJOsug4TQ5B1kphmWIWDHI4SiMM9boVaJb2rFVHLZwBqtcxEeL3TuxROjMIvS16177Zu/OKlf1Fc/IpVxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UtsG4Kfi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UtsG4Kfi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF26C32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724534153;
	bh=xS7xr9d8EnwaglgG2H07E83DUbE0p/XAZLdLftFB4OM=;
	h=To:Subject:From:Date:From;
	b=UtsG4KfiHdjKE/IUkE1STfkqsJWXdglJjsK+BU1wfeTOv1EUYgGsooed9Amh7KAAX
	 LmFPWyAiVVRAcfpiaLXStZeRLRTXLv5IDwqPM2wcEw43R72fWuTsiTH8S1EoAA6Xwg
	 7VUfwYpEkYbnoUo+rWoOn9Aj90bES5WrxGWjG4o6HqjXgSZIfRRLR9cPWozXV739O7
	 O0zNgNeRhYAsDRhVSogizuFWpO3QBw4+3y6zAwawqD+Jip9OGU/xf84CroAi4GaIB5
	 go+DyEbCH9Y+f6pDdgWUhpWiryExkt/vmxOxMz+TqxfWXpxxxDeAAMz/UopF06pzTX
	 JYbe0VqFl3Zxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991F9C52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172453415359.32755.364608949919471485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 814b3c59a90058c8d3eab8223a4d67f8d81bcbf5bdcd927aae588fec4ff97fe5
Date: Sat, 24 Aug 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724534153
