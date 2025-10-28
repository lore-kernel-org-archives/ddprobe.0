Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ECDA1EDA0F
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761617994; cv=none; b=sjk0aO/9laA5EW9dLE6syTb6woRmKwDpaNGdWYGVthLnAQ21X7Abm9yFd6ix49IfnN3jiprrMt//nV2YmnCaBHm5+OoVryrENh3Za0Ruw6n++s7J0MtByQhbNAmOzSV30GI/4xV0HtiFuxze7swSgRy98Wp8pCSla3ycQXzEiE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761617994; c=relaxed/simple;
	bh=o31MnJYC63s8d0zf5QKzVtiuIhwIVZZAomBpN2wcc94=;
	h=To:Subject:From:Message-Id:Date; b=P0fyPLZt7IqvZASKxhWk8DfXakdy+cD3cnR0tO/98LedlKSQxvQdrgaqVUQckMHCLafHHcgDsl9q/UyJBBbG9BUoj4sUAyOlwJ0ibteCrt1qkiT5MmiQUmvot3/fS/NaePWmE3z6tIQYFrfOsdZnV8ObrsnKu96hiX0tpt7AIpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a0N1Slhi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a0N1Slhi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7467C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761617993;
	bh=o31MnJYC63s8d0zf5QKzVtiuIhwIVZZAomBpN2wcc94=;
	h=To:Subject:From:Date:From;
	b=a0N1Slhivfe7XSZ8uNtoFdkGE9/BAkgXl+EKTUahcF0kGFImquySN9/oaXz5n1bnn
	 bIgtITRkzTensSgnXfr6lQ3RbLE5upJgOVyvT/EA9IWdw/B6K1tkF8RbjSNN4H7zlv
	 BoUfwAbEOdmrLnrIwHAkDRwtM3KzOYvwAmi4Wwa+jI5wBsh0FP9vHc84NaX8EMKhnT
	 AO5y302CWAqoP5fk6W9rvwQ2EUD72rkDlDC7+OcxhIMYkgaEcq1cWEPlJqbQbfBhxk
	 /9ALSlk6yABrNqUkcfS4bDFUkC3PyuRfvG2k38Gv3x8ZDEiop2Xp6KhUajGlObCKwK
	 XDNsz+lQILBKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909B6CCF9E5
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176161799358.318.13528826783522445627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b64fdaa81024332970c1149b82b07ef8705703ea22b830160906d450c56b13b6
Date: Tue, 28 Oct 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761617993
