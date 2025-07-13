Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4162E36FC
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752434994; cv=none; b=s/GmtHvW37VX4PmnxBDdjYICfxPT9IozModkGzHiUFIMwCYludj9iU4iJ4pURPqPvAdIqh4DBD8PyOu6SrbY6RmVTjP45HRPD5SXKLDp6DhrI6weisiA1OfCJl8sQyrr/d6ruXN3erpBQcXaSlhOurh82ioyRAxXpbp8TjiZB7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752434994; c=relaxed/simple;
	bh=iG1q6XKrFydr33IKLUG9e5phbtTTARDdqZibHcEt0UE=;
	h=To:Subject:From:Message-Id:Date; b=Iz/M/B2U+sqTqXs5MIdb3JYLT2uOPJpK057L5GXEASPZcPHOB4NYCy0hX3GQ1rnAlb9NduEFYYkw70j6FJ+THYd4E0w+NZCztwnUILFAok9IsLfVDAr/6H/OY94UeKpE3fk6cHeeMh6/4KDbevoNmpARe44KrCspj7EZaMl1yws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fr6Qt196; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fr6Qt196"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6961C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752434993;
	bh=iG1q6XKrFydr33IKLUG9e5phbtTTARDdqZibHcEt0UE=;
	h=To:Subject:From:Date:From;
	b=Fr6Qt1964ZjdW8GLpgTXK70+grnNw1GdzrOk4xGjDmKSDcUD6zpT+h5xJnpBDRiMD
	 UZfCR0sU2UMVhSmtdOY1jShdsYqOUNJvwWVC137JNoLwnLMSgKdQZJ39nmGAS3heiP
	 TFr7+nLRTly4OrwxPPOQwepX1zKUEQboM6IjIB0lXRrgPJ95H3F+gYpLZiA2gSU9UR
	 KvFzpO7H6bJWUt6LP+qZArKjPToke3bMbmuLadRk42YXAqPcv0juqA/kKWr+Ud6QDz
	 DafjcqnVDbVojXmNehIU4bGxTBu1D1WjyLCGZ3GMAs1GvxGG6IP5f5GOKxdGEJ10JB
	 Y/KD8tCZmASxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948CFC83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175243499357.26745.12966177861948385434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b580d2ccbee22fb20c5312695b0317f0d87b3cba70cc02612485626b4397babe
Date: Sun, 13 Jul 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752434993
