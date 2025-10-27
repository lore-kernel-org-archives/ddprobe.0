Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C0F2FB635
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761565194; cv=none; b=YvbMZ+8T8wUeeyVVNj+reruUPKtJf3Ok7e7N6UMusvTS1puGbIU6gbG9vfHJ9wvVn6/BrHATeHKxfEuuwG36M+dmfLQWkymRc6jUXwxQEKVnK8rBI9+dbSEXL0MkGeEo8XiZDXrLy3Rqgr34mEGdm5VNFxofcrDDB2Uk4YGJanw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761565194; c=relaxed/simple;
	bh=CYjShO35AIXOwzvYjh5M1UQnXL4ficStE6vd9d1KG7I=;
	h=To:Subject:From:Message-Id:Date; b=a/nV74qFLkJRxf+6ngJ8FOzmxaoKuagdCFpeyr7LS68cpzP/lDxuNh5/cHUeNXLYR1dyJzCNd2/MS3wTHd+it3HldcOQ3WPeEb6AXsv4Unt+CZcb0bUFMlxQGZR/P4vARxFryz0RS7JHx2FtoAs0R2F+jRBuDjtrXuNwRR5HX18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t+qvkmwl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t+qvkmwl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC696C113D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761565193;
	bh=CYjShO35AIXOwzvYjh5M1UQnXL4ficStE6vd9d1KG7I=;
	h=To:Subject:From:Date:From;
	b=t+qvkmwlz6/dOsZKs7487lAURO7vD2xTbgb9JyM888YAfbFnE5MfJQjke1fpD1P8u
	 AUR9ZK4LoG23PO2Q61nxW3Df7OFackt/fs2AQHJHsd12EyH3CL71qnryS5p7X3VoBK
	 uFAFhPjKWkwbQiFSpyaomeG3gBYNXXjAMci3hP9ugNIkCwtRtGPtaabLCpKkHI3uA8
	 1RqsWLw/tZ17oRwaghu1RoYmgItPLga3lpx1zd5UsSvjVCoMw+4tascLIkAH4HKwBp
	 3jjQPpmaV4ppsYWSXbrSjPCH8N/ZgZJtrT4a+NZhxcsYFo2FJk1VOA7BDMVVkCOfky
	 qfDMMyOnhsu2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C00BCCF9EA
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176156519362.29998.3065955190912669151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8aa31e47fee22c6c927b5b3982999ed4deea341c9f536565ce842c2993b2438a
Date: Mon, 27 Oct 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761565193
