Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29612101EC
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722717954; cv=none; b=A1uKcpu0YQ2hHgcHh+ftOOJyytjfwVvjjlTBsL6b7+SWZcMfx+KGzS/h6+wXYPJPkPeDxetMy47uCEegq+W5lHLkknLe4+YpiM6Kcmz+X1X2t3Kryp5cOT7nLng/i9mj6eZfztjkfJHkZ4HHNIGHSk2d97Ok/DNb24yL57q7s04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722717954; c=relaxed/simple;
	bh=VfsYkNuuCAADTcXSZDLMrRPsIFD8U0VgWg4bnOrOXHQ=;
	h=To:Subject:From:Message-Id:Date; b=CeyVT//VjuNf+55LoqibBrVV+BEiHMzn1dlA7i01SN/RbH2NI8w1x9AcCc/NvK/dpsB+j23vKYjf3XS8qNWUovv97DHD4do5iGHFWlaokUorMeLfly8Mrc2W4OCLKeYHNFntTSWLbvFk5ollcyRc4oQzzsn679dgAtYLyIDXdCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=obsOdOkV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="obsOdOkV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BECC116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722717953;
	bh=VfsYkNuuCAADTcXSZDLMrRPsIFD8U0VgWg4bnOrOXHQ=;
	h=To:Subject:From:Date:From;
	b=obsOdOkV7jc5yILsSyb/Kmt5Kh4cJ4jhyHUGHGKCrfA5ovwG6DkRnLqgUsMweyZM8
	 ecTDMqqtiJrLMgxshYCY4OUP11yvhxRzhtCq62YnSNDZlyhrhQlZecRPh+XYKZWBTa
	 PLuUztYXaMvwPdtAF/oa5yf52RHOdL3t5550+cauVqjnfwncch7cYJ6TylBenTAYHo
	 H/1ZWOUwSCc/bSB6Bax4yWEx7enwgejETpi0//DxVMWPty0aSISN2uFOFXOFydvm4x
	 v90jK0JC2pxOfNnjMGmjn0gjk0MbEmM6IKwHg6buvkwisHuAEibW+Y2HC4CvI4uX7e
	 yzrkPPZ/rgHDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EBBC52D6F
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172271795359.17057.17439585432100250748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c31bec3f62b7ee1acc124ab6a16e1b6f10e89cea605dd1841b549e8fe5670f04
Date: Sat, 03 Aug 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722717953
