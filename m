Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D70F3A4F2E
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773058494; cv=none; b=ARD9yp3yj+8/tc9+RFN7eqrIUlqU9RaZnbhhibbRAAN61S42dg0ZviMe2bIW4iwV3EXIl+5M7DJG0++BzKgwvffxs52lpGkaoq74tF0ew1+ZUwLpBq7fve2hLORDuMLFjyHn4CYmAt/18343GEb4VrMJNKi+hXflcNn4rgC4Ps8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773058494; c=relaxed/simple;
	bh=ClN7SuEkOTcK1ZXoyJp1CTnW3qUNd3mOxwLbHr0VJt0=;
	h=To:Subject:From:Message-Id:Date; b=fmjNqx0jBjhCzd9Ob/wTMAC+43pzV0ghC2OVTWQqSbDasuPYgJm8fWvld+Kz+nQ9NEhCOpLTTv780XaROE3vDk3EweX4tucCctoLr1MBgUrY7Kd7C11JQ+q3YEqpGWLh9xwOmdhi1tl3pWuYrzmypfROECu2I4xv6tNqgRcG8sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YCBH+j1C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YCBH+j1C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BA5C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773058493;
	bh=ClN7SuEkOTcK1ZXoyJp1CTnW3qUNd3mOxwLbHr0VJt0=;
	h=To:Subject:From:Date:From;
	b=YCBH+j1CyjJblVrdj5vQaiPZprq96ANV6hEtO8M2IMuAVguNDPlA0qcQI7v+H9FPl
	 Bl0szpZKTpQ+s1cx9gXDE4LaPZ/iSd2zd64wK9DLwroAwZIdS78yFtrMBe+gYyreXA
	 YiPF+wwotMMjk6kqTNhNadutvT6mm/0hm3ST6E3VbiHAmoPT+ff8KXa+6LfeahQri1
	 yv5z6nkce+LsDr4PK5a312DAIgeK+cMKYjE7rXbzt5m4Rv0CymMv+2e7f0eFg+dCNY
	 ttjMAzlFP9W8vEb8tOx87gQzPvRM8fIXbvPqNbvjBq8LqlLnMykFKdFqs1yTJnKx1w
	 kd9HMNkWW93dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97301F3C241
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177305849359.24300.6076762029767148117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bbd0cd349c64f02b4e9ef404475fb4ee75c9d32da63407dd4d58c80f6680447
Date: Mon, 09 Mar 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773058493
