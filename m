Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDBF2BE7C3
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755097195; cv=none; b=KS2rmU16DQraqeTQUHQYhKEVcCPkfhWRte74gAnZN7ktHCK6NCae4Oii0AwSZ9CpySYcqmKfvWkoy6WEbd4i2ga8sAijA+5A/7QHhTXrmTpKZ3nt8+eVN59rS2Bmqwu489dZl9J49h/+4WOKsQTBUg3ZNFe1iRDM+R+ZkBss8Tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755097195; c=relaxed/simple;
	bh=eZ7iS6stL19vgTTLrz0Vvab2oQMJBH+6Cde69b7gRvk=;
	h=To:Subject:From:Message-Id:Date; b=GqcyOPALGEO7XrlrQLKKgmc3Nb1Btqzh4Cu7hqALtDCi3PZjr0rV1TBE9bmbxw/xvDKS0TcCmZTdyZGqIbxFZ/zbhobrGRysKkW7Cs+Zkhv4UbZu3/ud6Snu5gRiSzTGHQ2l1TaLSubk8knVdgJGXT4M/4C3Uu06K36T0UzUYtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I3u46JMd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I3u46JMd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B5CC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755097193;
	bh=eZ7iS6stL19vgTTLrz0Vvab2oQMJBH+6Cde69b7gRvk=;
	h=To:Subject:From:Date:From;
	b=I3u46JMdYFnO+fQm4n2elUA/gXr7GTpYflyD4q+GcFnnGX8YIG/YDujD5Nae69Rpt
	 wuXLogjGf5WcV2l42axTd3Rw85GM5S5tchuV4PtcCiJ3O8KdEW5FB1lx2Tn/WAco3z
	 arq2SdMNoiA97JnMAZ41l8i+2jdVmWkXIPvNQoXynoMQw6QqagjxqzPXjWMGDISV62
	 47xoNzjSTtq55mXLn5UmF+bs/zw4sFPdmcGnMq1jZHVfmzm82EWfRK14YrI7nRs/tC
	 0RU+/BYW6h6kSXRNTR9ozZkwEN3Y9pZNlOT1pdAr8rebRJl88IxB4u/19UYxGd+h5g
	 iERUrJXscrSYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8FDC87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175509719357.29493.15965229141823901211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42dbf0944e94ae53bfe4268c7e6dc0549965eae0de937e367a321b378a1878e9
Date: Wed, 13 Aug 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755097193
