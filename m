Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A7420A5D6
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750892995; cv=none; b=gD6RaNS300hVnoc0C+ixjji6rm8j8ifWnIScL5YLH4yXIXDOfi0IregFze0oqAvjrSe/YMxebSGLAX3PL5iop1cTYfqVK4iegHLrkPtqtbaYcUPBCpJKGjd0qZMKeEWCXWl0QyslQhFa663afQb/zreOa5f8O7coMCVXpCXLgic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750892995; c=relaxed/simple;
	bh=d+8rX06veiIazRREw32DwbiBFM1R9e6/GTcTVdrPDbc=;
	h=To:Subject:From:Message-Id:Date; b=osTLEO4MBh1KTFw++ygLJDVGdFRJPBDKA7zNDqkzbRrzvmouz4OKmaP1gshRUqwSFxYeB7uFFhKdY1roWuBmX8YKeKVQm6PEfwTXFbztr6AS0X1rYSmh7K0OEHy5iDd7NbM+CzDn6QyLoBemn1v4qJpouNmiSX2l/2OK2BWobUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vw62aoFx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vw62aoFx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D685C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750892993;
	bh=d+8rX06veiIazRREw32DwbiBFM1R9e6/GTcTVdrPDbc=;
	h=To:Subject:From:Date:From;
	b=Vw62aoFxE+OaL1fG9gKfVGzQ5iHc9QzF/jK8pxJTchpncSIyaXZszXkPNEJLbWWmM
	 Zv/3mAPDw7hZBSXXz56NCrc5yx4JyasJ9pp4l2yD/EqBp19w/Gb/YZO6eRJhYJx69A
	 DxAYl+1FufOFfL1bdbmQwS510Z+grz7xJAAqMYwJgJ3ERcZU1ylD3fFTyrTL3Htdp9
	 +6pjOsI5k0/AsAAFL+MFRdGRR2Wa0MjrUPdQpBMgfhC8gm6BsCzPz10M4KJi0Li7T2
	 HMXgvQ5WGNwiFekcuirwi9/rHY4VKN35MQHZ9bIOV1QrL1/ig8Kf31i0nEVfj+uKbA
	 SB+SLg2jaXo6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB1FC77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175089299357.6202.14577750324374689575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b05cd848b506c194d3e09cdbfe4e8305621934fa04f8804c9f4ce9b8ebe446e1
Date: Wed, 25 Jun 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750892993
