Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA4D500946
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767973434; cv=none; b=trKNz00WrSTeE01HbyA5xnHdHQCrSBDgIhYr1uEjcRjfW9ucfoa6ec7PWit4pJy8OeEkp7KZZZ75GgqsDh8CxtNm4E7rgPAkh4MpQLbvci9zqGiiIbmtKeKu9FFjNkOIqSGZHMPZIEp31sEqJOArzLnF/+QOMK9awVMUDDeA7IQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767973434; c=relaxed/simple;
	bh=sbT5QLk347ZJz7GTp+UswSmbRR7O5gbuapkEE8uQrJ8=;
	h=To:Subject:From:Message-Id:Date; b=tGJxgFQnhdT51jOGDmn2lIrw4RxH/7XOK8NR6Fj5HfOqSJCenKDm9PHZ+ZHUhjao6cj66IKHVcM4xluitgEvsOqIyO2alGUOg/xTW+R4c6qJjc0Kd28bHFQTciqBnDBHEXQ+0u1oKGmKc2uhOaClTREpuHFaKdTuHJZUDtRhwiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=prUoJu2M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="prUoJu2M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A72C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767973433;
	bh=sbT5QLk347ZJz7GTp+UswSmbRR7O5gbuapkEE8uQrJ8=;
	h=To:Subject:From:Date:From;
	b=prUoJu2MGM9NczHlEujuAx0GUgXE4pfzwSzaMiLU2cJeOh1chcJecSkrmw0iEWbOR
	 km5/JuZ6k/F1eckXBX52ZCfzS+tS8Wdwt+/25BmztPd2lErf1EqkLTnm+3CfHqYzES
	 v9zEHLY10z555sbDCx27NMpi1ghnv6Jt72JpgwQSRyQpFU9YK95Hd5a2oFdu/skzPQ
	 jzRzcAA0WIM1O2hhP2dcioJfXvfZ68XY8u4o5uHBA4Azabdkw3IwWsTWe48PJgih6c
	 Mz0xEBjV0SmSXJxQ8myoKjQKI015kcM3Oxw0LjxeeBuF5UfmBUK7rdB24aK7rZWOaM
	 t+1zxrRU4ffCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F10AD26D60
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176797343357.16211.11502687798335606982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d94d1635f4c9b8ad3e1c22a96672661eb7f62572b789405b1d520d163709f86
Date: Fri, 09 Jan 2026 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767973433
