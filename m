Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECAC92DF73
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711799297; cv=none; b=hugTJSCrUpHJxWrzIeqoI7sQ1SppZcBSdB7J4rktq/Uu1dWMUlBnhAc783aCDYmVDG1WpdnMDQ6BM43uDhrICR1rdk3zbQY5JJDn0To0a17C8WUlU0HM30tq8Dia57Rqde90UUQqj5uu31reOLyLf4B7h3+4pOKQK21+HtjtsX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711799297; c=relaxed/simple;
	bh=Ewo8VrKVUStFdptMg2NWA+JQppXXEtvXRFOpNSJ5EU8=;
	h=To:Subject:From:Message-Id:Date; b=totPB+SPbEItLkssD3/cgN9ckmR4AXHwHkEsOqYCqM1FPLz2YcHATaOZ8GbhKJuUEkguug3gsrdqE4OQ9+AvPYAtstyl5lgYZ3ZD2uiLyaNlD33kCFXyiXxkWsDDRcRg+tFpr/PFV+GROALvQ2gjsl6f4FIMiWp7no8+pswughc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j3QPEQJF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j3QPEQJF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77BBCC433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711799296;
	bh=Ewo8VrKVUStFdptMg2NWA+JQppXXEtvXRFOpNSJ5EU8=;
	h=To:Subject:From:Date:From;
	b=j3QPEQJFCdgdg/XSVBnPGjsbbSa/y3XgeHGhAmCGDn37+5TVU/5Me7JxuGidRCggo
	 LikpIJbNU8D9ux0/pPEiDM1EhDbCS09fPPF3dkPJAEz8yW2jjzTL61CYa/7HOMXAK1
	 BsEtavj+K+ohCrLijdpSP8qN7gcapx9PIuDzyNi+a9iSHybiCsOliWgeeki8bc0sXv
	 uAzpyG2KdhmzTJ5nwx8ELYy9+BCmzC+1a+nH/9EVplGSuDQj3ICN+wh+3JQgqeblE+
	 A09VF8m5MARxpV54lcuVcvIT2H+Qiu0ELdR08v8aQ/4Xh1yWc+rGre9ujAGs/MWZTj
	 hapvFs/osr5eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 646C2CD1288
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171179929637.16271.7829426174425650259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d93599d4dbc27ade15843fa79066fd9ce00abbe30ecf5e08539713877072fb65
Date: Sat, 30 Mar 2024 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711799296
