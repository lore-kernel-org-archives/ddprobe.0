Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFB83BD62E
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 11:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779966154; cv=none; b=Jo/LfH/Y1XcMZtWEK7RQMCWJeUIYiUCSlFVnAdZDeGcY/g5s3n0qaL6iuJcddYpd0Hwta1t8otuX9wcsymXK04CBBT1yzCrPjqY4XWxXLcJ4RSoo37gWp7ep2QCd2NH9cSb5NI4nGExRBTIdWlkAwX3iCzS2/iixgFZSrBSoeso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779966154; c=relaxed/simple;
	bh=X3i9SH4avjj+ExORcmtbOw6fcvJBilR2Mx8U78IpUTI=;
	h=To:Subject:From:Message-Id:Date; b=N28FDDbE8syOwsZRMkB/QA+cpbnYEDGSbxLxPQiLD0M7J29ZB8KLeaKFbAzRY1vEYP6ZV3Oij84e+6jWf5C0vcaJWtRNkHqzlpcdLwctrHQhfopW9j27nv+VZbWzJygAK0QQl/yUh4Jaa0DNVvGXpffCW3nzm3nR6cOM0k0EVNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kPViOjyP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kPViOjyP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD25FC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 11:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779966153;
	bh=X3i9SH4avjj+ExORcmtbOw6fcvJBilR2Mx8U78IpUTI=;
	h=To:Subject:From:Date:From;
	b=kPViOjyPpVFdiKP0f5Y5HRBnipcTBrKI7ofyZM0C6bOv4CS+at3YV6UDCWvpSLNuz
	 aLaGluyDQFKEYaANseAAZMlmyWmC+zaIfjEt/UXtDL3g+aHmgqUNPY3j7VrXG7rlp8
	 LEL7/+KrwhXdUaFkAmAX53QY8B+OFSix8e1YLdfPa8xeriw3/ts/Q689TbXW/JWhkO
	 d2HFIjGPdm/md4onqA8OOQoDOqgo88NEfMB/jSadCZ9jtr7mkuUzJQw7ii47ibPh6h
	 YYpR4GrtZr8nJK++Y4b1aMtJVO21gFQfbiEMwPglLrbH6YE1pRk8rw+vVDG+1j54LN
	 68M2b/BHsc5/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F28CD6E44
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 11:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177996615368.10798.10308352629893789755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8853436b121e070656b8c409092f777d227575b792fa963700637cf0918701a7
Date: Thu, 28 May 2026 11:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779966153
