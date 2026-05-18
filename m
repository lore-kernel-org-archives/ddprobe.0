Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412C53E3DB9
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 09:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779094834; cv=none; b=gotBBOD4CDuqMvfhU0ODvl7b1IJWHO6sQNJo68dWtzwlE7qDZK/7SOXzHE6O83viafSVyUZMgd7DjqfZSagMbELNIWliRycu9xyoX+BzzGCqri3F69oqRCeruqQnhfL+rzbU0rKL4i/gWs9Gtb/car0+W54HHl+aAQw/h5jjRm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779094834; c=relaxed/simple;
	bh=Vh01oU3gJHqIH3fomY8QoiSPd5xwyMP7tqnmHwYJNVU=;
	h=To:Subject:From:Message-Id:Date; b=e+BKDbFRk+Ph5+0x/PU6hwIVgMlhBq+5c+ztwyixx+tMR3ULUbdhjtumuEDozd11SJWyjtmVOcZsTNnCId1YJoniV3knHGPL/4bEpDKJ8YNq2WXMDGydIIH25ux2avm3KsjmWyWNeCEcMWTCzAe6TYg/U+S22wFwI4qVXjnundc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VzRy11FP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VzRy11FP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7C7AC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779094833;
	bh=Vh01oU3gJHqIH3fomY8QoiSPd5xwyMP7tqnmHwYJNVU=;
	h=To:Subject:From:Date:From;
	b=VzRy11FPxC/osWMv970nXxXvQs76rgscLkDmaspPw69ENj6wsIZ/Az9UEEBAMYTy3
	 zSmhJps3l9/0QDZcbY4w8OawR+KAAvvYEfpU/RkWnhKSuIfYa5+KEQfgBuls0DCq0i
	 KCbTLiCHVXRcXw03gdWjPFM4k0nvUZ/U6TBUbS7HtD2J8HLmEQArhrJxhIEw/etTYu
	 cmzJHYT/thPKasf/xRojcumtzCanSXlxMaExrGe5mEK3xovJdpzg06oV4kN+NvbnVu
	 fj82g6r/h0RNuD5AkhNl+EquFHKl8TAlgOvw5Yrj6eHp70ermRVF3++o7MTjhEjlD9
	 7ZTgySVgkJK2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA35ACD4F52
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177909483368.29528.12832917797116474034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ce3bf88eb9c89296bbbf6059f6d5918cfde065bcc7fe4557d69dc2926f15bb2
Date: Mon, 18 May 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779094833
