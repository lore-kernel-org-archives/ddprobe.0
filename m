Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C83A212FAD
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 23:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777850254; cv=none; b=WRAa8zrbgo77d1i5i+6KM1A4VT4YZ/s8fE5uQgUrYNx5mxQOCT00n5eGg9YPrtd+RyhYFFb4TZh5KwJ5pivud+IESeBOGyFHgRtAZHBo67tg1wB2WXwIxRM9GnUHnfdeJnoGXwuAIoX1LJ4BMs09B3PFpJF7jCSk2nznvTHiFf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777850254; c=relaxed/simple;
	bh=VEi1i1mejx3nXQSSX+Z7n2Mh/pRFwZysmXWqpu6G70A=;
	h=To:Subject:From:Message-Id:Date; b=Rsks8+8yVej+Mufl5jcsv7I9Hn5mxCGrijT/HVrt7XtWcnifyNr1lrLa4EWD3TNkIJ3jGqv/nq1/4hM++IpwNFNEcxcqSPvDYp9tGDMY9fKaZpQv5tuDfMONrKoWnfflaeIGGYAFQ8a6LL+5NxUeMuhrWwWSIQJ78ZOtVaAOHls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GpUXatJS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GpUXatJS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C00CAC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 23:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777850253;
	bh=VEi1i1mejx3nXQSSX+Z7n2Mh/pRFwZysmXWqpu6G70A=;
	h=To:Subject:From:Date:From;
	b=GpUXatJSDidFDZ9uU6KjISB050g4rWW3pAuniwkhSEEbjlEwWKIfHR14DqKwFlpCW
	 TPBHv5na4MYr4sfdH/liJverGdMwEHsYQX42x6k553lzjJqJkHt4B5fZ4FHZQXPNHh
	 5JshYMnKEBpsGBZoJGB3RyINap4zhfrbyyS8gcWi9eb0VLl07jNEmP7RKa1P+cHzBt
	 fS6jvo4iPnh5GwHmOy2CrkjSRE8yArNDM0Z1N0kexJLRTMvsuMorjyGXLIFeEoZcql
	 I4R0PpeW3PyJRyguHOHs0J1kmUMgurxFRuNf1Z6bdzoQ4mA4rEef2eTd7LXBr1HdQ5
	 ADzrUYgPyOYpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2C3CD3424
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 23:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177785025368.27332.778606488553111518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0acb1199d7af06deb74e9812af38e046640769bc4ab977c305bc88548c50e699
Date: Sun, 03 May 2026 23:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777850253
