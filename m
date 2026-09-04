Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 642CA33ADAF
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788513634; cv=none; b=B1bShvCi5HJcTswP2PHDxxDArdAdwWtmAzz/NTAorjbTejSV7LJmtnmqzQIxx6DhsGYtWaKu8BzMNC6bYEl3TFHDWfcUkH3ieejz2BKtaMwNwV2yGPdS+cUGC9OjsH+aKeqMQaBH/ivKCTjhUaRHzFOC6qpP0Pb+8Pd0gGxvMNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788513634; c=relaxed/simple;
	bh=mUcIptqEADgusvxhzssOEK1tQjA7zFUiYj1hwGFkIoc=;
	h=To:Subject:From:Message-Id:Date; b=awgTpG7xoDjunCpANDNLZUoi+8kDLRPOnb1xVqHAw6U4Pv5/tnqIFfZgZ9ywEyu7LfOqDMMh/ASXmd2Fn2ei6KHMUhsfQkiSVoD5AMNTcF5KR++VEUjxyF3xH3cT54EyF7fKtFpSbpGEcMhxIErXugBeTzLfcsGouJInCdv4ecA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V+ytJss9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+ytJss9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FFFC2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788513633;
	bh=mUcIptqEADgusvxhzssOEK1tQjA7zFUiYj1hwGFkIoc=;
	h=To:Subject:From:Date:From;
	b=V+ytJss9T08UIYngMq8VGN0+6avTWknE/DGWaAYJ/u8lA+z8kaWNlussJaWWuWfhH
	 rpM/e4W2FgGjPCPzLLvBP93L5Xv4myuXcWbizXXPfGOh8VpQeJ5ET+n25OrQ2AmThx
	 ok1ZDBlorzQH0s/Iubs18HNpfkbb3zwawd7ZOvhACVf67WujYEODmHxoRsklUAC7HD
	 IWtzA54c1QoBchgEO6k8nTr5g+LYiL+EIPlPYmPu0hCWonq1pVFEhEsmuhk3Dq3B8G
	 +ZWqR9rfXWmF0VbnNDquTtexFM4yQc/GCpIh/By7vlUCxUmxvuPw58CkKHMrh5nRHW
	 g4PVRU8rUPJnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A6AC79F85
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178851363371.17485.1488391863404204720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 843bb2a917c2861b236ac2ee46dcdb1658a20975e3148e58f8489a262b98d193
Date: Fri, 04 Sep 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788513633
