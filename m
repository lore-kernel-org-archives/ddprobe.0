Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D70FB2FE59C
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 01:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765244573; cv=none; b=useP/mR4oMuWFoCHPAO5uV6jOKn4GhBV6R4w7Y/ZCo7w4PJal3HYqFEWXjJbOGS0pd1+IPN0tYGug/ssduqelFErXPCqYGMsPnntGvEMHdtLbL2RVivjblkzQ2scDiTZ0yeBScn0qUjpk1ethLlzNzWHtGLwkT+xsySBGLqf1QA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765244573; c=relaxed/simple;
	bh=Ll6RwM1+uyI8uhXsnImtkCXg3Syekuk+bB/uOESWELU=;
	h=To:Subject:From:Message-Id:Date; b=KLZZR4RpBpfAPkoj9/X0fkjuckzWEr5xQGTPuAqliSoENzroPjppu7jTS30MpDL2YGLO2S6cUrURXl2RRU46JE1LUZG9A1z17avnE8cvlTSwGSk2qSpGm8VmeEv+iXVCCAvqkIHfQjtbo2dr7RCKQuC83qbOlZ5uRoKFCKGSlUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uqi1/QGB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uqi1/QGB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BF4C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 01:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765244573;
	bh=Ll6RwM1+uyI8uhXsnImtkCXg3Syekuk+bB/uOESWELU=;
	h=To:Subject:From:Date:From;
	b=uqi1/QGBqY/qofcPHUJY1KKSkrOKikQsj3gaJYlbvAAPmt521C3J+aq2I+zSVLcSX
	 /3kGNjUBWD/q2bmtx8vsqWz2pILl+ufQ9u9f8nEfe6P+5KhXuq+5FV5mhF8ZQwtqEk
	 5CaW9R+cGSTtGOAg555EfqXYB59C+yoj29P7dovglumcMIaYPa0jzVgX4f/6QAcLc+
	 Qa/RDp0j1VLJ3rE90gw4mWwemjrR3YWpSfHDoy/nubJr6q0kZSwydZI3UN3TnaycqO
	 1mAxFTa5lL+cMBpwXjDwEsWxoBPDQQXh1px1uekvULuOSMPrbKcxANU4L+gP7scB8U
	 63v5KhMqSUmqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF5ED3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 01:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176524457358.7426.1974519837999556313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93fa451530b90f47fa4277f57f43a0810ee2196c0621e9510eb0634b767ee958
Date: Tue, 09 Dec 2025 01:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765244573
