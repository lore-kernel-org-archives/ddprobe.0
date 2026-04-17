Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7805639DBD0
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 12:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776430654; cv=none; b=pgVDVoQqZwxjVxz8NhHyyx7exZ9eeephzz07VMZw8kR9Z80WTnZT6XF2FWQlbGF8H0WAmbClqYLr23wtRinAqv1kWF7sAeeGGVlafhTtx4QCoJYL0JIBMMAEDviEfn6ENepyFo37ho2Eyb5NFeNDap+jqmNegVmOfGOgs7/f0eI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776430654; c=relaxed/simple;
	bh=fwAWIDhguTGmRbKsjhtDWQugYeZEIvYmofoeVfzb+Iw=;
	h=To:Subject:From:Message-Id:Date; b=DGKtDTek/Y8WQ48S0ZAn3tO+vrWhprMYS/tdCm/84A+Z94ALVuWuHv5QJ77B74AFRzG4PNPfjqZdYdV41sjTafOB9G0nKml1W0YTzD+oTwkH/S3E/hqW6hFVFmIjrEXkwZZ4iIJvRF1qFVPPY1AhoR+aPA/YmGFI2NQyXaRWY6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VO78tPv8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VO78tPv8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5CFDC19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 12:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776430653;
	bh=fwAWIDhguTGmRbKsjhtDWQugYeZEIvYmofoeVfzb+Iw=;
	h=To:Subject:From:Date:From;
	b=VO78tPv8vSkSR2dQADhscKSLF7U+ebe6l+6h5Smw5vs8l9Qq7yeKgwJo2iRj9ECP2
	 bVaWa5JJRpHs9uhaQCqlcHhTeym6NNqzmCGq1CR3o8dI+ils6ddfLnG9Rv9ljA9xxb
	 ub2ccZlURd2qaZYqG1I4/j3u0Zls51pkupLOaseUpSEb9fiEF6xtIgh6V+wabve8bV
	 SkjwwFGDa9d3XmYN4JNAr9i0deCWtvKUG6GVDMq29UOT/0wX8PdoyBBJVzv+iPyX6c
	 YTpIcitELnhdsuyzaMB8UWz0mFVeeF6F2RmtPEcAB+trS7FYptJu3HhtL4RlEsC9ib
	 GOPGO+iFd5miQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9581F4369B
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 12:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177643065368.21422.9719617922794492216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d7e17f323a8621f2737fdd0621d2631fa5da7caa0609b78905420a83947b910
Date: Fri, 17 Apr 2026 12:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776430653
