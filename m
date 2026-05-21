Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4468B32D7FA
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 07:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779348634; cv=none; b=Zn9lgp4yQs91GQuOQNioYsSdbG4JiHCYyy7iYGrhgxX0mWnHZUQrKstxGUCk0agwVTOHdPaqZFNqACbm/Mu/iE6BNkzGBtrjfnE0rDJN5GBIQAyZs0pUzSiJiWby//U6cmQC7WpUy848ha5c8ldPl69WASTuUaPkFVJIVvUc220=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779348634; c=relaxed/simple;
	bh=gxMGt8bdI0j3LUBf4/Quhzjyjp/ppnXdiW8OqXiL2yU=;
	h=To:Subject:From:Message-Id:Date; b=maDh7KXluy0oBIIHnEzb/gwxOkgsxQevuRVctE581GUJGMUwLcQIawvV3/OP2i8U3E9N8+8EAK5FmpupfRH8DOGklpfrhlr6uBU35WZepNDZQ0SJXejJ2Ml4ou1SfzbIVBjdQk2ScMX1Lrb3u+p++lJjnau6SCGzueD1IQgqcfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TlnceHhs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TlnceHhs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7B0C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779348633;
	bh=gxMGt8bdI0j3LUBf4/Quhzjyjp/ppnXdiW8OqXiL2yU=;
	h=To:Subject:From:Date:From;
	b=TlnceHhsRmMheWnBX+lSuvvvezfliMsgwt593ckIJAgVqZ/AF9cocH5dXdcjgAYXf
	 x3LRjXlN5RveN0rni32v5NwRMei7usCXatP9k72dGpq9gc9FiYUsJoYWjCYTHb0TO2
	 VrjIM7I/52iCbdYDB7WhXV3bfAbysLD9XWMV/344ipWjH3JBdKV8xyHre4XLniPzp3
	 jsXzKgmVINvtiRVmglhPC5f5bGMtrrRY1OLJ5irnB6cITECfyjo88LMJp5QnCW8z2Y
	 8n2n0nUBt8VgEbxz2vwrTLoshSQleFhXW3K4X5LkUdp+dCTUMyRFF+zcQCuXWYrieY
	 FsMIjPcK7OFuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE622CD343F
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177934863370.28998.15304644963721064638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 407a406e0b6dce44287f1f586aa7185b81097e21ebae2bfffa0c8b9d97169852
Date: Thu, 21 May 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779348633
