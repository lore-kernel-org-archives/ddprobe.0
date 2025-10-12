Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2505F2222D0
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760267394; cv=none; b=C6464MV9rRM3k9u1fKHxKD8+TuQ5RBLC16dwM+TpuCEH6T7B6Krporl9Hb+DRwS53liCEv+wz9lO8Zdi+Mbob+nJ8VmSt5dbB201CTY10iIFJUhydtr2Mp1tYaV2/TNOnZeGU1mW2rNofqXmOjo+HGEUCJX1MeWcv7YCP4BkGpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760267394; c=relaxed/simple;
	bh=nrlH3RV49i/FSjddlNsUc6wvU8qDg5/TSG28PZN3z70=;
	h=To:Subject:From:Message-Id:Date; b=KYqq8mF+sb53u4BJJfDC1sQWbObExga9oGV6TUnfxVd/873aIcOcoT7qzFuOEMlw3qAFQm6iXTwm8JrnJpg2JdF9+0zKGppSQVVvTJpqw2WZdacIfguYTM1k6IpXFP7FKfBKq5/1VZKOK/I4kKoTfOhYqD2EsVSQrs1yUd1AD40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RpysynSR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RpysynSR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D69C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760267393;
	bh=nrlH3RV49i/FSjddlNsUc6wvU8qDg5/TSG28PZN3z70=;
	h=To:Subject:From:Date:From;
	b=RpysynSRh2GVuPDgexkiiQspt4D25l1tEoCMLclznZ+OeGrqR5U2HCvpmTblrRU5T
	 dwlxwHNqsokYHdF865zCINuETOmT0MHCxlS3AhYpnEGOhtHANpm+24ODJuyvehWx3O
	 NMjTOc8FJrQz5uhsFz5leILbXUS9dEmu9ggmLMKMi1oJQo5SkwqIF7JpD67Zs0f7Vg
	 Qm9BoS694snjU7F5UTdMIhH1TL5p4lL0CPCobStyfjmTAS/dweA8lU/KKlijq8LwY5
	 0+isIYRWqXs/xHnITKqk0DsjCBp9QiNnEIWwF6m/5JSBgZXmPGgwjN+TCAuuBx0f9x
	 t36uyXrkFBXTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931CCCCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176026739358.9963.2989007571197669791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2014709a33a1d8806a934fcc3e3551cad39cc69d97049852ac2f85a9b07b714a
Date: Sun, 12 Oct 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760267393
