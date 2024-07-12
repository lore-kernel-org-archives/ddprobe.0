Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4362216F90C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 15:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720798163; cv=none; b=Yq2Suz0s8tB7GWuTIa1WM9BXRUanSqm7OXNnBTSC3/a2CDOLNHK+YN2gkhCbwJF5tLL+AoGPYKqvegRdrfpHnXnxuLUQoeWo5PJPZsE5dln05Ej3ZxnCvf0wmiGk/u5E0nBpWJqNdWq+JBtsZDSFvIY0x4sXcrLRfd1b2Eq1sEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720798163; c=relaxed/simple;
	bh=u3b6wR2ky3RHUrbexS9b0b1ePiX60CFc2zDyWHHnF6c=;
	h=To:Subject:From:Message-Id:Date; b=qJSWffu5ashlL29fvv6KsbN+rJ6jVfvzDWwtUV2CNxINprkYIAGZh+0MoVm9K2Q8KF+ns77dNZo6tKO93FZVJU6wbkN6gVKoybXx6/TOXLHJJKgfLmooFx3aW25T0lxaf7rhD+vh/JY0wrve5t3I4eb5rpEUOvNLqiF44rXlcJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tyiQoj4C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tyiQoj4C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D761DC32786
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 15:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720798162;
	bh=u3b6wR2ky3RHUrbexS9b0b1ePiX60CFc2zDyWHHnF6c=;
	h=To:Subject:From:Date:From;
	b=tyiQoj4CZ8ra81nEwccrh5rHfge//ZQI6rZJBIic1IXi6SPJSMrLyBjcy3kBjWHC5
	 tuhKjppE+Gc4gQhmfUt2xZML7yKkgZASLJ7FN2saaeiIXAGpfFNONEzvpIk4GCVCKe
	 2jGTX6UfnU5vTidRTCUl+N/iYDp9MtaK+kduJ++lOypdhnFNZNmdtnmFRCMvo75iQJ
	 OOXZQ/GRGmYCF5+Xd4euEo3a4dEXCq6eHc04waNBaitYWyPFuL4Vbc0Y0aqZQ0yTlf
	 DbkkrmBTmHVkeTGsLs6Iw4sQta7A7PsRqiDzzQJWVE/SDfW71omaJv3mxmHeYwAYYx
	 hesa0LkjgfrKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C751FC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 15:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172079816280.26815.8181894592317237177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91ccff254eb49d32bd415f0dcdd765bb3ec85db1dac01fdbe597a92c2636667d
Date: Fri, 12 Jul 2024 15:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720798162
