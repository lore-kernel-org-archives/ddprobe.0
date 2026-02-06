Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE08C3EBF32
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770378233; cv=none; b=kS5bEF449sDKVSjJW5j7vu8q6LccW1b1U52PRPXQW1WsvRXivgD6QRBNHDfZNdcbBIo9GaSVc1JLw5VJvCy4xM/5CoLYMbqRLMSGk+RouZZYuEeB46o6sTfwHm5DaC9zA7MWKiJ4+Lpovt8CrssOS8T/UcCRufVlk9qWFpnApZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770378233; c=relaxed/simple;
	bh=sqCt7yI8w66iv31vkjobmjS+quOuZ3brWAfVpRqK5+c=;
	h=To:Subject:From:Message-Id:Date; b=KkH8g0XHmD5hiSpH5h5FbjmM4CJ8vlKAyQVGLpPpFVC4AGVN9npHPo5naqwkgPfJAP9dteK3P+sgw837s3TH6vqMemsTvNSq6y0JUoxm6/ETxrN0OYQSGxZ291RfWHWfblebqMZsnB1/5T5NPU4lgqTkg7AnYC0ran7FX3oiUx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PBFxHmf2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PBFxHmf2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A807FC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770378233;
	bh=sqCt7yI8w66iv31vkjobmjS+quOuZ3brWAfVpRqK5+c=;
	h=To:Subject:From:Date:From;
	b=PBFxHmf2oC70gTRtctqk7fvS0hF4ZptckONHzKi6vR5toJY3Tx/yasQqm/S/vJOZh
	 lLh4YYbDVBdJ1wC/SAg2q2VNnRmsdrsvhxFgBHERJCu7enZjoxLYiG/mSk1cWkpnYh
	 g1meFzsJuvbGH9xRZJHiIuldX7yU52s2bqID9oyNCu6Gq4BynbVT+6kKnbC5zTsEDW
	 6otrA9iQW0sqANoiplOLR62bd26DjfMdNS/QElzHWvSFeFN26/+Sm7qaE85wETePDj
	 xgQRWzei23vC3Pzndbemtt0J17cm0QDcBHfDLjdidW0Gp5ahUkIrP0n5mZ351qwURv
	 P4HT6MYR+NWtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9483CEE2084
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177037823359.8258.3787591691779009372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bbec1eabadeb0e18715bc72347ab911f78b9478d294311be8dc7c9a1ae64111
Date: Fri, 06 Feb 2026 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770378233
