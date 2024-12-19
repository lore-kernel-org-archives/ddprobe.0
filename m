Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46400111A8
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734641754; cv=none; b=KFilIf97wz9ikK/I6BDl2EevVvdMb41nhwvbI92NCvueMgRsnoRCCAhIQ/ftkYv9G2L0scYbXy8hXJwzqzzpurVrW4p63RBQurJeiQzyI19MHjuT1Ct7IzWVEUbvtdJRtRKakYbDQka241q70PQD1WOzU+3kv7lt4fQQF/m5VsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734641754; c=relaxed/simple;
	bh=UeVo67a3CVdM9D6p0Kuj2HDDP12Ry3qooNNGzcD8i5g=;
	h=To:Subject:From:Message-Id:Date; b=mE3BmvZM0ox2dNgaP6QEN5cZ5LG5QLdRoY+cgAJ2/yzixnrV9jcN4zNPZDQxZ9/7Y3ALEV32cAf3BoTKfFk96XLcdLtHegDxlCQ+dlGodLKM3Y3oQobLOa2lkQs9AG+XK52PR1sbqQCxQ2swuHKvcusUegyb2+IPXAWvEzQK6oE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j+BbWX/1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j+BbWX/1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BABD2C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734641753;
	bh=UeVo67a3CVdM9D6p0Kuj2HDDP12Ry3qooNNGzcD8i5g=;
	h=To:Subject:From:Date:From;
	b=j+BbWX/1ti56Ir2WgJQEWXN8og6taKPthMBUiG0YcwxBAtQfQmBLe+oe3fJ91M/dX
	 WUBzYDpnUc1VDbhGdpEHtOovHTrK0GJr2YTAeEeQ57gbSzf8cJqZ4rGiWz0v4osz9y
	 IuSKltMZJ2ieUXfMghoHtjbD081mmFuPFyT/3UE694FNiAfZ2aYmvWZGepNdDeRPOD
	 tzH0qTapH6R7QhESJrRnFTbPGJZ1oY9T82Uft4wjESC2uRfxfscNv8LQ9PKvosZPNY
	 GOBhuvBHhTRIYE/cqDkvZ7ItVfNMoVD9naFn9sWvhf8y5MScDsaSElqms7TTWLJOtB
	 HyoMf9+HXjf0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2527E7718A
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173464175364.9915.1469626196282221931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04c6a3391ee70889b88ab568e53c9b4a1a03ef9085227d4cd9998b163953bf67
Date: Thu, 19 Dec 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734641753
