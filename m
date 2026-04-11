Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F28F41F418F
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 12:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775912254; cv=none; b=e1XBkDVBRtS7oMiib6SkswUuha0vSvZgI0do2DgUVzN4j1s8efYpEMImwquq9BWC9WGMu2elPSkhehXTfifcDTbHdeb/NmZ8IZHOtFiveFaol4Acbzjgbv/C0duHmaSalI1l+VHbIooqP7n7CXY1S1CKAi0bP/GL1pPrFvHPw5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775912254; c=relaxed/simple;
	bh=t3MuJGkY8yClspfVuJP7lGp63az174Wi0yIBj5Dq3vE=;
	h=To:Subject:From:Message-Id:Date; b=W5Vi9OCG+w5majSo/wfZX57kM61h8bPoYOh2n7J5+5S4X8ZEeLtHxBKgiaP1agLRhMPjG48nf5OBDMyiQvbQy+cocmO6jN0fX3426nRvx5DSs5XmOkZlaP3i+9iMq5x8ehn80oZPI7dlIooG9kig2KgQKGKz77652WHddT6nj3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pGFLJz7P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pGFLJz7P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3D35C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 12:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775912253;
	bh=t3MuJGkY8yClspfVuJP7lGp63az174Wi0yIBj5Dq3vE=;
	h=To:Subject:From:Date:From;
	b=pGFLJz7PAKY6z/HyUXJCPhudJGO4/6qWZeo2xUxjcBuSOPRLOrOhlrfHAJL6WByyF
	 JX/jR3inQ4/ZE09HthtcGr3lesd+qqeB8mZa9P7gasnK0tvzqj1gVdrolgrunLKR8/
	 XqB3O8bNHA77BcXaOsesj9Mg/iTtBAQ9kJC1R2GPcKPvrKwd8FO7jdiyC8R4TOfG1b
	 xyOYVriIXnk/WhaHjZ0hJaef/+jshDw8hSkf4bfEDCvO7Rqx5hXjISnrv0d8GBWRtr
	 S/xFBBB3q6/J4o2aRpQ4YUUTGW7HR2CGLkCxAIs7JwmImf+l7/lnrRvp2/haKonf4w
	 3wwG5RKNU8P0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2C2F3ED4D
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 12:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177591225368.26086.11941057564211775856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38a314738c5c65c954cdce3d79cacc6143d251d3564fa33cd330b9c6e312e3bb
Date: Sat, 11 Apr 2026 12:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775912253
