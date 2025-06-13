Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F572D320C
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749812994; cv=none; b=K//uL3an1ZoMnGp/VtnBicWeS92i7vg/B+1uo0AsmGRiHveqanmAYIYJ7jURHEakGfmcndc/v+4pj3TzKs4QsjOi2WqfUqRrVG+K1DbSKiEeeX/fvmuXOh4tdcStlhDB/ZK+5k39pnYjwnIl1lDF3uLsM0qMKobyJreZCeb0rnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749812994; c=relaxed/simple;
	bh=GEIvfNkBsRBmtK/ZYIctnyfGYDJEZ2WerHCtdz+klUE=;
	h=To:Subject:From:Message-Id:Date; b=jiNkbDsa6D2zKq5hWZatT7qnR3yW/8FqYJ0Z6hOJDHJJ7RsJkEH2eSG11ztQrqWfPnoWZPKPzBwDGNbx2Xhu2eH6RFuncCCVINzp6ufYqU4VYtgT56+nGBK26PH/Y01uqIyYo5BuyhtsUf6VjLD5gPKoZsleQoA+CFitmbZG+G0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FHgjcDl0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FHgjcDl0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39B2C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749812993;
	bh=GEIvfNkBsRBmtK/ZYIctnyfGYDJEZ2WerHCtdz+klUE=;
	h=To:Subject:From:Date:From;
	b=FHgjcDl0bfVkn3neepO2quzFp1zQs3r/2jes5YzXgvvYaz0YAWpJN4magm93W/EwP
	 5nI1wgUTPXlGPnrOvCAXGGBXymaN5yjD28cUiYgmqTIFvQy5JnXhqLujJrUXYDfXl4
	 qnlvYGGwkplxV5J9i8M9Hv+0Ey2CJ4fZnshaI0NL8729Mj0/STxTi2F03VaSdlvCf8
	 UHVKMXhvrGWZmlvX4AOcxLqdk1BeZPR6wrR2jv8daINSwZRHLNzwhNQhbelAmro0n7
	 GpipNP0OO5UMdh43jIhTp4r3GQHpAAOjw5r6lFgrCuzIKNeuzzu878nev9fmKVczCa
	 +kIk2zU22V78A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD78C61DB2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174981299358.20949.13851325128394722066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e974d4db6b5c4604361de53ce62d331aa9e7734d46a107b68e29ca4f698c10f1
Date: Fri, 13 Jun 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749812993
