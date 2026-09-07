Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E9F501F28
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788795634; cv=none; b=N/rVX7RlM7buM62VBcwP4F+boIJ/GBwRpBHcvxYHH2y0uwMD7eIlYr1J3cHQdBn4V/L5t43MQDGbOiuanUzRGfIOeWjkRDmFgJQeURNBwkJn2kwYS5Yh8wrQU/ua4j32Anxa7O4z4PTu1whNNvoES86H5U3/lGoyz3ULoI7wBWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788795634; c=relaxed/simple;
	bh=4zWb0B70RBlfVElLWBNFK2WdccisdBToN7eygdrhjFc=;
	h=To:Subject:From:Message-Id:Date; b=Xyx05MkPgvTytkcm9iRIZ7E4ZtU4Z7nwuSb8pVoWJZJyA+jdYfBbQfdQiS6s/dkDgaTxFPVcybUiJTWBjBszNudMWv0MsnL2PIKH/SRn0d8iWj022uZ99n5YO6fNAaQHYC4S8mZ8KQLTCxYjVP0aSwnhHbTpXjd1DDaR9pUl+HI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gzGTdKLV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gzGTdKLV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7B57C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788795633;
	bh=4zWb0B70RBlfVElLWBNFK2WdccisdBToN7eygdrhjFc=;
	h=To:Subject:From:Date:From;
	b=gzGTdKLVHCWNRraeFS0PA058r5dUSQAhmhPfSzjhkQVybrokliDQl5R77M80Z9Yg1
	 OGGTJDCBDVZKls1KiGgnfiro4PGvKLN4sMtB1rbcqw8s6Q5olrLlRwIZ2n0Sr1B0/o
	 pQtzrLnHT4vcW8BQE7kpKgC9gBrEsmp0P3ZFE7MB2lGkxtFRbGf5g63KN48y3CoqVv
	 h7t+u98dUD9ZQFTqxXld6UcB/CSZcRPUKes3J0bLse3nKIwEc0VOQTd2/W8BqfsSK9
	 WEImTe0jc+3VwvD4++DBihiAYcJpA1Js98MybKtOF73whJ4Y5GghzyfuNBzqe2twEA
	 6xzNwW8MWvNGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3C3EC79FA0
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178879563372.13212.10044859631755865940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3103d65fe06427c5339ed314b890d57c47f63669ed770b74f9d6d5037712bab5
Date: Mon, 07 Sep 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788795633
