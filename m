Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE5C271465
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755163194; cv=none; b=spRYtZtBzECHBa2qcBIWcfML27+smcY2sTRMphkN4WVuks4xI9DfXt1gNUjanGw1fNwVDLMMwjlsHG8m8ISeet1p7buJRi6CnMsaN9BjwfLjX7C892Cb03oPoDNDn+cE3ediYMtUPndagadfsTAr0VpPq7+sNEWja/hjeT+rS2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755163194; c=relaxed/simple;
	bh=4LBkHfgYCPzR9hAlL7+D+H1TgQal4ty1nmX14QWV68A=;
	h=To:Subject:From:Message-Id:Date; b=UNixe9nzemxToydVl2J0fuwUIJSlxTfc+vo2mzLHgzo152QNDfh9p6ZxhKLol4Tt737gTNdr/7WW2xi231yZCqu1AcUJMT5kFq/MqDEPJDlJ3NaRa8DX5HrKJ60tNqXOez9u4jHJtS2HXGApPb1Y4YUWFGy40/G/ACuxuMnGh0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MsI6XyNA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MsI6XyNA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3166C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755163193;
	bh=4LBkHfgYCPzR9hAlL7+D+H1TgQal4ty1nmX14QWV68A=;
	h=To:Subject:From:Date:From;
	b=MsI6XyNAiyfvZmIqSJjvJHNGMMSVUbz5OF1tjJa2opvH2LZ1taQrtdbbW+jXG2cHU
	 ehB+9GfK8pkMcdvDBgz1ZR76mNp+6h6cNCTX/HcFtC/f/kGSQhReKeeVfQ8i4tMnnN
	 uIt9tzE7pX1M8kVzD7bPkC24RxqvAjq8lHAbPkbHklGn0ajYI47El5ztURP7gcbfSi
	 ROPopU4nivLV8ysR4Mg6XdoW+LfQ2tAhw5y+JhAyrhsZ0n96AfZp+7hjiTAaqnCFW5
	 qi1GIxkO/23q2RkR1zPgDg8009DsFnOFRg+W/ZTKUCsIh/6xu5OiSxk3Nm9gHFHdKV
	 UgySH9/CiUZxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F253CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175516319357.28529.1616794890659253144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83785c7cbfdcca2bfadec7bb2a6c1d7f6b55a464305ab8922a63719e966c65ce
Date: Thu, 14 Aug 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755163193
