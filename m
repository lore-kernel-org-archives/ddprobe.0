Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A07183CA6
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738139754; cv=none; b=iPzhR3ow+h45LEcuXwajo7ULy0HFsNmL6GdYU3HwOouRe8PA0Dm1H5uJHGWCiBUXn6GBG9f/u7CZXqtXLsBd7lkfRTIWQVwE04DI7Jt5Oih3xXMmC/fPNID0+oINOstFtMXboFor5cUzSrinF2MOqykxAEgArVaVh8iuUNSoZog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738139754; c=relaxed/simple;
	bh=bwdxSQauxJccSkjbfdmdGs5+TfKg4c6792QYrVnW0OQ=;
	h=To:Subject:From:Message-Id:Date; b=pKNq+BeRVEW2ton8KfshsCRMZIFfi1IaPZhPZmZpw1XDDWwvUmF8yD0gU7R70f2vlJbXb1THe9MS796DOkyJ0Wq5L8sgF9WY5fqPu00A3HCWBPt10+khZQVsVhHrAT5GiRScDjp5TN1X1XWsp0F9PxdvFrEjLZeqQNDfIKM0FWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S/vmuk+k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S/vmuk+k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE373C4CED3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738139753;
	bh=bwdxSQauxJccSkjbfdmdGs5+TfKg4c6792QYrVnW0OQ=;
	h=To:Subject:From:Date:From;
	b=S/vmuk+kKOXCBQysT87i3MFQ1HfrC5ZW3Qz8wpri0dWUGaHzi912+I4bCzZ7T15cw
	 tLN8eBT3q+yx0cKEtJr1yghL4xfok+im3JnE0SF2rk+cfclAv/VwMY9Cd6SLlP/fv7
	 w7BKFLHH0EBGS487bPXzgp1I1mwsMLMOLMJrKlFbI8H7wSWcBGzqyYlMBS0Dy1ywOW
	 fl1VSbbwQWyshGmjQ5tE4SI9Nw2AYOYpdVtMqkV7MgK89XEdOVpf+SnvagsviFmYWj
	 Djddhu4sQt5w9bz/Q/61zt+3cCYz4b1qPyDDc38jabI3QPdQhxAU6T7XYtCxGVpsWi
	 RPrD5HzQRU20A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF67C0218D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173813975359.5120.3076143988215613698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bf0059406b4d4d92519e3d448838f55d777f126b59bc9cd3cb609f0bf3e2a58
Date: Wed, 29 Jan 2025 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738139753
