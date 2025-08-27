Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3229F27A92D
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756327194; cv=none; b=kvSS8eht5SFgDg8c3VFSgr+OF27u2GfZD028kpdGxhs2s3McdAQTB50NFKNCMqPuAswMOekzb1P6MLAbfX3biGsEs4OAmjzqPZOJetFqaAqFe2GgdNrSAFhvSwIPpbwg1fD88hJKHZzeymowDBIpdk07j6ncZfXIbUHTuXQZEXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756327194; c=relaxed/simple;
	bh=1lhEXc7LmtsrvhSjfEFCX1MX+e3a0cdfTl69o5QzjJw=;
	h=To:Subject:From:Message-Id:Date; b=njWn/NcsyHMrOB17bNFOOag81CbQRaTGTrEec5wj0JCNosdNNPXtilMPlZ0cpAEmLps6smc6dE0tyWk9dIOc/CXLyClfBeZ8zz5eAMiyimugEoh3h2NYmNZjNaJ6GHLkBmPeW5LC//cEdJ621INIoXk2wzfgIuxsKLDO7ndJfIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UuNJ+3Z/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UuNJ+3Z/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3853C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756327193;
	bh=1lhEXc7LmtsrvhSjfEFCX1MX+e3a0cdfTl69o5QzjJw=;
	h=To:Subject:From:Date:From;
	b=UuNJ+3Z/hi49un9Wexi+zSZ9qmc3XXnN9n/z+KQVhABfh160WstXo6sIuUFxxqYga
	 +2mZ6G6c7+3yP4HvkeFbUbxzeM6/aZBau04ieUwWJCM7LLE6Zmz1Igb23JIRVGnXRd
	 XNkl1graTQrNX19+TBzWr0Rm6AM7GJMmRLKKXqETl+RfUmcn7llN7ARLyfwd4X5Q1h
	 s4+VBsq+Upxcn9VKEVNwF5CWbPS0dJUdPVOfZO/7V4/aA6WwEa/9eySy6VI/RQ/buH
	 LLqIJcK/+/mbujbpQu8A9NRya7sscIB0Tm+JRg6yU6lMTiBM5jGf7PJIfxB342YXyx
	 OOH8GOJzWoURQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FCBCA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175632719357.7959.14804581194407345064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 280a03f01ca8e29be4a8cb7ed54ca9748672072aa5b14b8c2dee67a9370a2ce6
Date: Wed, 27 Aug 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756327193
