Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2015037C0F8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 12:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783945114; cv=none; b=IioymJ4FBvOAud0OnIHUU6QKe+9XmUSxCsYR2eVgKcJy5OQXxEmlCRETV2UkeLT6ZyGiZ502PlrA/ZuXSO5n834DSHb/L59KxY+cXysWaxuvJ3UUUBVl63a2b0fCLCYGODwp1B4WxtYpZ56UOMt5F38omnti416WNqv15AMgOVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783945114; c=relaxed/simple;
	bh=MBffF+/UDCjJCQKay3PS3cUzoXtHHqNVjakP8NZ5Umg=;
	h=To:Subject:From:Message-Id:Date; b=iKA0gQOE0oT/UtB5dpRC30L8ZiYI/UdGaCbF7Cy8y+p2iG3+EHv8fvIBSfBqpZjHqiVvCK5tfdaDURieW5mFdScummR0tMx36nMwUnlYJa+XDJJ7NdgaL6KzjGXz8eagw/vtdE1b3YJxKeuANDWFnIRC+LDfdou/+jG1LQxKTAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RTEUUjXc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RTEUUjXc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBB03C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 12:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783945113;
	bh=MBffF+/UDCjJCQKay3PS3cUzoXtHHqNVjakP8NZ5Umg=;
	h=To:Subject:From:Date:From;
	b=RTEUUjXcJdqr1AxiUkTONnFt5trVW5Bd8gE5ZUh39znAkd+2Rm/DYmBLgR1p/UNty
	 vfk9DvzhpA702QKXbClpbB40CfbeUSveVE9z2Jnh0FL0B/ifAS2ICPEPDT7Tlt9q6Y
	 p7Xywi8e95aWN0Zgm9G509kNkkBFD0pYV1JGVqVKtGgubxvHkn5I/myh1UseDVdEM9
	 l540sMeaf3P5fm2GAgvsYfPS7xRjlSx9YI3At7WXT9ThT1uRrWRa6VEgokWFv4gARc
	 VqGeenQM7hiJGW8+vXTyOfixlS086KhslGAAnqRx8tGr+lXHXVuOVapTEib+f7uqub
	 FIpg55nS2TZ+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E00C44501
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 12:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178394511368.572.5152776536409868343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ac9a0de9511c3c9c40c8b4147eae531c70cdf3baec7cf2734bbaf5bfbe3d54e
Date: Mon, 13 Jul 2026 12:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783945113
