Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 714CF144D34
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 12:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717503323; cv=none; b=TDttf/GG2qkcpezHqwN1wBsfe+kn/QFHUpt4HUNvU1hJUIz5D4ZJyQNc9EkPm5mGfem1erfkdozV4tCylf9CkRLweGlgMjUAzTUtcvpegcdFb7nN7tRz8GyrTKJinTh6/7Ca933Ou1hcfkcqLlgtc7bjHPmmiD3tpl0kGMgeJYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717503323; c=relaxed/simple;
	bh=gjVD0jmjzCPJe6t7yGKlniJffyvxXIfwDt7m09DLUe0=;
	h=To:Subject:From:Message-Id:Date; b=JLQSdyi/AKyW6oy7FqDUY43zVFMQcMeEzdCOIGFhT93aixY/2qssC3+64XBi5+lRVMK/kq348tywV7cUCtO2HznPu3PoPgvZniTrl6QB+CHanA92uxKbbl0/AUtqwv474Ous+u2GqKmz4W30ZoiE7gn1kMgHX8vhkdX4kJj60Wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QzBg/y4w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QzBg/y4w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAD27C4AF09
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 12:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717503322;
	bh=gjVD0jmjzCPJe6t7yGKlniJffyvxXIfwDt7m09DLUe0=;
	h=To:Subject:From:Date:From;
	b=QzBg/y4w2Zn6A52LFW60Ee8KWWLhPIr31DT3qggRnWwljD5ex6Y53tSelsq/xP3do
	 etUP0kAC3Xl4kvV/iXlIwJsEVa52RGbn8ENoEQPTaZTySUflEINRrdWGwMlG4oeVDu
	 H4IPF1yxh/eoeoYlNS8gT099HCki4Y5QxyYN22+ljfYsX3txiB5h5jpmrmAUPtcSef
	 bfksXcm4zoWcnh/ehnzqtbep6DBhgpcdREtGqFBlKLp08gsSb5wYFDsphgxQw2kwI4
	 aj1kLCKvg0BfRVG5ovFNuII78OFNHIjco7GCN78gsrz35bWw8nVXEtNExS6UZdbFX2
	 xNpg5f+7dMWvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C784EC25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 12:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171750332280.16049.8547276246730322015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f82117c02b7a934abaf74212517533d1aed5ded302deaa7d46cd36e116a6325e
Date: Tue, 04 Jun 2024 12:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717503322
