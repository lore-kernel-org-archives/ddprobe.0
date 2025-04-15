Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9662523370C
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744754994; cv=none; b=nE2ZF/+fWQBRjLHG2NxAp6KOWX0NWCVVq4SG6nDXwL3sTbPnM3cJ91bIZebx5jmz88HZdxyUvzooB8T7O4m6m6Lq8Swh4/wErlKDCSFcBXf2v4ZaqLIVVmmNPDShN5qwQK9hK14wPqXRPOqqy/ZqN6vVRl/xj0LP4zsYW0qwPnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744754994; c=relaxed/simple;
	bh=uLYgDY8KC4hCoA5BZgfAS/qqdWPt9MSKqeAiyOHuLto=;
	h=To:Subject:From:Message-Id:Date; b=LA/PE1c1PYoKEKG3h1WiZ9J5EXugHWCOi2EM0mDUeIGTvcWSDQUgMbm/cGvoE4BvXlNfHiMiVTIwIezPxGRnKbmojJGwsXMejeV8oKfMYrINOUdxsmsW2A3/KO2c4IBPF06rHgAyolth7xA9dckRbrovGIf7oieH7XklcmJR+C0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eI9lrlXy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eI9lrlXy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F77C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744754993;
	bh=uLYgDY8KC4hCoA5BZgfAS/qqdWPt9MSKqeAiyOHuLto=;
	h=To:Subject:From:Date:From;
	b=eI9lrlXy6zrDVpjan5yz8VbmCTlv8KhxFV/FaXXw6ZpPWjkPrLd1iwTThzlRwpld9
	 4x6Q7bhaC6Ed3ya42bjfBUA7KrERUjzzNGL80I69ms0wkXK/nBwsMiHUQK+RsDWojA
	 C5yjGhXzH1OT6OGP5ORuMJXU9k1RwP8XrT/auWyCVuYsVgZXBa5yaymNCKiGRMLu4L
	 WzQJRL19mjyWQr9Wl+XwdOwunnImQpfi1f8hIKzj6V8j2dJbioq6AgMO9kFz+cwNi7
	 0McwtJhgyFdK3IUj79kzXxsYIeEr4F9s8gNh8D/PbQwtXdLu4UB7xeFYtYKQ+Q7U/O
	 utwc2GWkxzT3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AA1C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174475499360.16644.6067977536169736019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12dcdea1c9a0e47c2fc9321977de8e688ee5319757ba0d2a8f7cb4f13ad5eb5f
Date: Tue, 15 Apr 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744754993
