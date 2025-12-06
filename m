Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D20C13B8D70
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 11:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765020773; cv=none; b=BZZ4UkjIkwhlBbJ2ZqLiQR15GhfGzgHYfDTuXihzm6i8i/2QnEOUj9YeLR+pmcEfJM/2oADSByND5j3wPXJfRoy2zQmgp+2mrrhsPE6xSYoDjd8FR8q6ts+yii88E0yAukW4G9r5iRXFwwv1JadokbioSAo+qAjMIIsCKMsuxJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765020773; c=relaxed/simple;
	bh=m4v5vPtzKCKpAdFw/JGG8DsrtIuyEil2t5LgRMvyjnQ=;
	h=To:Subject:From:Message-Id:Date; b=O1zJNYK8RfqKiHyEgngcpQ8psMehOS1ENdxf2F03GRMNkMth3Vz+FrCQckSVDR2zz7rvN1GGlbFugvrw5ivkvFntyutrsHQbELs1iUlaVIiKg1OCjw6XjJtRxO4OoHRTT4+OK2J8egRumHFSKsZgj/j/QcssdHJmxQuY8UtG3vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E7CDO8dm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E7CDO8dm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB27CC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 11:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765020773;
	bh=m4v5vPtzKCKpAdFw/JGG8DsrtIuyEil2t5LgRMvyjnQ=;
	h=To:Subject:From:Date:From;
	b=E7CDO8dmJDIfKiwb7g9GgEFvX7IWxai4cYkOmQjlU52q01Saa98IpG0ZNQDAUT10+
	 RGVLVAe8Uocbo1OFFwFgfuIxaiDkhnQoViy2CTDdv/nbFbzqtESITWXfvOKiKYpua2
	 I4e6IC/6ckgg4jF3TH0f6bK4eq7PUE9t937d9lJeRM8BPvGmzhHutqOVGpQ/tUZLH3
	 i7Fu3W+M/JgVU5flEzhmfKaNHQiGrs6sA2x3+eelgZ8x/Dfhrn5WrqbjPuRW0QFa+R
	 2W4hC29jYuFydWSZ5pGsekaCgJViMvLzK4s5eRlL2BB9bftYiVCag7rcdq5YaiEuu6
	 nJU9tIy5m4V/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97910D3B7D1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 11:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176502077361.2873.16408786246564257964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33420dd4916e03edbb37a01e2ee5228df7a57d112313e1e8043721009d6e0b37
Date: Sat, 06 Dec 2025 11:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765020773
