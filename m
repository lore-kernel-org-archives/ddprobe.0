Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2717126A08A
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 14:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776955654; cv=none; b=a9Gauvu0X8OZRE7pFhPi3X23w7CWSF4ItBEVD2e9iR9KvxCh/ae/cEoZ8zQUm4fIRVT1/Ag3q9BYZTebheYZcb+2ZqJk/eYx2FhDMqqGsCZzq5zXNWzEHO1D9qT7BKPY1XQlJJjO2phZ6tO4t66yQAUOyTnXD7da2K4FGqXdUiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776955654; c=relaxed/simple;
	bh=XaNajI5ZjGYbPO05zJyVDWkQEh8ENMxG0+XUuC5avoo=;
	h=To:Subject:From:Message-Id:Date; b=eAXpcpSeHfplB/+vm40I0ypr88h1qAh67qxMcIOReLYu5VLabM50UcLbXj5QsbabQllfcDkmZ3jYPsMH5B32wKKU/2qSWxf6b5XXv3o6pFVsRtJRUqmZGgAtvkVkb81lkiWCLE/ne7pXkBWAqcxK+UJ0eGzsqOF5rTx85WyAi0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ckuKtSow; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ckuKtSow"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEC4FC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 14:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776955653;
	bh=XaNajI5ZjGYbPO05zJyVDWkQEh8ENMxG0+XUuC5avoo=;
	h=To:Subject:From:Date:From;
	b=ckuKtSowZ9+Qyn/eIgZvTwES140BU0PrUI5bjVD/LCDb9aIHdzehTkxFjc99AuBhR
	 d6tHEp4K193VEM56GKQxSKrOjLIxPjJ6zIScVlHSmWg2jg+F2OndtYCUUXkVEE1mbf
	 dDIq8PKW94Mci7C5Jrc2busgibXgMtiLPLTmtfBfRvjZRHIXYGlaHiQrG6mZJyI8Q1
	 g0/1nYUaOzfXN0+jlNUpCJpDV5m6IShy18q49NphkT8YyzzRYtwusLIXGHioNJ1rIY
	 c0c6nelpGnw48kL0d49VEQos5kRosNSYlbcD1l7CZaEgkCOINAc0cMJrtplPFi4kI2
	 HgbzimgABZ7/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCF7F589DE
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 14:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177695565369.6990.7213758174327355819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23b5e4881eeb09e2611796ad94bbc61f8f4ba184b86111e886c0fb58a0cd95f6
Date: Thu, 23 Apr 2026 14:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776955653
