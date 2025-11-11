Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2442276038
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762885194; cv=none; b=uhtcrHUbKBTHxAc2emlg7UTbP4pYRpY6WgkmAc1XEOk+LMLqLdwxl94IEOJMgsTBTUknXOo+ycKTaHk7MhsR51HBDU36hOd8wdEhFag2m8CcSvZHQQse2r2mjXvsEiVw40sNH305eGQ+O4VA6aF3G0JE9gY8BQvIdNVEHYhdItY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762885194; c=relaxed/simple;
	bh=nGRzPEg29LZmpXzjam+wxVDIdDod9e+N2sDCvRxLvos=;
	h=To:Subject:From:Message-Id:Date; b=frt2NjsypaVrEdO3WiQi1HZBKCpn72WYTCrjBCrLGAw7b0dvYA8ya1RBAdwQvhwayH+htZrCreHvbvIiSuNQAQxhG5R30G33IpKmmqgY95v0K/immnymLhVaAdGDEr+SwA/KzUvmw6dnzfAQ41zjy78PTIzIOe+hplx6aT5WhFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aS7RA4O0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aS7RA4O0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B3AFC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762885193;
	bh=nGRzPEg29LZmpXzjam+wxVDIdDod9e+N2sDCvRxLvos=;
	h=To:Subject:From:Date:From;
	b=aS7RA4O0KGCAapNKNDDlvYeCPGTwZ68p2nWQH8FaAThtMbsrhwCkDKzCWCYffX0CA
	 aAC9r2NVBMWRJpersZglBzqPGZoAAJ0GLnJBeWzkbzvmRAIPPkkE5iWhEJpt66lF0+
	 4t5pXnnyfumo3NF41H/SpxCaMQobcpKasA3AmfPIkmugbG8Ea+E6gyyL/cQ3e4ERY2
	 7kDuWLTu7UoSHjbOAfJ4lM+LMdqDCEllB09sL3yvCQo2umDtJSArjce1q6gdsKKuTJ
	 +5o3sXct9GBI+xESc+whTxNqMaZoYfcAirdOu6ReYjS0/63hzKgTKS8D9evB/XMDGl
	 RL9gbStq6T3ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F84ACCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176288519357.11646.5820249467800529449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97013e06589ff0ae37333a5fb4fd7e0af4ef56c765f20899934b5248fcfe669b
Date: Tue, 11 Nov 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762885193
