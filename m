Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDAB7158A2B
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 22:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712701697; cv=none; b=QKBADb59r9eNVKS1h8d3MuRxlXGeBNhgIMrjPNFxKnr/FyRPD7yLk3omAV77NvChnCArIbanjp1KVsxy2wW1syS3WnQJfVmipdr7VfV4o0OkS81zvBva+Ur1uodODenH34/wEUiO4pANkjoQ9FMmUbK8gMgRNcDlUyQBPcWggIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712701697; c=relaxed/simple;
	bh=5e9e1l/pJ7UMasFF270cCYXWCKmRb3mN9P1PBrOV4Hw=;
	h=To:Subject:From:Message-Id:Date; b=HNfv3c5RhzqJVf50gY1WCh+meNs4B/KEVbPJI3/d0AmjZTeAUD4VZknwJBsO3iTTcADVWzkrP2QT9bXKm0iY3OUi+Z+cCwQPBfKarsbX7uX1ElvRHeBPOai/vAjpyu/GkoCYrhVr+QKDvXbdOa4xPBhV620lRLafkP4VeYZAOsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rEn6gFOZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rEn6gFOZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77927C433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 22:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712701696;
	bh=5e9e1l/pJ7UMasFF270cCYXWCKmRb3mN9P1PBrOV4Hw=;
	h=To:Subject:From:Date:From;
	b=rEn6gFOZRzNw4kaajm4td8OS1zLyI4OG8I0TFW5bi2kuemJ+tIOl5qYCReDY9jo5b
	 FxNQOiza9b7jqPoa03v620kh2FgEOMTI7uI+Y9+cSQ0aWL6JZj0XGwFaTC5MxPy9++
	 5Y9Vn3E9bGP304shsCJa/fmQJM3ErmwAAeoyW5RvnLb/jxqfV40exGssQdn4UwtOAd
	 YQpgBo5gsExUMWgC111a5MZrpcPX/WMLWRti93w+Y0aDXqm4J/MKbNvLoUMgsY0EMg
	 eHu8TqVwuBjqPiqJ35KplOo+madDCnKxQyFWL6TwDFUUEZak2Sq/Dd4WRgI4bx20GF
	 Vtba9kdZxNvPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61646C67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 22:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171270169638.13425.3112324035659449136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d78a1c88132816663b9fe6bc476fd505fa661dacfed794186f343683c8fbcbf9
Date: Tue, 09 Apr 2024 22:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712701696
