Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD89D1DF982
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760620793; cv=none; b=D8k9WjE45S2la1ETm/Nt0QY/5HHygocFIy13o+3wFlILucTG46RFyjBvSAXyxJdoY2+d1FDDhyLtq8yMyHkG45cq3et8d0BmAHF1TEY8+aYelHcPVyk00GtcyySvU0GkCR9TmFzdLy3qrsY9vSccWbje2uKcvpRAWYyAw04Fh/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760620793; c=relaxed/simple;
	bh=X08/uxI7LUYXn7NSjke5xZLxSDdm9r9ZG+aS8Dg0ZB0=;
	h=To:Subject:From:Message-Id:Date; b=lSWuLIstlFMCUGDYY/HTCxep8AM6G5Ego3rEdAw8LaNLla4yf0EAQSnKm6/6U3AgbRUAy8HDD2F38pm3rav17p3KhvRKEhRCJY28ckxilTSYgttLzkXq0EJayWgBi4zCHjPlCGe2i0Ykkdi3bZw6ZNVMOERC7+odaEwtGKjz0MQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+hM4HxK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+hM4HxK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D538C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760620793;
	bh=X08/uxI7LUYXn7NSjke5xZLxSDdm9r9ZG+aS8Dg0ZB0=;
	h=To:Subject:From:Date:From;
	b=I+hM4HxKq0WidtHfzaEWZUrFk3DoVBdZZTKmoW+m69GHfaHQ6s2TMXnc1ZxKiAKlw
	 KPE1nmscAvffbqe91Zer4aAc9tx8rCt9jPbdJIW7WxR05njhT20yMy8ForgkjRL8aD
	 C7iCXF1ZFrMbL3r8h5BsXFTCAV+44wi1ZKCczXaqzAGJgJ5wDXz0Fwm76hmrIgsqCK
	 RIq5rPHVyHuZ2KQbRfBd0gwejYUr8jXN5COLKf6wFWzdJXQAQP0t7SxZlTKWuHYUjc
	 vz8aof09N34/D89TTNPcDN+sw/jaMvytCr+uEHxD7RKzq8TaOB3/r2vOeYn87FMYGE
	 P/QEceHTUcbBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC10CCD199
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176062079358.11585.557538941312397017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ef41fef87ab5864b7a9ebc44c86f7b829ee93dc2a952bceb1735b5eaebfe313
Date: Thu, 16 Oct 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760620793
