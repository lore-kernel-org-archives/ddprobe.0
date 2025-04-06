Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51EFB20DF4
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743981594; cv=none; b=rpSBk6XbIHVqKvXSputok8Z/k5H1pBHjc+kRNvKGh/DxHrQM0a0DVBcg00zFjgtOEb3r3SFCVaE3i9NUAPNknOFFnl6tkys+dr36yfdLGuxzFSv+bv0QNxcbneTn94bZtI5TjsxJXGa2rJzfzVbHv90AVdFRlQxy6pfTW1qaLRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743981594; c=relaxed/simple;
	bh=zLOKu78Zu+Is5E6/pvsydcHpNNiSyTVzFw14CyK1Bog=;
	h=To:Subject:From:Message-Id:Date; b=YO51H5lv8xtlqwYwZZt3ywkoG/G7swvnBhBTbRsM1yFcADxbnfMulmNObvnNzAwJIAJf5b3MYRFbjbDlncEoI53+6tFCBQvq5bYzwuIW/TqSXgGIGvEEoLQ1WCvw1nuW7xO30Ekc/J+vQaX4a5eGDa4ME3U6Bq5hIxnlfgL31WE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F90/wxux; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F90/wxux"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF775C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743981593;
	bh=zLOKu78Zu+Is5E6/pvsydcHpNNiSyTVzFw14CyK1Bog=;
	h=To:Subject:From:Date:From;
	b=F90/wxuxd5ijoMtfHw9FUjVdOM+wmBnPnrRtTyo8OLLmJfxItumDuHKsFrLdvqy0e
	 N/zjWmyKvfGbpIIzHQTnOSkftN0PywwKjG3X2B8CUEu8hMZHrADwXZqqwBTXJ1fN6e
	 ixAMNkS66XbbWRY9YrakmCMA5LGGKbDRKVeSuNHYZCS9nuJVEjFbE0ce8zif5lmSAc
	 n5ZR+Z528qWNMejShG9UHckxTCo07t499wI7hBRgLlehMlvixUA40Wav43rkuWazAi
	 Hb0kUOoDsrpf7WdOWqWSGxRB/MAno+XfQ2xroqqKlQkOGRAX7RQhucFvC2uOD7KLJS
	 HauC2hUQmKNUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A78F3C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174398159363.31495.2780459004068903176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ef8fc1658661828d4314580d3eaaad93f5c5cb7af962773a23d3c1f3c0aa2fc
Date: Sun, 06 Apr 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743981593
