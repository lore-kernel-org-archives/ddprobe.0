Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 609802FB6
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 18:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714241543; cv=none; b=NUjLJFdctagCQBxK8UCmjH+miXhNgHYiEEeqbnE1m3+fMpI3uL1l3oQ4EfOnR2BFW/7fSFbZeIj9QWNNs7PcRu9lhCEDdUjjxKk9A+gPQ+P13bzxEartP4cACWCQeSyEKuJSfyAvNzinAl6qvcqAf4wHMfDObHxRlDNOdUsSj70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714241543; c=relaxed/simple;
	bh=ApaMLZJUMyMI66FWesKqw4qnBNgQYpSv8uRzHBcxwPg=;
	h=To:Subject:From:Message-Id:Date; b=EDnySqXjmMYOdaWO8Y7F/5BdPN0lZwxZ+r6znQjDYpwKfT3rnlZ42gpRfBR9kDlGEyz3Ttwdf1AWOg1gfojuw7pwmPnFa1cimFmDWrlpgXofYgk2ruELoZLqhvfIZZV/7iAm8Rd4C6PfK+XR02X9qNCQ4sbOPLfjpZacyflmlIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CSqLdlXS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CSqLdlXS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C87C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 18:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714241542;
	bh=ApaMLZJUMyMI66FWesKqw4qnBNgQYpSv8uRzHBcxwPg=;
	h=To:Subject:From:Date:From;
	b=CSqLdlXSO4pjhZeKHZjhoKMfDC1AYUWBMJPCkzl2YNlEnJoHKzhwd6e+2UcOk/iVF
	 nXMDW/ZF+dlZm1wrfvzkE6ptpZik3NhewbW15hH3vOwiEu8Go5BE5qFaB/hzsAOe6Q
	 EF2Y8rAbWJIKXnHyyyfnC2cmxr53utuWwvN+ZiQyDBMwHEZYah9ITYmX2/bgRikZTZ
	 shIev2DEKaUTmlqd4ERmq1PImdBhWGReAIeSsxcEg/0L1Fomkj5hjDbh00YRztfuVW
	 l/ILUat15WQg4M8NivgE+f/6R2ndgtGj3jni9QQ1tAXm/1ABVHbFQtb6YeXk1HW3yq
	 UR+yJ2G+x3Ltw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3338C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 18:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171424154276.10985.692164231758096114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad84aea4e6ada407abbde316df0fe007454ce0af6140137217e04f103e41ab31
Date: Sat, 27 Apr 2024 18:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714241542
