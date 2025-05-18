Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D19C717E0
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747595993; cv=none; b=Fi4qpbYCtgTJvh75O2Gb5kNzXwhBlBqT7l1/GIT73N/5Q2oBsIvCgqWJ9v/IxEf0xiL/luXcGmYfcOtfShkyKQWWJrH+yMYBgxXSYyQv2cdHZIcRblZ50bP1EAtzjiqGPZxTYNKLTitn5v1V5867cWP3njVXLMLBYcggdl0RPb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747595993; c=relaxed/simple;
	bh=zJRrtLVal70nqdJ5OU3BJ7CJhCgRQnVln48424G4UHs=;
	h=To:Subject:From:Message-Id:Date; b=JmbKzI2kx/vNx/iBfHc4agSUesSBbYnkyim/FL3w1uUAAvYqHL4jiqMFcS0kBh+9/85VM4+v6PzYA1RPpiAwa9hBTh7w41qSu+FhMwVi0fajfTIeuNjl0pj9FFsegSCVBnB3i7iqJoiqlYukbibD0OZ3WmRBV2Y7Tf5w23CnkxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sGBH6isT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sGBH6isT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A599CC4CEE9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747595993;
	bh=zJRrtLVal70nqdJ5OU3BJ7CJhCgRQnVln48424G4UHs=;
	h=To:Subject:From:Date:From;
	b=sGBH6isTZlTQlICsrd0Tp7zhB+8vVSCIozfVIQAkpBXaUdQUYHLfHBSAqd9geG38B
	 kX93oznQyz5yu+4p/eapWsSkorW8jp0wmehmVd6wXY3R3kd60nwtbMwXUoFs8H9ntg
	 bRnoM6Yrmf0j49K36UwLeXpmC+PrwqDtybZfmDsv/ELOzv4G3uh0Br1fixBnPK5HYc
	 legEc2uFgeWqQLRaI4V4BmP0EA9PjELNAIh3WWN6jveZ77HE4X8v+TGnQcB3Uok4IY
	 JCv6ueEkI7b3oVswIDvqltJ/GUXYOGPrqkooZDzNhYaXR1gL2XqtN0VfPCtCA76BAE
	 OZujmib66GL+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9362AC3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174759599358.24583.7853802854371872813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e0ac8b4e00949933db828fde956fb3501e57a07458ff5f97d2637abe21f22f6
Date: Sun, 18 May 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747595993
