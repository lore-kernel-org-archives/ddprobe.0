Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C632389E08
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773780294; cv=none; b=i7PbOe2t9fBdmK06k8HVyx4kJu9hJKGDpq1AGtTVBh62ODywR4nzsdy32UO8iEb3kN3emu7yH++efvXH/AmKM8vsa1TznGcE/bgtAWFuvSaIn+ERcGgUUaxuHLNmZAyUiU5IqU3tp81dU+5EmRMAHIypel90wa4OIQ0qeRBN7QU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773780294; c=relaxed/simple;
	bh=SWwd6JXEtqq6+YtIISzFdTAVzChZUqo3kRuKW2Cb8cM=;
	h=To:Subject:From:Message-Id:Date; b=o6TYRCAuwJXiAhW8FbdjPgaY2knaDx1NKEkQlXXMT+xxCYxcvIbm36gNiMpzxSaUFk9HEXOWu5ieIKIpIRYZkBWIVKjQ+PDm5s1PkMlM2WDtu1kBfZOTvgqNWT3dvAigLhRkPm9hBcYIOGkgGkzZ07HxkVh8vz1M6xD7g/F75p0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bRKRFMeM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bRKRFMeM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BD32C19425
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773780293;
	bh=SWwd6JXEtqq6+YtIISzFdTAVzChZUqo3kRuKW2Cb8cM=;
	h=To:Subject:From:Date:From;
	b=bRKRFMeMADdJmN63SoKLOIt2pMAZ7JZSCK4izYdKLi5p7hyhTQNDMoC/cQ0WzUVMo
	 +AqY3dLrDpaCu5ILuT3c4y7lyFMOeVWx+cug2UYLH8ZDWHO/p0c+mjlN9Qiy44pa0N
	 WdNWcxSZBUNQ2xOr8ti6jghfIyfhV0HM3n0kPoHEdb3laPOlv3bqSGanGoTkFIHSUQ
	 MlEUMwh8An08CANbvEsVPHMqwAOIJs9VcB/GpbXfRwRoX0Fmv4FW9zuFAF1q/w3g84
	 vmSv9O1XBiOK8TSP+9EeF5OHhGRycLZQSZ5s4Tf+GIoHU9q6NZoWdNAeBxITwwnCQV
	 l1cxTO/ASgFfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E839FF6E7D
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177378029357.6927.8198566761775898549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afd325ec55b64662cfe782f7edf7f1fcf0cc886621cbbde9fe4c904ec6516fd6
Date: Tue, 17 Mar 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773780293
