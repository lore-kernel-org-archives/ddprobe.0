Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A93B1EEA3C
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 22:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776377254; cv=none; b=q3carvU6Vlzsixxo9VmoTNZfjF+5SrkaaeLDPyo0R08DhfkpIRDb2s97h5r5qa5EufVj36iKCaHImUHaWd3Qn5oImduyz/n+48oDWeDwHO0UJDT78Q3A5N1I9lZRkDRA8HUqmwELlbRNIgSYGE5y8XWesd4AoaM57baTkVLVrXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776377254; c=relaxed/simple;
	bh=XiYVfjqa/TNeYUuLNKcZTegI13XQ48DiQmVy6vvti7M=;
	h=To:Subject:From:Message-Id:Date; b=CwAhZlgYoISK5EHgQFpltkkrlh/euopY/+U8ly9qi/C4rRV2BdPE4JMLo6dw/cJGX/s9CyhyDSmhQvhdrEpiuFngGvviLqvKFoBd5REPDsUQs+0XayHWOPFOEbBRyrv1TrmrdNj1use1Z45+HgrARowzomap0ncjhsOi5FGj61Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RiYZ+nMy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RiYZ+nMy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B96A3C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 22:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776377253;
	bh=XiYVfjqa/TNeYUuLNKcZTegI13XQ48DiQmVy6vvti7M=;
	h=To:Subject:From:Date:From;
	b=RiYZ+nMyz+e4IPtrfJ3d/urmwRLhC3KDwkrmb3CtzHIOYOMBF+v5BS9asTUnF+ZlP
	 nrdmmRXWWt9fu7uIHFU1/50z9UYZOEK+6g2RANqzj2mGi/O8VLIMSitnUUJMCB4be5
	 9NNZoy5ZCRgngAIIW0IYVeIvLJ2A9SXISf++mJl3gLjf/hkqoEPdOSIUA6ATcJl3t7
	 bzPwAuKTkpQugTK5gH6pdfemcpLactyod9lvaPZd1GNCcqRXDBJdB4s3WPYSlqktG0
	 CKF4Edzhe9gsHnRbOHqKtiDFprCJ7e+85WU1WP9kZDCTJLCS16SGtcvutXtmHgDDcU
	 a6fCiuSQxBuGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DB8F8DFD0
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 22:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177637725368.2911.9365594919848101115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea84e2b8bd48814914b773621b8e729ea098f024493726e46a458a287db05fd5
Date: Thu, 16 Apr 2026 22:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776377253
