Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4981D325483
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 01:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792114834; cv=none; b=qG8kFz2R37cvI+/O5KJJ4b8EcgV2wqPgCYJRVfk8sH7XnHt9krKa6QKp22UwORks/j4Y/+46aHfkCNoMK/zbUpE5c5I4/cZjfmQxsT5tHvcahhHRKiptDk40YPMegpADhN7jmcXbsg9FSREaGfCTmmHWVI3uK//RFuLM1GKbuYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792114834; c=relaxed/simple;
	bh=u2Z2NFbGW6tfDPVkmKswt1OKK65OdiN1ojbKgJqraNk=;
	h=To:Subject:From:Message-Id:Date; b=dIxZaQRGy/Z75y23bUxoR75M52OwUfa0AMJSr3uTcHq86sMcYWerdZdDkkrd51Va+7lF8gqYwpVFuZRulRmDVzfF4V0DcOy5+Ow0w06LjtaFvRW5kMGaPkCHfDeZ3E8G6d1vDBFyE3CDN33sSMPGE+TvBmim+wp/802DeKFnt5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hmAwXcgt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hmAwXcgt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA4F9C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792114833;
	bh=u2Z2NFbGW6tfDPVkmKswt1OKK65OdiN1ojbKgJqraNk=;
	h=To:Subject:From:Date:From;
	b=hmAwXcgtGQ3ZOwc+juP8eY7AVtzOMGKEBmkJeupdIl0ie79ssMIGstAwUqPd5RVWw
	 q9rxRCBVsfjTAqfKwOuMgdmnaCyfZUo9dlxHwxY7gF1Ern3GlsD/Hk3GWFPUq4h1qC
	 LvfZ+DhPQbnttpCOJmL6MZuZ0RqRhiRmWHJ/gv+0of1jqeuXiCH+9K79XztUPeTdG7
	 acJxO3BoSm0tM0818UfDqD5jnjLKhfZTPIFbpgqHukUjTO05a4m7cRRwGNhblHW/C9
	 17xWd4YOWn++CF1cpCsV26iKz6hqRaWdvDXW9d/mUO5x0ZODI+fBlCeEGZujz7SLsv
	 rQvS2tI3sbGpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EA2CC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179211483368.28127.15815377733264771342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb4fdeaf2186eefeb1a229378e2a950b52d45d1c6b9167dbbaa0e2371c50bcd0
Date: Fri, 16 Oct 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792114833
