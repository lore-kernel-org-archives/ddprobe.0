Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AACF1DA60D
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773966294; cv=none; b=WlgEKl0PTcN+cm8hrpnpZLcOvB/qmtbZEoULU5tcIu/sQWGbfsxBpKkkHrKkW7A+cIiP942uULE5sYe7ODcjnSXU0h8Qe1mze+/o0umkvX1wOatLzmIYpnWg+IGCXlgOeszL260qya5VtcHZ6wd4iLdZhZDSYo+vAko1fbCbHTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773966294; c=relaxed/simple;
	bh=koHKL8qJ8QEH8jcJAUpHVCFKEOcfz7FGUelgDwtHqFA=;
	h=To:Subject:From:Message-Id:Date; b=DV1KYpLN3Ph+roehTc3VRnc2LBVVaIBR/lyfiDoRHF8e4aqW3fNDL7dToRGGZsziJ22lIMRYJRd2hoS+k0vZBzEaI6t0eATI/Tot8T1l6ERzPvKkVsoVQ08un/0v5V6IxXnCiRh2W7FWE3FicccvN52wborNfHw6StxK6HVW6QI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hWxzzIA8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hWxzzIA8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0394C2BC9E
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773966293;
	bh=koHKL8qJ8QEH8jcJAUpHVCFKEOcfz7FGUelgDwtHqFA=;
	h=To:Subject:From:Date:From;
	b=hWxzzIA8SpxxibRAz/EAxXFMQx5XitlNhLzQVgCTeSYf8YZ6GTYSTAzevQD+Guxmt
	 ngcr6yqd06Q2E06at7QRTtDa2aQ2ncisS9cKCamRh/PfpWmuxWFGrO+RLDvIsN5eq+
	 jPptENBlp771hqdVgj5qhEzljvUvqPaEar62m6EMCpdPPq7DlWv48PJV1S6Jwxpq1D
	 /r99PFh1K0j2Ho73RDg0lTlkKhQQUeWhv1jZN675blSQk4QnSs5Hgeu3zHfzbJLoiX
	 6ELFP5pq0HncOAdV6UulGpRACjTXHzisMWsg0hnuNsnezxIJP5WWVJfuSYdOrE+/y1
	 mCYWDaDiG05CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0FC1091938
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177396629357.22815.16769462420103853537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 739523763daba6907bcae4ce5869ec6e36c50723ec7301f3eb56cd9021c88611
Date: Fri, 20 Mar 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773966293
