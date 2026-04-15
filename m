Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F1D30FC33
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 21:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776289054; cv=none; b=tsFTO1RwrTyT8KYmKzaFuTwrrQQKK9+ndytmIGcq3vpiGjF+fw3d7RHW0OChUk0aS7ruy5RDUxPIB1GCIfQ7AgoASd7rrJy0yTSgkzhOnbnMUZjJ8AOh3xNJc6EYal7NaWdv9Q7PTXIXDnJVGglAD7j8VBWizi1+n0QzR0FJabc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776289054; c=relaxed/simple;
	bh=SA4ic4AHTYRVPXvyfzUkf0kMxsxG6B4be/PdpkLjjkU=;
	h=To:Subject:From:Message-Id:Date; b=XVxEtBa8oTPiLuJ+q4aH08pJcTSCtrsS9V1NFHc+gP5zd42ae8ePu8xyVq5R3cyfLX3KqaspB4zsC4wQBUrxCq//9lc9SZW70AsVMp/0JKCDvnzvogI9NgL94jERnyjIQz9omXVyg95kpzmAY5ua9AWHkUDf0J9gVLB7lxr0/d4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=La2sEG41; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="La2sEG41"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE674C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 21:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776289053;
	bh=SA4ic4AHTYRVPXvyfzUkf0kMxsxG6B4be/PdpkLjjkU=;
	h=To:Subject:From:Date:From;
	b=La2sEG41rBFKyW1kmq9Mi0CMnWwEWdL60CsWJhXip5dkss5O6WTPcLt+r2LUAw961
	 MLtsJNPnPDS5AU/C+hOjs3I+gpWzbHFJRS8n3sjZlpwdUH9EE0qlTZUuWParqVY90L
	 oLMOyl2M6/i3VDHM0FKcKl0pjV9H1fdnUQtDzDs9zTAhCsVpg6D7eIsYEpd3Z3nI21
	 Xmz66/CEpY5pO/5vaxNOg+2AKdMZe7lwzY2MNaMM1SD5LRPUq56bDwAUGhL0g+i5VJ
	 Ng2gYu+6+fv2yzCULhGaQm1VC4RsTrzAkcAyrJw1TI3GAhplVWkHDOHvIcbyEFweeW
	 uYV/fNaBd0lNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07E3F433C5
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 21:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177628905368.22637.16576753514385832267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7de1e0ec0960100ac237f1e7c51dad177fd0b261b06a758b23b97a73883972c
Date: Wed, 15 Apr 2026 21:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776289053
