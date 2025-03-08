Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7DF1A8403
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 19:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741460934; cv=none; b=fjKglUU8zol685xmfHtf02HwC2xY/Q3RAuKhz+U7aSXhfhvrWZjR3Oh2Se0ipOuS6ZGVm/JOzU+r8IldFaU2AeYXaZUjv4qxne5zcU3DoUMkk6jeUOTPVFwpWyZPMRLiHYRnUWTwVjEurhl2dvNOjOjfUrJJ/5JV6sgHazDwq4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741460934; c=relaxed/simple;
	bh=fCK2N/+6OJZpqo7MaLMS04MRYYn+jluuwCfSJVmDXVs=;
	h=To:Subject:From:Message-Id:Date; b=bXQ+aOaDZhmgPoNNm8qrQfDp9OFjUn2KJpsWp+WE//gtVlhK4SWtgP22RasIoRVxbUAvgEppKdv3hQqut4G5sfV2KHH9jaggofVMybxsQqUYe1mcQr8Wf0guLw4g5d14qXa4kNbOxoDAvEvjTx0KaqXeaeIo9V7kNlRBb9Js74g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g76ZgEJz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g76ZgEJz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2C7C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 19:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741460933;
	bh=fCK2N/+6OJZpqo7MaLMS04MRYYn+jluuwCfSJVmDXVs=;
	h=To:Subject:From:Date:From;
	b=g76ZgEJzHzM7Bdnr5CsueV2GkYKDGEp4Bc20rjew2T/omJ2JTC1QV/LLqIqD0szg4
	 VL8vp9aJZXJXKhIVH5P/Hrx4rQiRJZDVCChIfv8Rgpoe3pBRTFCZNRpGVu9rzTNQjU
	 RpicMZ/lKwjBhJzELIH9ocwuGlkG12doRagxHQdCSDx7pTI8EL1oeGa/yJxsSQydsM
	 NFfhmosefLvyZkIN08Ofr2xX7TmxaV1hjT94JUS/a+xIKkR1VqH1d2hm7b+OISO2Bp
	 aSLgsa+lrdFSxqQel76KFpAyIFpQZ2SEBi7tGMD2ONn52BJc8GSBYYxP28SzTZCqqj
	 uzZLu3EuvudBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95166C282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 19:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174146093360.27959.10274581102420875452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d8f8ba900afb1ca1fe5ff7c97f426642fc3e9daa13fbaa65a9e924a8f356a6a
Date: Sat, 08 Mar 2025 19:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741460933
