Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E46A299929
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 08:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777624054; cv=none; b=CCiNdqmY/n5c7RPKWcqKaDq9EnIoboNrztNYP7O9IHHk4WHy8Bi7GeQ+xgF1lpdv6FjfRmucLS1wSxxHd3RtwIqQX1UPPzVHS+AtMm4S8Uom3z9EqOs0WIB2IUdZOqfmmzwnhEhpU7afIPaDi7OZJov8YTZ4OXGQ4fkzewMkoyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777624054; c=relaxed/simple;
	bh=yRoFlPOvSOgMXMYmB4y4L00mpJJL32MhsomHkzJTokQ=;
	h=To:Subject:From:Message-Id:Date; b=SpOHyvdJM6qSN6alGnjKiIeBTrr+VKO35Dwm5gsIka4d65jhYtDjW3HCmpnWxCmRNtqd0Dc3NYOLoqeIpx9byQYLaeKmTlpVaVlmkd6KfMsPLfHZ896JEoC7IFRXEZvRyXlnsZ6QoqTJYmnQyCrQRhZNPpbxtssKJzHEDh1US20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HagCqaY5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HagCqaY5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3B5DC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 08:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777624053;
	bh=yRoFlPOvSOgMXMYmB4y4L00mpJJL32MhsomHkzJTokQ=;
	h=To:Subject:From:Date:From;
	b=HagCqaY5f8FcjODTd91VtokorxIc3PlOVd7qP9F3Kmw6U/OhidlCWbePmRtlVr3U8
	 TZeGR8pOPm6530PO2E1piw+nNpMJS2pLASNRk+60cH0Z2Dt8sinF7Bu1svhkTBKt54
	 /164lq8HTESld71URD75nZozFiTKEmvWiSdhFgrXoVY+jJiMAZw0KFpek+VqvN9oDc
	 QPIko8rzFRgpKlapw60M+wp8+UbIbphfZXOpkxFpSGIKDN0N7GA3AbNiSA70KTLOjZ
	 Y6E09ZTyAUNhtkL6KNdiNGOJus+6yYl+yx261kMKB+9A64ZNHaWyRmkZx1dzZR54TB
	 dNHPjnnt2omVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFEB7FF885A
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 08:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177762405368.4869.351323522486116411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95902127d83f3ff4a18196b53d9688f56a1a334b64cf4d95c2d07861b74091b9
Date: Fri, 01 May 2026 08:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777624053
