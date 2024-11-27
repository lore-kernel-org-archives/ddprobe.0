Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A168F9DD
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732743954; cv=none; b=FhioiimF7UkPvpfoMsOw+53BEp0YdWScIZBHq5jI18RIkYVSbWeTQ+ZdXRd88Kg1PpN17vaMt1LIE3T6hq89ITupmN5Bn2G3k8S/k0b2jrDZpkXUArC26JFvWcmUd0cJMiI0EW2xmjkkGExT0kSwjlheeCmpeAYo12QSq42mBoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732743954; c=relaxed/simple;
	bh=RHSW5OWVTaQtxoZD2CPJ3VSFTAxDttpR18MrbKyTBnI=;
	h=To:Subject:From:Message-Id:Date; b=bLP2DGMyN36OM7kPv7zjoBEdSOmhLuD6CoyCpoKDL4B9KgM3q+YQ22YX4tDaZTdElaoug5NRBvJQFLdE6dg+f5JFqOjtVACKYfyqAuK737DV/rtku0zBmI2ve1CxBZfJBsPqO1j1WvXRc0sBjjPzroyjAV51CQ3FxlawRadgbiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R5wm2ILW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R5wm2ILW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F8BC4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732743953;
	bh=RHSW5OWVTaQtxoZD2CPJ3VSFTAxDttpR18MrbKyTBnI=;
	h=To:Subject:From:Date:From;
	b=R5wm2ILWHh3HPs+qsJZVYTANSbozzcC7fygowgFf5D25CO+B0JI9UvR4A5IMZDU4b
	 WWdYkotnX50JZHqg5zvCaFYZ1aTVnJ8ExmdnpK0w+8uKp9ydTGkvAQnI/71LtkaXDi
	 hCdGvcXerBEwx90u/ifhtI03KOokDYIxv6ynOzlwbwpV9UpGxQZRTyfssns87bq6Gk
	 AghSsTnRLRyCD4EjO6JdtGJnIegsyeAVNI+u77i8JmtrgL0F57O9ycHGhazJYwVFWt
	 PiKcxgapDuYFo8VyPxzjRrMp7CinnM8vEYv4Z0UuPlCR3/C/qeEkJymTXcfPlIe/5K
	 iiDHDyz7j1LRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97907D6D23C
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173274395357.27576.14310944395068529909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7899a932e500714b1c2863e67a2e5ff5b9e04e9340d004b09510ca52b6b16e45
Date: Wed, 27 Nov 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732743953
