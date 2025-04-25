Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3921E635
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745622594; cv=none; b=ZWuagnQ9oK/20aP/Dap1nrnc7Yhz9bBMN9Eyif+HEYtPqxePBg/r0N1OpMKmh50ncfykKkZgDx61l33bgQoNLw1rQoe3u2+0pr25cUMOoeO9IdmMZWaN5i35yQg491xQzAUnl2dJuV+R0mEGW5wUaoHF0V1yQ0YSgJkUhxw0K1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745622594; c=relaxed/simple;
	bh=/U41kq6NrJrd0cUVjNfjhw1KJ5VzNS/cn7QppD/dpsw=;
	h=To:Subject:From:Message-Id:Date; b=ovyIZqOY883TCL8X3RwVE3VCTzRDbtpuyblF4YGZWG6+HVcg1NiHkKkSL9M6O+KLpb95x6oPgNlBej8hVyOSxriFQPb83KU9mc9hxPvZMevYG4DFimKtgIPxjQhvqi8yKmfO9KwCtXP597bV8qn5wqjdzkqCsyhAwm60iGGLsfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tSqXEP8W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tSqXEP8W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2505C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745622593;
	bh=/U41kq6NrJrd0cUVjNfjhw1KJ5VzNS/cn7QppD/dpsw=;
	h=To:Subject:From:Date:From;
	b=tSqXEP8WvXw/cMCXUjnYxsWnYcGet+mMQKv6tKxdiFbIycBTLj2FwD29Xhj/uZOI9
	 SEfyZOx1+GZLxwLf7jaUlSs6Ty620SNg5wFDFdERFQclxUWc8cxydSK03FI0LTW5Vi
	 WIDX4eBZhZJsxLiFfzJzdDvS82t50+0J8NSSV157SDdP6vapy538gXbDYH419lCmu6
	 U4MsbCaivkudsyx8H/h8A7L+yZT9a8kx3ioRBfHtiMyjC5FQNcEauOIgw/qiqqTYwi
	 hpLI74RYsNYuG/Noina5NtpZp6W/1ROGy34Y/RxoxsgRmjTS0hFPsr+xqnKYeJHi9q
	 dtHAQwpos7Gjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E32C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174562259357.10815.5953360424254592831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 482b08f3a3370ae32b2f3859919f3a3b11812b286c59b98ac7bccd41e7817389
Date: Fri, 25 Apr 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745622593
