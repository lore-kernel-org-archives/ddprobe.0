Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364DE3D9E
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732391154; cv=none; b=k8b0ZIgqudCHNVMmA/jO3rEaxPIk5yC40EbVRZuHr6y2RX7zHtgNZahdjaJzyuAwqsquWcM1Mo6jgFRRw7FwJ3uHV9uyN+viExtKDYMlXX0b0r4prQ1bAC+I2Mw8Xecw/9/NyNkLHT9LUCrXXXO52xWpjlnmiRiKbkzDxG852Vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732391154; c=relaxed/simple;
	bh=mG9zVvHQMe3aY5Zcnqjesn6MvTIbGPrzwtbIMPj7GFU=;
	h=To:Subject:From:Message-Id:Date; b=YuRfcuTdwy5P/EJN/vdO7/VJG5ZY0OyGEOPe6zZuhN1PbmJbstIlKBAn2IsAvQihRJwpNtWHa2qAknKU8WwJNRdMLP0s9+OdIi+agIby6oKnhvF0Qis127tA+eo7/e8APuWRPpxUQh4PXdOc0HC1edGBbEfYI/VfaVGHsuH+g+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rRaEqvkG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rRaEqvkG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4596C4CECF
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732391153;
	bh=mG9zVvHQMe3aY5Zcnqjesn6MvTIbGPrzwtbIMPj7GFU=;
	h=To:Subject:From:Date:From;
	b=rRaEqvkGHRXtERbs5Rr+sgSafvfSDK/4vXc9RnOwYKng4qsGcAuPIM90m0kDLBIWX
	 0JMMnTjztddrEtxtPjArd7PaWRLfsD3Sr9WqnH9b1+SKtIJmWH2kMwx7vVOSlx0ZRI
	 mpyzPaqW1qXbkUifS4JpJ/ETYUq4Gey+RDtPC+KgK5HGqzQ+XvIzAQ4uPl/KoXdSQy
	 QuCmNSuZeRyoms5UAyQijC8B1Xl46tVwpEFcEanF30YtU5e27HCLGYsfUt72wVNW+P
	 TVUqVmR3Ryl+nxaQnMQ1N8aFZ3JD5H0JsojBIFCmyxIfncSi3oE0JlT+BTCD5TcQs8
	 aVNYQuYO298UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F71AE66882
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173239115361.31656.8048781478637547246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69d3fe1749a338140630c7166b9fe662264d6c07d245d8b6c70815b2e353106f
Date: Sat, 23 Nov 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732391153
