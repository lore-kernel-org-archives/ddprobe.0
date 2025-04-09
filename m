Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48BEF15E97
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744158595; cv=none; b=jnClOynH5HGI/JPC2aTxykyHGnra0nULmawIOXlyIGkX5piYuL4QCP0baMY5Fmh8cc2CSn9LYACX4YDUyFTeu/x82MRJ0AJDicx/T35mr96KAVbchir+ROzGwdoICi/H9l/0VsUn5V9P1HDee+tocNoMkRczE+x1jDtYroiQK6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744158595; c=relaxed/simple;
	bh=G3acV05uvNO9lw97knbepRfCGWS3BmKe72XRgNnR9Qg=;
	h=To:Subject:From:Message-Id:Date; b=Vov8cUkFj2Gh8udFQgo0M75GO7cuGZlue7nxvqok8qKXvjNsO1rnMeAZ5/8ra5p7f4uBKlEeQI9c2QCdMSTcqB7fuNqZGprdXvNThLlCFI+/jUAXtGBIwF8QD3rIqVCj5V/ABe/nj+bg5C7cGUHwqsz0E0F39yUPUEzv3RsAIYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m2xmpOpd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m2xmpOpd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEADEC4CEE5
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744158593;
	bh=G3acV05uvNO9lw97knbepRfCGWS3BmKe72XRgNnR9Qg=;
	h=To:Subject:From:Date:From;
	b=m2xmpOpdZXsUIBfzx4tfPOR/GScU3aT+TTWQYlpzxtbkmNjKLrM8aZiHXtPCEBUpE
	 K55JwXzQc8WBnvLb3VooHeBvIKI7VVGnryEmLDFDQ0AuHYbIteZU9QmjdENArjF9FM
	 XlDE/bo/MI4e5zzrJiSzh/QnIWa4AzuXR8zWhFdb1T7EP3unujSD7I6kuid30BW+DQ
	 EKojFZGkD+/yZGOfRYdcRWr/YLFniao7iZ63wQdkU1yEsNk43bAG1BJwUk/RP+qh7U
	 /Ym8g3Z1H1blJjS0jpiLkg7KfwbtVUGJ7SN48UPxvJTgxyQ/v3XzlIpj1ZO7sgl4GD
	 C0Hi7UHzmHZiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFFDC36010
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174415859363.12997.15804334499734292995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9608c5b1815aa72d9388f142c53edf5357b3a9205cbfeaa7f5c2c740c6bb060
Date: Wed, 09 Apr 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744158593
