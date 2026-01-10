Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F024C2AE78
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768071834; cv=none; b=Gj2HmDzObmEHyTjXTg6+TdjnVfqDlTV0ZKsLiD+7AaVqSFPUVXXeb2/sStT9KQlnWxufOjhIDVwdMfCtVwMXBV0blP2CC45QcMmS3RQ055XjlUC7CJIDyorgK3maP9GoOO6wghQA4cKMsYXSGQioh1fIWRcOVCK60vZOd+I1KpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768071834; c=relaxed/simple;
	bh=O3VPVYeJQEmpEV89kzdHyTun/T0DF+XJnPCRfxp8cu0=;
	h=To:Subject:From:Message-Id:Date; b=K9kYGEP2UUJx5g56TQpCirWChv1nwqwFf50/ONQJtXHrE6nUDA4jk7FVey5XfJG859fIfocfwpMhZ06WfHmg/PCiS9gfPxFcfdI3lGrakFXMKOWl2djNNxpFiNHHioUpoUEeiDCcQrI4F1RgepG8X1qk7/HQF1KPtsgXOO+1lP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QdqiueCo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QdqiueCo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B22C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768071833;
	bh=O3VPVYeJQEmpEV89kzdHyTun/T0DF+XJnPCRfxp8cu0=;
	h=To:Subject:From:Date:From;
	b=QdqiueCost0b7/X96H7r1EnQe9eUaZOS8N5TM5Z+ltD6zVkCmHr+hScZpX0OWgrqQ
	 KLemCMghR1u5N+BLul7MFcdcm5BNILFlUgAuZr8ZA5YmQI7ys4TW9iUYDJfCvgQHxp
	 N+kZ2FZxYtk/9HuT0Qs4ON3VKJ/1lZYFgMtu12NUXlZfGgHSMCbKJlgfCTQmu5yEdF
	 KU3xoU3g+hyUxF8GrM4hlmtt4+tyfhHuE3R3VkyR0flG+jJaUAnm7e50o7wfYNreAE
	 ZS7LfGoo/4dGWyY4GD2IyrtMIcVjgcKR2KENcuH/1q322ZfbCo6Iy1gqeMM3bkSwIw
	 g+Z7NtVtf2GvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91959D277C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176807183357.3577.12714283328779880479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37ae5257919a12b61ddabe849f66cfcd99bef3f2150fcf347c7831e9a1ef58e1
Date: Sat, 10 Jan 2026 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768071833
