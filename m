Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F6625E813
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742816994; cv=none; b=H1OrPmoIiRCKNo7lktYwjlhsa4a3SAnNJ8opbnuETRhVpvYry8QO10XpoPhJE7lS3f/msyX6b1vEyLM74wPJu7RXaTT4xog9+M91TvLidlf5kd3QYIFSqwAFs00fUu4sOLpRXYvsxO7c2GSCMtebDZTnpoO1Zge2ObPIqPzoUsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742816994; c=relaxed/simple;
	bh=/Q70Es9ariWpDLQKwVSdSVQ03gbnmXmsfM7lEKj8JAY=;
	h=To:Subject:From:Message-Id:Date; b=c+DtVHZGdAgLEZ62th2KBnlWyB1KQPXM05R5VpmtMZbPK11Kpoi90nUB5vPozAX+IRxxo4ERlc3QOh3MUyoT+Ly7BlpYLAzwn8h07rTTZx9cZJEIsitj5m2xp53VBH+j6k1MFSczesaW+ZBJX98wldHjAy+xRo+n2iPLcj+Rw9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VRO12p1r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VRO12p1r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9D70C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742816993;
	bh=/Q70Es9ariWpDLQKwVSdSVQ03gbnmXmsfM7lEKj8JAY=;
	h=To:Subject:From:Date:From;
	b=VRO12p1rBpSXnS5Gawgz9dQiPwo9olu3jC2u/VHqoWlVd+0OmoQyMfIdIkY/qLZWo
	 FEjbcqAtEjmuHYNJK+71njszTzY4F5ipkiEyev8XV7dB+oo2on+VJT0xF9faK7of01
	 S8vLq2ru9az+vofatfkyfGGDmrNeNKjlYp3HFUpAk+GSEV9CVqMGmEH7pw3KXI/DRS
	 iNc0xNpIQ8DNhyo4HAYhZQ3s38IME1wewKZktprsQrG6BAXKr1QmLOFidNARfeo5Ch
	 ZfP4eeLFFHuBRhHY+ePUwv3kLuweDC5mD30g5waBYi5bckOJGtRahsqt3pP/HhlKO7
	 dTWXugfxkWbdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0C1AC36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174281699363.14665.8431868110969704010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6be78c905214651b5df8169f8648fd7db918757c4e391e1947994a7aebda474
Date: Mon, 24 Mar 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742816993
