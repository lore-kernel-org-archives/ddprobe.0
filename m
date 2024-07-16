Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D38F198E90
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 09:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721123123; cv=none; b=WjReC1M3UgGgup8FgSQQ6j72198FQbz+GoeyWGOM7I0a9fJEgd4RK1bKm9XynhvoiA0Wv5maC7pO4G+RBTzrYpKpD9QHDYhPmeRfImmgw+O8PLJsGvSIoFtHAO1hqHwS+rRnkxuj9tf9zUIVuHjq6FOzWSr8Y1wxjgIcp09di0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721123123; c=relaxed/simple;
	bh=FXC4a1SPn8Q0MwhrBxwg8htuMCj7wIeYUhmSauwTVoE=;
	h=To:Subject:From:Message-Id:Date; b=OQyqPtzM8LqA1wTcujcUIDJJovSlyLsobhuMO79uf/pwLFL/XB0q8HN5XFx+SISV7gZy9EmNvg04nIMsn0ytP5L0RnvcOWn0OauZqCcAqgZfRaYT0M9w82Q/HEjyDd9CB7MO456D1JHJ41PMyXV5IK2thNi7ty73dq2f5nKqKss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oifjdEdq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oifjdEdq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E084CC4AF0D
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 09:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721123122;
	bh=FXC4a1SPn8Q0MwhrBxwg8htuMCj7wIeYUhmSauwTVoE=;
	h=To:Subject:From:Date:From;
	b=oifjdEdqK+YOwvMJSwPvIdFYtIN1Spx8V42ksLNlwTNTpiYjshruIO5QiIPbF6BG8
	 LsNxIN4uaDnMLi1Pb/rtlBVN9ieMfiVDdoTgf1nGYO9ykYhFh0JTGj5GGmN6GszXDZ
	 q8+fon++9UwwD0By5oDd1nWH6e1qnk+LZpY0Ng/IPNoOrmnwtZNyLhOr7BwHTYhjB/
	 chJ3bBJPSdGBa1dbNrDaKXUE86nfsq92pMA53PA26CU5sjgI2i04Gwuynoad3oSTNn
	 ziKY/5HDKUxQSS3WDd0aX+X3FdRoJNOK5NllcIAAWteC6pgpQtEvtnFAvs5G3B4B1e
	 sjBhyVS3VZuHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CED4DC3DA59
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 09:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172112312283.7653.9670987924331740955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aa122277e4cbadcbb49c40d16c01726ba25193470f34a2a920f8a81bfe8a3a3
Date: Tue, 16 Jul 2024 09:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721123122
