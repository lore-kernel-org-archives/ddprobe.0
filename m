Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F4A19ABD8
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773981294; cv=none; b=XV/6dZZwZK1RJ7MLbr1santgFUiM1ysus4Qxo8A2L0L7COZMlL/DTRbWaPD5F3/t9QgfhYi/v8UDFVpt8KYBUaEz1iWAM6OFNoC5A6BblPmrbxTy9q7grNccZ4B9g87usd09mbPy9FH4kBhB4aob8LdtvzytSWjjgy6BRoDLBQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773981294; c=relaxed/simple;
	bh=a1Le6dO1gv7v7Zff7I750eG42X5Q+bLBA4A7UqZJtSI=;
	h=To:Subject:From:Message-Id:Date; b=SXdsLiuwxDqdlZHYVjhbanDXkkg5JFGFGRS8Z+hf1jR0s+HEN80TqO62e4zCRJNJ/JKvJqTGr77dJGD0n8fBQt102za7oIoS5FhpJwtoQhDOR4o1sZy9a4cE4co3KIXqZg+YDoTcdz4SLmbVgt/5gbFFA9dhWrLsairVGfWdR9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJuAHqZl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJuAHqZl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92DDC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773981293;
	bh=a1Le6dO1gv7v7Zff7I750eG42X5Q+bLBA4A7UqZJtSI=;
	h=To:Subject:From:Date:From;
	b=nJuAHqZlqm1CXnpYibCvuvz/LPd0iXzKYzO28lPCuhthGjwh4+RLCYzbI+QYnCMRc
	 Yj+Hd/Jq2CWccizT+Fs4c/X87JUNMwZKi35K9TIUnWzAwbWtzDo87sV0p4HJs6KET9
	 9kyFxaVXWTNGR8iEy7aEfgQkfm8a7Osc7LrXLrVXUM2l8xuVgPKuYBOIZsfFOARO6p
	 x/HBXWsBwd9usWWM6zcknc0JqNeoXbchifoIg8zSFYUdcC7EAd5/4D6YnknWbDb/5x
	 q/7cDLWFqIy9TFz2yhyrrFaI8DB1E67UtmhCusPRRsAgmEezERg9nfI7UCkau01qZ4
	 ogT6NYIgjKLpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9655CFB5EA9
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177398129358.20711.16110528836064875751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a411d3cb4948fa411b190593c34e78d7344a88454b1bff8724a4451d115eb5f
Date: Fri, 20 Mar 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773981293
