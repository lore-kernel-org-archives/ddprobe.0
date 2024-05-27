Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57BED17E8F8
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 23:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716852863; cv=none; b=KBRdqubczFwUMEFeImZ56QmdWJPaTamsEQf6qVPqSXmCN/oCAOYOtCrhL94YdnJ/o7Y7ijvzD9ZMOvbIa9WGjy2deYmk9hW3PuGyRvt0HhZMRHK7c2TnBKJCT/JAs3gQslln4AhdF/fNAhInJqqNG0jJU6wsTYe3p7zrwoKsJog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716852863; c=relaxed/simple;
	bh=58NddD8lHCPF478cw8ua7uTQr5jk6+3iGdHOB5W+PBw=;
	h=To:Subject:From:Message-Id:Date; b=qzvoPj2so5FpYggjf1GM57La9yKsuy/Qc1BkoqJxFgkurxe9UT9th57JDi8YmetJBnTDI+NqTNZVXjxnGezkRVt1QUsp6zbFO0w8T2XZtpgtJFeH+kUrmC+bQTETetWYYOFxdnTzg1SA2+cN/uvFo2JPT2f8lSt9V6qtniC1k38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n5ucbTD5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n5ucbTD5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8F28C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 23:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716852862;
	bh=58NddD8lHCPF478cw8ua7uTQr5jk6+3iGdHOB5W+PBw=;
	h=To:Subject:From:Date:From;
	b=n5ucbTD5Pl1ptH/WR8o684qo8GlLAB3D5DkI5/9er9VjY+hkwXITs9l037/Oe/Yro
	 k6qB+t+/V5Cxcw9qJ2P+YQP8IdFeb7+KtZZ8l4m3cVcRYeuBRlqp8doBGPlPMEWGi8
	 Hm6rDYg/JrcEEgvRS0o4YeHWji/BpPa9AuC0avd8p+YPLac/Ma03Mv76A4NHDk3T2K
	 wLXFuriLY6zH3MyIf8+SQzBftKtmmyQMf5VvCWjsj9vfm7ZCdzT+auzT1oXmKm3pwm
	 DtcVm3fPbDkBkSsASitZ5GVIdMLvueh8hrv62lsu/m79ot/4pldjYXtykNwYq+Yr+P
	 oSlzzNoYPdZhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5308C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 23:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171685286276.29369.8153480280846038235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 362ae219aec25ffb9feb6ccf29f382064906a07ff4e5e552ae023182949c4f6e
Date: Mon, 27 May 2024 23:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716852862
