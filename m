Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A511274FD0
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768640034; cv=none; b=u5V1YuntzhtT4/5/KTvmjEiHL4A+4iBt/PHjDnhvdk/LgafSc/OrcQV7+n9XUhyM18LI8rdYm/IML+eeK7f3Jp9GNRZfBihj7TaBYOH8AaYM5edD6j13DBqcEtLmr0VjQibzpfZZPCkUc3gr4C6S6AyZBtJCDE9xaYExOr6yK9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768640034; c=relaxed/simple;
	bh=57zjgUF0RvlO6xChIvczaztlN5dj6oNE0sqJtfv6/a8=;
	h=To:Subject:From:Message-Id:Date; b=Mv93Xm4uaTWnae9W67kos07AZaXMAiVKVYs8DFXLcdvCmrcLfYEaxLKhuKzMbCyTK0D1+N6tvgrYb3gvOMSg99ttYvgDgVfTHsc8OcLjvN2CZiGvmb2G36m6nDRfwcD7i5RrwTMIKG658LOfhrB4BR50jzA8jdMGCZtGeI4QMPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cloj5dtm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cloj5dtm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB958C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768640033;
	bh=57zjgUF0RvlO6xChIvczaztlN5dj6oNE0sqJtfv6/a8=;
	h=To:Subject:From:Date:From;
	b=cloj5dtm/lzlgOQ4y5Q1OQsDQuM59IgelUy5PIlnLbR7yYcz3I3iUjZNjNAkMEs6d
	 3GOhvXROnUhCLzrjybHPoEz+4Bd527LM8c8D66gidjjKKMGKQQywYvRQfmsRfh8eF0
	 B+CiokpwFWbAbrz8FTxyGOGw0G42yVzC4jbGPxQTALodINs4e1NzQhoqUxEy2hFO3+
	 gb/D1qr8QwKZUcUg5tdC8ffbOE1S6Izi9I1b9LFdM4l2Wdo2VgapZvy3YeR1MNSxIt
	 3MxdjnXyApIVL3y93WiRc7cd04xSASo6udojuHHdl9DFpH0K2HawYsIzZ4h/z0KVyI
	 H9eRA7//7zY0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95878C9830F
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176864003358.16739.12498052426117587215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1a1095010cd95479aa874e9003633d1ca0485903d2adfa72f4c928ab824fc07
Date: Sat, 17 Jan 2026 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768640033
