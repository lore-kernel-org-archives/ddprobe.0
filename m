Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185272EC0AD
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766052234; cv=none; b=BMqrMAu9ZSjjZ+t/v5WmVnsOehol7o/AE9bouCurakHg9QLHcoTV5ZeUqakDqmu66hH2MYu9onNNruiC9tJbGALPz37e8BCEUQuKiqgLxdFVWaagim01to+LNhSfbhOirblt3iybWeyu1g7xMSj1jvGwDlV7Ui1watA/AjSO8Uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766052234; c=relaxed/simple;
	bh=ghIO0FTnIrnYLkdJK0YPOhUbsQu8UrG427hYzXemJcU=;
	h=To:Subject:From:Message-Id:Date; b=MAGGyAJOIXBNm8ve0J+EiAQLm8ayAKSaWGTcCz86tst/6OvDwCJ3Kq9iO6UBqwTLwn4Tk7tAVOCSTs7dG1BVI7OWDHwl2de5hGnm1outhTS+6mjwKTHkCxzciq8DtXSnzXy4dxQNT3GH6gsl4rdJ77aSHJjq2kWIgGzi4SAZHQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qUUvmI+l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qUUvmI+l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3215C116D0
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766052233;
	bh=ghIO0FTnIrnYLkdJK0YPOhUbsQu8UrG427hYzXemJcU=;
	h=To:Subject:From:Date:From;
	b=qUUvmI+l1KVDCkNulKiafVpgjnMxQZIx/49sJVAjMxYvHjFcp/yYX1PrD4Eouv+BC
	 gRiDenSa5076szxu6SyQZEMShS/8NrTNW0Ck7y3Lfxr8Jfy+8J4COkk+UDve9Mlm9x
	 P9SIAgV20vC46G9jbuxAwv8mUuqUNwJ+CSZvqqfteDTmGPanE5EhPrAVF2USgRNxEK
	 7iqdaBAwVde3faPvur7oUzl8roAK4WY69qNA6wSGS4KhQ6Hr0NdTdyK3mV7WCUs7Z4
	 bkyBV1dNzI4mZa7YhqzS+3xF649Pp8xfh+fHw7kQ3EPqHsLyPqPVL4dwWezcuiundq
	 PO1/AfsZ481/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9236AD68BDA
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176605223358.13109.15055449631493958182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 060b578f38265475db93e3cd0a2290be60a0425e72f6fd7a7df262831dbbe798
Date: Thu, 18 Dec 2025 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766052233
