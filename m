Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 559783F1AD1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 22:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781649994; cv=none; b=Q6BH55hLOTrChuKQu7Y6kpRJ+VxtAwrAYGw5IQJMzlseIXh4R3yAs8SkHKIOS6aub9f2LakIUAkPn7b1pfK1rPfsz4XhyZb7EdaTSCmVBRdB+Xt2RXm0SvXB0LvzD91+XDrKdwTunb6sDa6Na4rglNDmicFQ5oZbExn53weUT6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781649994; c=relaxed/simple;
	bh=a53FWj6NAGvpR0RWzGWKTui3rCQylfKTwbY4aeygbVw=;
	h=To:Subject:From:Message-Id:Date; b=b2EYwF6PDCOzEyXOK19Btwn35Ppxp8Wm8ApV+29qQU/j4TqjS18fyFRK8ieebs/KEnCIFSkfi5hW7CaRhXPH8EGYIvIgaqMG0mhA3E9NTfo90u0N8lMePxDHBHd0pWzeesOAytXw5RXUrZo1clPpnH3GweiaQ1cCWD0LfCXXb0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SrZheGEy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SrZheGEy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D69DCC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 22:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781649993;
	bh=a53FWj6NAGvpR0RWzGWKTui3rCQylfKTwbY4aeygbVw=;
	h=To:Subject:From:Date:From;
	b=SrZheGEyFQ8Vc/2b5pnXI6r0Nj8XzjPRdJyjIX3QIKyEAPQcL1ypVzCoUw6iCHstA
	 WDF4r8y7vQCYwF1tVd3OJa5818opqXbn4WNmDsYKzOO418+sfBOjdautldR7/czRen
	 +KB96Fk7twLALIPxo/xtn9+QsZZRsNWlVLXVYmOkCscb3vLBZVGc7j2Ne6jLcUZo3Q
	 CUCuiSWqDi2YY0Hlbd3TuXbX2td9+HgJalIy9lQs4DjPhtg2a2FwZh4kgyI7WLGptm
	 8AQJpDs4dxic+F+SW4CYOtcbh1BuOZhli8td/CQoo1IePgTcS/HhH8/Aah2NaJPLt1
	 AuFvzVtv2Yscw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7AC1CD98E1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 22:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178164999373.29427.14410239282386626404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ee28f607517d863023fb74266f66728bb7599afb2072845b97e0a1e86e63bfb
Date: Tue, 16 Jun 2026 22:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781649993
