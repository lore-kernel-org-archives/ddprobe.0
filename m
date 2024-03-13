Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7149290A
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 14:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710340697; cv=none; b=WoYbU4CCabSiafJ0SQq0S6tDWkMz/lqeqjPrHpb/DwaBi/K4ljxX/KoF/09JY/BxroTJkCTDDZboEBoy788/gCA8BAEwSc8NHpYwMA3QKhAjxhwpFz+55Xi3R3IzW74XoI79vHXBoQh0hMSBjZMMKPNVh3D6JoZK2xhryCyQXtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710340697; c=relaxed/simple;
	bh=2JFegCvFx2x0Sry50yBIa8+YEijsY7lUMPBma3kq2xE=;
	h=To:Subject:From:Message-Id:Date; b=Ds8uq4VjyWKFufHW1dPUhkbpd8m6eb0ffLl6dpG384LyK6liGq/0oz2U7LcdNzXDe+IJqGzaSqvDtNp3R9pF5MTanKxZbZiBodJiEHuUYxn+Gk56hNpdPpIS+sFjD9knKzrkOzmhdL1pllM33/Vf6ltrWWtrPOukV91k4Eo7eNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UWNQvK02; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UWNQvK02"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DE61C433C7
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 14:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710340696;
	bh=2JFegCvFx2x0Sry50yBIa8+YEijsY7lUMPBma3kq2xE=;
	h=To:Subject:From:Date:From;
	b=UWNQvK024Jccxs+cZXCxBREiidB3apP5kLEcUR0vlt3mSZh/mh6LUs5ot5oqBVEnf
	 24ykzczxs6jor2t+I2kURqkicUq2IEBua34PAs0YDS5FimlBxVz1cYLF4rCNx2wP5o
	 Ts6XgnJ6K+KHikfXyJ070TAkZoI5XwnbkMVW0kbf2LJ+mknZJfC+TK5iuUSi/+QLZn
	 JLT5H+DJUPDiPszPUwxTzT1n71BU3knrSSRqEj6kte9QlIe+0+tkLt42nHHgm31SRB
	 0SbKXoJpWypgddtIihdAZ4Rv9w4yyMfKLCm/oH8Fw3eE6sEVH4WqDNQ72jPa1bKh4f
	 E33Rjnjz/8eCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EDEDC54E66
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 14:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171034069638.32261.15931032474568163144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68e31a7ff3edc5cbb3774b6fdaf09a3ceb830e450ff195af5da57b55162c5817
Date: Wed, 13 Mar 2024 14:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710340696
