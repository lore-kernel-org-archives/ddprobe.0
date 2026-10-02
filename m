Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 639F147F786
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790937034; cv=none; b=geSDvnB8xOLv5z+2St7vxg++l3RSZ0N2z4Pf8pb423RIaqxqybzq/N0+NS95cZ2AVwdeQJxDf56yHYSFyMST+z44AVr++m3RrrzAZQ7CXDWs4QhxpWLxp+qcIgB04GX3QX7QdKswLsTkVZT4x6tOx+KFqRBjM9u7TTjl28Gmxl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790937034; c=relaxed/simple;
	bh=m/f5G1e7APOBuCfD5wzjF/NRFDsYOpK2ZQkKeDWmSqY=;
	h=To:Subject:From:Message-Id:Date; b=mD3UTEQIFw85biqeKeRS5YYOAp3K1VJ2WsQj1X53iXXL/IBRrKurfGpcfjdi+rRmhrEfFudfxs3yDgFkegrWnr1VLetxyF1urenDDwC8bguMhSL4fwjNxspAL4AZNugRrYHUxMzpRJ/gdh0Az9eBS38kDbM7J0RWeDq5t710WqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VgG7ELmh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VgG7ELmh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0127C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790937033;
	bh=m/f5G1e7APOBuCfD5wzjF/NRFDsYOpK2ZQkKeDWmSqY=;
	h=To:Subject:From:Date:From;
	b=VgG7ELmhqXbKcDWQGrRyjcmaxTUziU5sB9B7YRZyhZdF92Bwb7QLqOzLSfxMqBU44
	 1o8PQHSPqN83bHl8W1xM4AywT0XaWp5bHgt2F5gQai1swWc73uiNAQinvgYcHFIe78
	 8OilI2O6fB9qJ31M/X+bubj1KcPm+uKlw7fwPW7Vv8gKmyxl1NuKvxU8jLKxm+iV3A
	 fZTo5qyJj4b7Ijvi1FCze+K1hlkDJXecoaVM0P0359M0oMra5D9MOMze3RpVzyhfb3
	 by9y77aaNAQftQdEjhLrOH5HMfin+e6R7ZDslaqlpktHDCEUuV2+A/rpRnELI0BJgT
	 VCXUwI8KMjPVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FC1CA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179093703368.19184.10866968386061086626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 747a6114c7169283e742f663bf68d63a2c4c99c129b40bae8421bf746825fcfc
Date: Fri, 02 Oct 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790937033
