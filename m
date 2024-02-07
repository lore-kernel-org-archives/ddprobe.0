Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 439772C1A2
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 10:28:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707301700; cv=none; b=nBG0KpNwsAVRXWYk2QWfuah2dZ3ZADb10ccYs7157QvH+2XsqGiCxQqR+WIWTRuxCYPxm6DoIXs80clHvtrJcPckXj4r9c9L9nb6zRf7TLByMj7Gj1BAf7V15SJETUdXUnfGCkIkDjiPkhCRdpCT1fXKWfL0XQI4WTQM8+vx1uQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707301700; c=relaxed/simple;
	bh=9zsTmnhhxZJd/UjoEqcDjSCLsiMUY54/7eAVuvnknEU=;
	h=To:Subject:From:Message-Id:Date; b=flqtSvDJbAu8KhO60WOToic46yZ/e2bYAGfa8nzx4YiPAiZQhMVcQ34vnq4amRrB9HbANsL038FwzSMabK1OqUOv8XqL0ado7o3RsnsURg40V7dx4TwqQqp6lOily03vTHyHNP34DX5mpiKx5CYqf6TL9+DD5EZj6Zhn+WHQyT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=srAvx6w6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="srAvx6w6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B8BBC43390
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707301696;
	bh=9zsTmnhhxZJd/UjoEqcDjSCLsiMUY54/7eAVuvnknEU=;
	h=To:Subject:From:Date:From;
	b=srAvx6w6XfWDYagLC8FjWd6YvaCWS4ZND00MVK1GtiTFoxVe51nzen55PyoKWjJDF
	 888n31nrWD/aerMv81hfLFGTLX1seyB8R0hzKDdiXmJ/qGan4whhJW3EDZ4AH7l0q2
	 5gCrkt/HNAFxrn/UAD6bfwA+LZFbuwBnyRHKlnnv43GAmcjo6YxGXINa/ZMnw1EJa5
	 Zquj24iUHeXm2Gv83Br7DOWS8y+5QDoTmNGB2O5OPU0kyEEmDsXVTzieTJVF/33Kl1
	 U4WnY6PBRsg9qKw8LrpSNMg54EmmihxN3p5GKi7wkv4f9T8wF5odZZKFCni1YkiNf3
	 zrbITptXQHvDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6155BC4828D
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170730169639.7154.13957973696354086420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed9fe7cef74684fbd424186545d049abf93cf404b20149a90aaad4ff1327ce30
Date: Wed, 07 Feb 2024 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707301696
