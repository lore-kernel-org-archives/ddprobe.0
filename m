Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D5553976BB
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774901694; cv=none; b=fYyWMEoIft59ultFg6boc3Xzslgd6bZk8MYtRnrMqN86htaWmz1PcSRhN2cE/JAxbQwSJObX2bW9U+KdiHVMzlw9FZCaNlRcVxqU50JqjMO57qceT8Tag6dbnToflQsgEkPUL5LRVHo+UrStl3L1duXvh8S/U5kHGjRnUChhj7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774901694; c=relaxed/simple;
	bh=s4F1A40P0Ppqskh5YSUbs4qn+V8UWNmrD7gs4uQ+dkw=;
	h=To:Subject:From:Message-Id:Date; b=QFb1pNkH8f//iaZxMiRJViiuQPSbQZNhHwW8fX0g/ho8REn7AO7Jz8aOz6BgZ6Fvea9JE1gtc+0BUDvUtI1NFmVmhyw99AyLgmENasGQ24OOqUnJbunUXp+87fQJ/rXcOUhWeJjKYv47JKNWoTOakbnSz5SIpPLwzt7tEkOilR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVjPWgPh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVjPWgPh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D43C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774901693;
	bh=s4F1A40P0Ppqskh5YSUbs4qn+V8UWNmrD7gs4uQ+dkw=;
	h=To:Subject:From:Date:From;
	b=BVjPWgPhxe+iNZdMk8jru9miLmrpumIqiWcoQKFOL4zrGlfDUj9j3diclTn8HhpDS
	 GgN527EMTavjXZvslxLUJWG8U+QqQ/kKhQirES9EyrCvWIQaEqDBruVBge7HW3nRZA
	 T07uCposletICGYa9gIB1/TuGY90lQaKWt11zJR6QQUnQnr/d9xXDqPBl/gU03DgpY
	 AAr/jyhYELhFSXsDLjszFRFO63+pTFqCONJWByqlmA/EgcMQOPSDUGcVv2mxSRwcZa
	 AgELeq65LV1YeptJabCnVO9O/gsBIIQnASuJJC6xLN6GsRRWcUqQW3BMDo0ng4absk
	 Kz5P6NEkJa2Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BF81061B1F
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177490169358.17920.1988344176405084941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27fa49600b7cafb46b24032a48bb81da6d0c3980f69a8fef76f34d15954b01fd
Date: Mon, 30 Mar 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774901693
