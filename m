Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3268F3112C1
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 07:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772349294; cv=none; b=EezTRRqT7Fnbc3Cd9YNt8Vl82X802flWcVJkGtPCF6pE69cqW8HbUxSTJNI3V0/N5NOM0nDDVe2tgoiDY+7bq36SkTiFU9WT42Px4r4DVKDdBaKmPtpTH/uHiRnxUty/uD3Uam56M5KrJBAcUWFdD+BQo2+QnyphYjsoI76mqQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772349294; c=relaxed/simple;
	bh=Q6IufUTM+LEpw1NE70ulnTe97/Jtztc2wPMtds+aggo=;
	h=To:Subject:From:Message-Id:Date; b=ges9+QHvugiJeLZr1cwpKHjxYbai5u1L3uNtBgzp6IagRMHK5Jlkw667hYy88IG83UuO0NWr1QT5UM1FkHu2H22SVC5k07amj+LrKwDjSgwvBGdn7XCqXizRG6DwsuTtRdkUsMiaJuMYyBtS637486TPcvUZT73URLdj9XXyhoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BUq02XNj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BUq02XNj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB24DC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772349293;
	bh=Q6IufUTM+LEpw1NE70ulnTe97/Jtztc2wPMtds+aggo=;
	h=To:Subject:From:Date:From;
	b=BUq02XNjIqDwfgQiKOrqE38DVSOe4GpbpIkKjEUW3y6z9d2TnomYIEDRZaTGD1pcX
	 Gwmi8TiPIfbzkW1KAp+muiRieooOzLjRM5GESsOnvawc/lRoKHVFbn/6SN8zIKeDee
	 d0VhAP+hb0WL6akDFmTIeI2IlvMC/qCSBMLB41PRfgnb3EHTiI23O9kdXPR0EeyIRF
	 QOuURos4Z1eNCYrUNw0tkLRyu5CuZhSXyuypGghunVXyh9k7uhlKuJIAKD6vVb1/AL
	 FeX2OH9+J8Pyai5ttKx+gYBJI69EzMPEPpmOrsFBFm1lDfMGMbzd3K4ogNCzlVzO9q
	 OYu+yHrVm3xBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A56ABFD0055
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177234929361.4882.10976716231302464471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ef61ab7be591cb2391ab83e75cc512cc55a35332c28e2cdcda43d2dd8cbeb00
Date: Sun, 01 Mar 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772349293
