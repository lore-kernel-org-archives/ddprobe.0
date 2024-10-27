Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EECD217F3B
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730015754; cv=none; b=XyciZufJ+IKa7Fi130NbMHBT1kOfqMgwijPMAzKsGtO28XItIZwO1uXcNjECtT+z41So2ZE9sw2BzOEJ1RsSYZnOv3T0FVrUL8qKtNO63RgMsc1RN78eJiW6xYzsK5fBJm6Z5nkdSAa17yvkxFdMiDD4Wn1eWZ2L4lYuTST0LWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730015754; c=relaxed/simple;
	bh=q4Ab7ViRbQbE6OGLc2MfEZU3g+1rj50FqSVDPhXu1A0=;
	h=To:Subject:From:Message-Id:Date; b=Hqtb9w+DlZXhrmzrd1XFmVtM1VMXsicKIj1QshBUne8GTDB6mtVCOtPec0Gu0ki6qJy3yNj7OTMuqgCmKx3knqpfCGlTBa/gjPj1HQ432dvqHnQBczHTbj1FVm6E39OULT6TEBmKvotPdJ9nA8R+youXoU7LsXm7TR+VFKfi1Y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+y8oslB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U+y8oslB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C83C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730015753;
	bh=q4Ab7ViRbQbE6OGLc2MfEZU3g+1rj50FqSVDPhXu1A0=;
	h=To:Subject:From:Date:From;
	b=U+y8oslBHGdLtQ+f1vNCybNdYW8cO46UVpc1o0oUK6TMCTZVIw66DalxkcDjRDM6o
	 b3D9teToENx8HtWiuhXaeo7X8V3eVCgj/XBUxWr4kglcbdaLX11LYN8H0uegOHqRFA
	 NFiO7od3d242fxOIW5HHdkA5ogGK9EQRyOkMAEGe1L4M2l6yOSyUTDSXBmZJ2qInd7
	 oIyKzMIcP+cpjDlJyNcH15M/tTaalQT/9VN7xi8PrWF/s6X5aP4z35GSpsflpKTvkp
	 PFAAR8lUlzx256oYBRECwu8F6k0D0JGEdBldFNVPTTCZYa8bbGcTvYWfTznsPI+jiq
	 lXwRQn3s75DSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D7AD10C08
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173001575358.18214.6343629662800316723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd4433ee57460c2526b4487368803993a2c67f36fc9a2b3f21673a7f7bee0cff
Date: Sun, 27 Oct 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730015753
