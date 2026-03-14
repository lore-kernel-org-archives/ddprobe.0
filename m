Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1035F2236E0
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773485694; cv=none; b=H191l6OVYx+USVMuN8f1t9OvAv+jLBJIm5lEzQzix8vKrqc/NICJa0xVthCEnLEBz4/nrqjTvffZYclheGNZCJlLoKzkTR5Nv+mO006XeTprTs9+hEOwBR+jEhQEFSeGkHyKY+gk19mkw2wFubvBIcxRLfEGq2ARzm4MqFB1MQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773485694; c=relaxed/simple;
	bh=Kaqzz6PDMPHs+wzBDpfysbJNUfsdOO4j9ej2bAnuEZk=;
	h=To:Subject:From:Message-Id:Date; b=Cyb9kxddAdBBTccJdV+UFmscBz6hhA9COyD+RODoWRsrsxzWnT27Yp3Y8IGFZbNuOdPfWo3sn5frVy3Tb9fBXTPuKnUnn4miPE0no9KZfLLok6IiJS5dYGWIjqdid++aXUTAbzP/LNqmq9Du1+UNfrojcDcdOgLDU7lT0266pHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cW+EfSuU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cW+EfSuU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5973C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773485693;
	bh=Kaqzz6PDMPHs+wzBDpfysbJNUfsdOO4j9ej2bAnuEZk=;
	h=To:Subject:From:Date:From;
	b=cW+EfSuU16xifKR8oaUBfCcwsgtrBLrjQ1q2Uzk35Sl81hqXnioZbourtez6AYUy4
	 L/I2pyS5vhf0h0O7kfX32NnMVpBNQ6xpPX7P5BxHuniu6a6hjaeLUHQ4dVinKS48iu
	 DziunPzHRAA74TPLBHeV4bbg5NGyDGcED/r0Jyj8jS7VGGc5vmRbtEfCw/dRGd0LQ+
	 rC9bw03TtBt6u9KAuJO07Wm0nrklmeZfr+Rh4ealwLC7UEO9k/stck8J8Am651w0AD
	 UcPJ6xn8YBcVTm5O923zK9tUTXCiJgXwRHcNpS0urDDNUl5QJ6TyfcATYYa+sBzFVB
	 DBylXP/5bsA+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9524310706CE
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177348569357.24055.9262829132335599324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 237b7f5c739e9ce56d2d30a2169f2a3a13950b682c7c6ab3b902b27dd804c675
Date: Sat, 14 Mar 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773485693
