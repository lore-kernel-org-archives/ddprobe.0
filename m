Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3297F223DEF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761401994; cv=none; b=ozrFpxr5BXaYVa2B0SH/yEbDgOcWhHWYj0mPAqZUnVEpD1ntNgMjmf5T17fPMkZ6GbYPWki4RbWsntvjstBhDl789PEnXtWvf/Wy8BjBtgO412G/Q6YlVC6tBePJ479x40ormK23LElzb5y49jnIKkYAdIo5OJOWFsg17iJM0TQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761401994; c=relaxed/simple;
	bh=9hb9hhcTRbgH9Vg1HdVDXZyvxmSXZIO/gADapCtr+no=;
	h=To:Subject:From:Message-Id:Date; b=M5hYXnpsDE+ouyXuigctCGpTB++8xTSRziYxPtPHF+ZJB1yHP87MnMq+EcLRjgWiGsm+2wk4f1bCbfZ53glmYmxhG2vJfoOMgPv8IwgXs6UlKWnGMbXJVYPBMIA3xMQF6slcapLDnIVzo5W9gt4nmfch+JaSICC3/+UW3+CDGfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FEUdrXzz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FEUdrXzz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82B8C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761401993;
	bh=9hb9hhcTRbgH9Vg1HdVDXZyvxmSXZIO/gADapCtr+no=;
	h=To:Subject:From:Date:From;
	b=FEUdrXzzeCv/316hcEckSYAPxwukAVTj/YN5J//lH8UUwH5qTnst8yaTETijMxo0G
	 JK1u3r4NJot4Mce8QWXNXh6nHHG9uzKNAw6jTcyIkP5IeyTjxqOh1p9AXDtP3wJfRX
	 Sv8VofMTs3F/U6Dr0+1H5ig0rRikWxhi6QAYw5BVJOTU+H31Icyo6jWmY5uzJMTIgO
	 81lGXVYXP8oLWNkE1GdAo5NVs62CM5hJqN8UeUvPutgUhp162cUCEJjorO9TetubJC
	 KGdidI5GYoIrKM/iyZRtglU05gj+Sg+n7oVyngVOIzGVikcJWptPJLc6JE87LEndT5
	 BRx6tJi0kG/1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9664FCCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176140199358.16466.9103160751844379299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 826dd0e386f0926af269efb108057a16b5ff1a87f71c855566f8082bced43ec4
Date: Sat, 25 Oct 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761401993
