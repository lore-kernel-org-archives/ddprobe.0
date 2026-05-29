Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C195330B2D
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 02:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780020154; cv=none; b=fET7lNJrYi2tzZ/lUZn2DQpcW1NfHXabIAjB25uEangIHFuR7gHgfpsFfYYpU/CGbkVb3RqCENIXWjW1lVJKaNk3gDYSzTtGObdCkiTd3XqH1gyr4TAB4B8xM5bGP+R5TRI+QSCcwXp8v5KXTdkoqYTOmCQex5+TerGZ4oUIOpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780020154; c=relaxed/simple;
	bh=TrE7UCHb2qTP6KfgsWBAcRpXLCQxCu1zsOwtpXxt7Po=;
	h=To:Subject:From:Message-Id:Date; b=P31K0ByJ3F27poNbFy0Ep1bfXkTZ+27oNtC9ChHDmPE4kT4yjIq0EGi7upjsYftGbcaMEW7z+i38few4Yd/hjXmVmdOOG1A4rpJdWyii1fSvKrz1JZI8xS0W5fSfveATE1vH/I6IZ3qDJGR947m8aBtoh3wREwCaooCrMMKvJao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Urt7Gikt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Urt7Gikt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9E31C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 02:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780020153;
	bh=TrE7UCHb2qTP6KfgsWBAcRpXLCQxCu1zsOwtpXxt7Po=;
	h=To:Subject:From:Date:From;
	b=Urt7GiktoPqpFgIaQrd5pTtMCEGzlMxRO+NzYtfFZ5Gatn034wcAY1+HoVcpzv+RQ
	 qaoOqvhP9ZDWTyduTASGgqo9sFjlYM8DSfhJwmUN9NjZU2v9GoXqN76G/y5r3nkppt
	 rfJZ6gQtQFjYv+cvW7vu9iUUA1kSIrJ+upw8FF7DvkixSOEh9OIxGB/LyI7M2UWGxK
	 PiYgeA/0PDUNp8Tus7OTI5tP8ntYAJAkmKkP73uUMtx+XmpE3FqUsSkWNtLfPLurpI
	 90v4XDXw0vgp2IGkjAxzkmkpW95rCjUAHnbZ4W2vk6lPHn3vsubIYFCINKE3FmlP8Q
	 rksgutqv8++8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC98CD6E43
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 02:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178002015369.26451.16475657861805721962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d325d0946f550e8699ce7b08860dd6eb7723c42b9caca5fa94d561ad029f9225
Date: Fri, 29 May 2026 02:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780020153
