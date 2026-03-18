Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122DF2FFDFC
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773875694; cv=none; b=QPIFsEJa4qUG+V4dbaQt98A+jbTET/Skgf0LKQTCiCr/+PXDW25Q7fbpuXCoTVl9aIZBh8Eap/JJLA5IZjxliQlmxPlzkCtiMnopch0qrwy7minvmFOc77S1OOtQLaJZgrs2jbWbk2kesz9yUTrtg4pT1YRWf6HideGxsRh3ZU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773875694; c=relaxed/simple;
	bh=GA47rE6BTH+hJAPLJfsqTIteHTTT0xjakLNZnlsDdG0=;
	h=To:Subject:From:Message-Id:Date; b=aA/nLhl1wneux/aoT/AHRLOPsaJnUGBmvlHaYUKFOy0KdQn23uTotpzB/bQRUM6wla+WMisQC8DjVB+bfT+odTOwPgoiz4ljbDnCaLUVQ29dL5MVu2InMywNv/27WluOhVxG7MKRp4yZ/bU9XKFfRZ6sMF4xR5EJAztAy211EKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q3mgKWQS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q3mgKWQS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5D6C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773875693;
	bh=GA47rE6BTH+hJAPLJfsqTIteHTTT0xjakLNZnlsDdG0=;
	h=To:Subject:From:Date:From;
	b=q3mgKWQSYYiTTCw16U/LVj8AxhXQptAqWepRJaQ8KdXb+BKLjHHpwBvDG9KA4bDgZ
	 jQIqyAGa8jTiiAA7QvHc9BZUUW0LlaVHTD6pcmcg5e155w/8/ve0N/MaOuTM+5TwoP
	 hHr0LMfQbaeGTTLyaJLL24XP6kWQjsheW1WUBhy/4xL6koFO6e3rpchrdO/l4JukbC
	 RjSjn7e6pMZ7JYQahXizxvt6109QjHDs3xhhDBp0sM3tD5i568mwRSoG6KmkF5P+4f
	 9kpzyYU/gYHxmjw72q7QCspTVrYcmNWfZnsnBOobCY75BRjJNM5vJgsWTV/BtV+lL4
	 ac0VqPCcfAzXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903711088E50
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177387569358.11556.1468004637387104228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e40239535fd6a76dbc90fcfc2e6442858dd8cfb29e19abb240c17ba6822bbc54
Date: Wed, 18 Mar 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773875693
