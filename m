Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390A5479879
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788947434; cv=none; b=nPrYufGXX4k2D+09hB4LnC1eyq54dhN12ti0u46JvtYaShDegVbyso26fdqWK2VPI7TbYVAqh4XR7lZ/LX5d5wrWDTYyU20hRkqcuH6kZLmp1ikImuXdFuJ6NhPWGHdUD6T970BYUUmhsCZ6Qf3fNGAPMhLoM9NcWDS7MJySsEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788947434; c=relaxed/simple;
	bh=8KV0ommpxtFwaGQq5Ws9fI8bFx3iXPYInOanHRyC84A=;
	h=To:Subject:From:Message-Id:Date; b=jnddO+vifmNSIHrEyH24le4hADLjMOpxC8g/b4dYDY01PhocAoc/lsKMN/jK06nnLBsNVXvT4DuTKX0FlIXC8o7VQ+Fbf8rzoHuTxJAW/l7lKFW16mykjYwaHu/vl59rR3WonK7nOhkqARU6Vmo+NBf4+PyumpAJzPHXbb9FetE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KbN7ybWt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KbN7ybWt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6D2BC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788947433;
	bh=8KV0ommpxtFwaGQq5Ws9fI8bFx3iXPYInOanHRyC84A=;
	h=To:Subject:From:Date:From;
	b=KbN7ybWtqBLUnknZydbDuvifAk/VnfC/DKtdgdVYa5e7/bZ4HICNwATU/23M2YQpk
	 rEape3eQRpoOKRF/tdMKeAqQgHMuJHWS8Y97px5dUMNunJtGhabHNRlysFvsH9DU82
	 jmN6D1c7oRc409+xXAL2rJngzmOAITRJMepbavu3WIlhS+BtiyJ1IqEqOf6Wg1SBS2
	 kAPBa4b64VSBCSl/RwiEo7s2GSZ51/tj5chVsqasRJRnlJT5voV2RnIrZG4iC1cWmb
	 5NzdwI23H0QUc4bdxVYyw5GRoDM2iXi5of/mt1UzCC3yIpb/mMQ1hUGOvfv2dSqG2I
	 ErajCsxIi285A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5BFC79F8C
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178894743370.1137.803570532457583143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59672746778ac2789c7c3c9aef3faa5ad0c9ccfd4399914a67e292df6afa362b
Date: Wed, 09 Sep 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788947433
