Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FB51E1C1A
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748374794; cv=none; b=J7U2gF255pxe+G5nyRQI5dmz0jLiMTO7aEO2YQ/S0yN4xih/RbFmFutOonA46mwGRlNEviL44XQUzoLLD2qogGuI9DqqqFC+5FrF3jsCBqgImUACP79zowjmEb5MbtEMJtkeqZ5TfeIMFSA4uk2JVf+9f/QF7HUQszWiQhkvetE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748374794; c=relaxed/simple;
	bh=/3q9ew4dAHg4zYIcKQA37FwA3HGsvlm3vWDU5H9Q4ss=;
	h=To:Subject:From:Message-Id:Date; b=KOtIJOLizxiDHxhw6Ar1lMv6LLfTSDa1XWQp8/In3bsaT4hZHxyA84ZllWxgUBG4UfVGm3vOqul5kSaH20cpmpIMMBYpS50LMpR35pAoF/tcT6rcMcqwN8cjW/WREhs2y2mDn5i3EqFOUWSC1br2praih7rSezeyKEDQrE0Jqwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o2bmC+AE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o2bmC+AE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9BCC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748374793;
	bh=/3q9ew4dAHg4zYIcKQA37FwA3HGsvlm3vWDU5H9Q4ss=;
	h=To:Subject:From:Date:From;
	b=o2bmC+AE3k8zJ4Rj48hrGDqxIJekH8aMUGN4ZQ0mkeneHWuaBOOyfM7YLCt0Ac5sz
	 nPyXpsUc4apz/p582foOwQA6QxaC8hBpL5uxFZYNyQrK1lcipPuQqjegyhVbVweetg
	 OVOSwsqoaLEs3/9nqmsKwUj5GI4ACXGgxN/GXcLWgDUxtAbZXNeY5HmHazyd+qNYfo
	 87uKHcYVmwjJ/UEdSy5dzdDgKEHOAigBa6kYSIqqguRoQvZmLnxe/hZqaNBmQjuUcP
	 IrzgdxXrueZBQnIJfYhMPSoy2okVNU9Hszt8Ixhcq7hizfiOVQPYUSrtEHcsPFWNHy
	 Wx8o+SuOeH8BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5F9C54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174837479357.28607.8353626794939916950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f53e2deb626003e845e9242bbcf8224699827fabe7d153f896e94aeb3f2413e2
Date: Tue, 27 May 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748374793
