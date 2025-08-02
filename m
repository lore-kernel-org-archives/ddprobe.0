Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E231C695
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754096394; cv=none; b=VKdAPHy2AWYiOrzjkvhbz5UEyJFWcN8tO//v6/EIdQ73fS25kdATay4xNJSxlHNeOeTNEOF+scnb8GCxX8VS88rFWK8THnE4k4WE4/MXJl3fN/4D0MllcPedud0KDLG+JlGntVPCEDBiuiP1EYOSi+3mPIE6nII+PmMFcQRAFbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754096394; c=relaxed/simple;
	bh=uaZ4m+wo8o1qAEXCzcUOuQPp95NURtb8rXlmLtaGcho=;
	h=To:Subject:From:Message-Id:Date; b=Wzs74xlmM8k8E3r+AmEGei82npXYektnusZhi46ecD3ncFVlfSD+4aPDEiTQq+eRdZq1YT/pw4WkCcD5m04YVsCF2S9NYs80ypmQCp2c1OuJ3wcLIrPM7R/esLXxiYHSt7jCzhnvOaNrQ/k2yP1o+SWYxdR9ah5L2gmetizIAHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jv7KrX7s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jv7KrX7s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67BBC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754096393;
	bh=uaZ4m+wo8o1qAEXCzcUOuQPp95NURtb8rXlmLtaGcho=;
	h=To:Subject:From:Date:From;
	b=jv7KrX7sMgOAouH3S0hMk3JHIGAqk81LdHFasSmpbkIBwxlwceODe20lUn6Kj/phi
	 htPmn9nAxC7o9XkJNREQB40dG28A21/vYjVHTyeAieXHrJLZhC6gZ8y/jwWZYOx5a1
	 XlHuH+1niWeXU358oiRIOZhnsIXCVBg+LtlWbt1/6nGhFFNS10dhQK5TIr22k4p5n3
	 ByQINmgd5Mm9IXQk/GocE0Q7Ymy+OdM0nTRsUF2fOFK10yLsJ4/YUJ60LVFqInd8VZ
	 Ytm44QPO7snkU6Q50iK85qxY3mjr99ylaIKyiNX+fzMk2xDmbySrouy2Y6mCNOv/DI
	 Z/94LIIWz2IHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E42C87FCA
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175409639357.22832.14717852935232435397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccfe001316de052830ddd36547e32ec5f33abe4c6ab08386f2b4044be5f84078
Date: Sat, 02 Aug 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754096393
