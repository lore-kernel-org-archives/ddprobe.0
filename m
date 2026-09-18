Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B46524AE0
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789764634; cv=none; b=F5ko8Yu31oNeVD7d6iMHjwERlrAc/tdh5raTF9sx/SYX8jVhP+YG6NO/ZzKFj7Wm9vdayqddNJlkZhUhuD9RIDjvZzL8sWlP3IkOTakKXRJpAiiFBA7ICp0rPrt4ImhKCZ2sc/XCjthGgEie3KebtjolKayi06r3zwK9FjAvVmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789764634; c=relaxed/simple;
	bh=JHTvkaxXhym1gHJgEY0isjW3ugSpIGgVRaukIxkbQMI=;
	h=To:Subject:From:Message-Id:Date; b=Vc/GnY+tnq6xayAOAVYi4q55knGLD8GjjnVww3TwSs9kJ3wVaOFPFkalVV4kkubiHnuvXXPmWtRqXbpP5fg68iLBXDQcKxAhm9RjnlSDgQp4tN6K2/duNiKScfZNv6M3Afz+zrrCJ5UHriU4cFn8POCLePTeShtUO8eWD6jM6yA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=luL2cmJN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="luL2cmJN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD866C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789764633;
	bh=JHTvkaxXhym1gHJgEY0isjW3ugSpIGgVRaukIxkbQMI=;
	h=To:Subject:From:Date:From;
	b=luL2cmJNfVrKWczhSbDE5XwhNGoWFnbS7g5GxNS71hUWs+4kRSOhRof4+bj+IaNW5
	 K7+Mso93IGwYgQ47v8+yQkZuvCD0dZULsM8kvxqs5DDZlzYtyG21l973eSZiRizPQJ
	 HXMePK+gr5FOUsgYQUXVhBxJbU5Cru0aD4uCJBG/rjEGJSur4vRpapEaEC5zCV/K58
	 M77wqjvRioAYrYyBjv2MSe07m9+DNbSNtOzzdbjg+MDdEju7qcFtE4+G+Yd0n4Xfp8
	 ecj77XThc8XvwDIbk2gznc6oHwQkcMmHxFjBdmPoJh7v4m4dMVuJXhCN6BxKF3BJJ7
	 qI+iyfpL7LNjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BCCC982D7
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178976463371.11447.5703725185758619556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0a145599e4a592cb306effe52e0de1fc065e6872ca874eb4ece767a6bdf76ef
Date: Fri, 18 Sep 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789764633
