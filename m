Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1340328466D
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768838634; cv=none; b=RwQgbTXMUg2tF9OZn/nZ2ydsLvgvnbLKhEZ2Y+3PASZ6Puaedm24GeYdQWClRby+szjOZWEKWy2Cm557+VGjDfmJbdlfZKuGgJYPIA6GNWB1F6eaTSZ2mZOI+lfqfkLShShnRG2qkbTgrTZOasF7wlbTlFJTA4aepD99mUzotHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768838634; c=relaxed/simple;
	bh=v/crxQAMmlJRgxgsH7481T8p+FQ5xAE/vsS2VltsZxg=;
	h=To:Subject:From:Message-Id:Date; b=EtdoTe2X4yMC76QCfKLySR6vJtUw68cLJ5w44qlwXuNTptg2kUmSopqto9vrB9I8HWAXA7tkHb7MQRgmIGClh0pt7tATne0aDUVvK2AkiElJKsx23zcCMxbpCQd+IwW2LiWDN95InTqRfUFM0133XQNVWZPmb/8DgP6OJ2ZDFAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLVnrrZf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLVnrrZf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C9AC116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768838633;
	bh=v/crxQAMmlJRgxgsH7481T8p+FQ5xAE/vsS2VltsZxg=;
	h=To:Subject:From:Date:From;
	b=DLVnrrZfH8cZ1sVYaGfW7vGKbfFUbv7FZM1IZ0nMpVWSZO6A8w0RNxeJ67IctVGzE
	 G9vPU9V333QCzP6w8hS7jNYLyLrboD4U3Jzcsr0W1POBHBrOVw5HNsA4XJ7Xxo4ps5
	 k8OWpWvSoRfHLVM0cVz/ZXykJIwtr/CEXDvCkTQVPUNTQh4A1aju8nst6JonD7ktH9
	 WefI3Y7sP8g4Gjbx3q3TmQ9XKI1udD2vYVjnonIYbqHVZJeeef6sgG1gbpan9LqGIC
	 2gjntvLdiyrzlH4lf31rtnBp67qvZy7OTas2oqZJEUXsxALxc99RUXU2wUmASfgQwb
	 eo5VL93oGf0tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919DBD29C40
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176883863358.1652.2731201644742277208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c43f3f8cbf2bad5e1c02f3237198f4f298b66714ad04311192b950776416f2c8
Date: Mon, 19 Jan 2026 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768838633
