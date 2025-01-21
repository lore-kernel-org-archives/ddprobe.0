Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E068F2581
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737422154; cv=none; b=PQ39CrAJPvD5HUc9c/O43dxqX4HdaWX4Yh8wnTnMijCYKLsvc8jQrIWuci8GsfG01iO+WMq8/HwzAm8+y1C0ZBJyZr+tkvTLdKKJBcBITyMh5zzB4M2LD/0K9VXgvjEZ4CNAy/EHV5VX6M9k7qYDtHd68OjwZPApFQIsJBMUAWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737422154; c=relaxed/simple;
	bh=lD2n73ZEaB2AHtelpjYhLVfplT+eTyePF1fLwisob9o=;
	h=To:Subject:From:Message-Id:Date; b=sDSuoYqF4zRWbPrTAwpHVK68EcmHIWNaBBD+JzJ1RYInBAlkxxqk6TAAJHFcXn1gVNfwpJlfvdNrjPad1JeeLJQqEZOJIbZBmic9/YeuhH130HkQnh9wkG5nzb0srDvuIrLnt9oP3YJjkl1FXFywmjZpEl5vZ9vdDhOWvgWyUm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P5X50J+/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P5X50J+/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB0CC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737422153;
	bh=lD2n73ZEaB2AHtelpjYhLVfplT+eTyePF1fLwisob9o=;
	h=To:Subject:From:Date:From;
	b=P5X50J+/i3O3HwEvpERYqvELGUNUV3wBcrhJ2qJlTt5ymv1qWjOwX/PzosTNcen2e
	 5UGp/imocNkFIC9jAIi+0p5ncGON4/XU+VC5oG27k4OPAuk/oX0a+cvAXxs39P1kln
	 HTOlkSJ8fIQGqD4TbZqXrUBrct0txNTF72YNL84+XL0o/weFYPcbmlepnUvAK3nlHt
	 ZDUkVd72gqjNX1JOPuuldGXLVEC82b65PIQJ9D7TZmLrdAaP9pE5j7xPxmKk9s7nYb
	 VuUCLSYP69AiyTSVzCy4HgMOVVVG3Ggjv4HxCm10rR1dubK6zwsXnEa60MpcmrBdU1
	 8qymXSWeFj0SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96389C02181
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173742215360.17169.9792596341298151333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8a85ac9d8cf9c4367821e6c25b97e0c214a65cccdc80b1e98de65bb3824fb01
Date: Tue, 21 Jan 2025 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737422153
