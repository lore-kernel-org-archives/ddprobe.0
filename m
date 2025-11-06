Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159492FB0A4
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762429194; cv=none; b=ubaulSUI/XaPnq8mud0v8143i5YovssKrRvUicYYmfFWnDr1eVxr30gG1LzKy0cFFyHV8bY8kH62J5ADOdlS/Smqz1TCl8c9+YjSHLdQbosBtQrFETCeTwKFjzGc0Yyl6F9c94AnBZS3Su0sHgwNOSt/PGOdx8RnPvpieKZfxHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762429194; c=relaxed/simple;
	bh=POgMNIQ2RLbapquab/9BnbnSacDaBFQxPVchzmZaQKU=;
	h=To:Subject:From:Message-Id:Date; b=p+SWAkLHutZY66atreKCxSwbGMuKs7wzZ4/zXpiLhQWqFJnhh0o5lBhIMO+O26+Hy0nxUOWROS4l4dRcZddxU9ub5Ev+t8dkTsVzW90MhjZEPqkol3/W9sre6YFYfy6WXi3U9gGWnW0JveDrAqqCGOL7xj6AR5tLB118Hlgv2cM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IRiJqGM6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IRiJqGM6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73F0C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762429193;
	bh=POgMNIQ2RLbapquab/9BnbnSacDaBFQxPVchzmZaQKU=;
	h=To:Subject:From:Date:From;
	b=IRiJqGM6ON4+Ozv5kqKt75QIWhQv8JQlupzOmVyP7qmOV8cPv5fcFGNL+HKIwwLRz
	 WKrEMluyRvSVVfp/UFyFwqOQxykVcBsM7cuWqKULEeZwdhmh2+5yNE0F/9asEzVq7L
	 OFLbre7j3URTNDXFTHc1zTk3iSHS1CZRUzQPP7XAY/08KEL9MVDFyf7ymrdmwpiDMr
	 ORegRybrukbse1YNZDjEzPwcyQkWYZqKqaXd2iP1p9KrrY3tugwo+7PVlV/pTHaCj4
	 AH1e0ieyepJteap4Q1+kcjQXZI4U/78om9o6Q2uQCXo/hV+C16sVrbfkQ2Ygr9D2wt
	 tjwrPnla2glbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A6ACCFA03
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176242919360.14374.12306771773106660589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d113571e2e764d37010a3165fd1754a9661ffef339d69bab1d8e659124ed437
Date: Thu, 06 Nov 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762429193
