Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 667903C08F
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 14:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716647663; cv=none; b=IRPsl+cr2/d5GbvY/7Pe+yfVgysK5i3rjN9ekp27MACu3hXdM3X+WbSc0cpwSxiYqf/M1Bs1uQ45jWVAN/v1tLtG2AusikfmR2yZHdlDFYFUEZFAHTQLvGImBG/pxvXluy5J0v5Q+gmd/gERpX4JABqlF+vv36V0aCKHNOKWPS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716647663; c=relaxed/simple;
	bh=bO97nEITfcfDDzToyawc0kJq/U/GdgdWwAm+TjprRrU=;
	h=To:Subject:From:Message-Id:Date; b=ZjuIyhsm9qM/1onikfx4p8ypluA9h0e0nE8dt8wTiQ/ufIaT+4rIoCRu5YV5mZcMnyXXHVHCjd9q4zfO5HAPCkpIMJ3TMmviWiJIsW3SuqpaeXJPJRgUzsIFy9Jz5eJ3Zw7R+zyrcHUIeTPpKQ7PQ9Orsgp5MsUlAifmy5l77d4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jtVT32zX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jtVT32zX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E53CEC2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 14:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716647662;
	bh=bO97nEITfcfDDzToyawc0kJq/U/GdgdWwAm+TjprRrU=;
	h=To:Subject:From:Date:From;
	b=jtVT32zXeD676Q+N6tgs/hHcdSg2ZR2LUI43+SdpOZRnM76g9LeM9PpnQhYs6OqpU
	 5jL9JQBdwp0tbcdXgBiRqyl1vGKMOnU3l/usCLv1FkcZld6AVPeOvZuedeNZ6cGuq5
	 gF6WJ2WuSpLywJmnN1KrdtrbwX7+jKjcxhxaaeDsWZ0e/iAvnKQJd57XRFgrpdnZiR
	 WKJAG3SmqXgTWCbpg0qzrl7rwMVztE3ONn443iYyviucDHdnnN8Q9BDM4vff5bklS5
	 XDS50ylsLxMnX1DI0NAilXV0g0d9G95CCkpDscepuoIsKA/lp2R5rdelFgfcoU7f/g
	 +m0kKM/NUuXmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8386C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 14:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171664766281.26694.3870941008449828468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27d0c3a479bf30dfbd9fd8ecde8f1117fc69dd6dd3d3eb0c612e92005d68a0dc
Date: Sat, 25 May 2024 14:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716647662
