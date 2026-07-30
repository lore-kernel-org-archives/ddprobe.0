Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2BE2459C5
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785393634; cv=none; b=SEfXld8knsziybqMLYI8L9hYhPK1f95GeUcSHBUxy19Wh5VRT1sOaXZPk6EKVnrBZA/EeK0TqdS1blur0oaJcmjJk+QA/qHRZfykr731sgI3ZzSUOichhpgXXm0P+2RSuV7RfnL0Wd0DvFcmfK23T6MzeD8FhCmnw0/A+GquiQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785393634; c=relaxed/simple;
	bh=MZKrb0/HuLCfx9szjfLWMqJsOJrqZH3B0JXT8dSO+4w=;
	h=To:Subject:From:Message-Id:Date; b=hdyh8vHB/CQmnUNSRLNgMcyfPHx2B3Wr0bI13Ld6JU2WwjgzrNiazBzAnLZ/myT1YBZmfi6BVcTGfrz36vilWLVegWjSgQsKu5ez5juWHyLUiv+eHMPz7tGbLxcmuO2QKTm5OwCYS5Quu/3E/pZ9GJ8Yw7AaCfa424eMmOZzy14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iSUv0UTC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iSUv0UTC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA2BC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785393633;
	bh=MZKrb0/HuLCfx9szjfLWMqJsOJrqZH3B0JXT8dSO+4w=;
	h=To:Subject:From:Date:From;
	b=iSUv0UTCIQdNmJU/B9sWQge3UEtc7jJgWsVtuAkFm7kfN0LD85KKpyXOE3xyadv2i
	 cfrzPFZTIOAC5f+AMTSOBc7uEZ+BaRqsOLVYV/5tI3rSCEu0Gl7jlfVeLlRCu1H2oY
	 Y0G3u4I6aRzUUbVEJCYs9emYwyKCJXL8zY83OiPuoZJM2JSTZ7pQco08tfXFXKeqOh
	 +1k4j1UOWKB7fc7v7gKrWPlgGo65tfHV4d5ga6/5Adagfjg1wT7+tS/XYQTZc9FAfD
	 cyGmlJHoy2SMK3RX7QDeqTRT+mY4P94HQ0d9msmgc8GdPjllxaIEmdOSq4Liuyoe32
	 n8UuuaJdTrwsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA77AC531D0
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178539363368.12473.6330776866788695166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71b800bf5a343b5f4ad1a0ce8c243473b66ad604bde4fdfb5c029ef292b37448
Date: Thu, 30 Jul 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785393633
