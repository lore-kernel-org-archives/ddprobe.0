Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4350AAD24
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746155394; cv=none; b=teTr9TONWwxCPR3Ef+eg5m5u/dS6OQMQZuqJMWSB1aTqnEoOkBuEyZUux2djzfl4NXogJLDjzjA5C22jHaSdeNKBqCX7RiNZ1XoI1kpr9SAG4hQVRWvKgZLYXtBrbCRRzAzpcx0s7SHKywnVDMGcbT1dWlQmDmRSX5T85ASWrPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746155394; c=relaxed/simple;
	bh=6i5TruVSXc10tVg+SjhF/3SJTaXa5vdNMvPN0WLMRPg=;
	h=To:Subject:From:Message-Id:Date; b=FDvhgP/0OHuA/8SmPDSSq6yQpociRQiMVWfUleOUhPdc9ET/gTjnaWbWsJAVeebLJt4qQaUD+NBFU+thngj9Dq1h8/w1L+QV9CrkVMVpd0JgJg/YCfb96PQL8Il028vLvMcK1clpN7LEpqLw5CCdqPcMFTTJcFwMjE47iQqzNqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVCF9y15; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVCF9y15"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4907C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746155393;
	bh=6i5TruVSXc10tVg+SjhF/3SJTaXa5vdNMvPN0WLMRPg=;
	h=To:Subject:From:Date:From;
	b=aVCF9y15mE2TLUM9f641v4jKEOFlTKj+wm6tfnlB7VTjszEXCBACzekYyXDQQsMeF
	 91ixiTQ/U8U8bKgOx//y+pAeLZWJu9nRAX3w/QxlfIoBYgeq+45yPL8WRrmLejr+Qs
	 /5LsEAsUXL6W47ad8treBybtOPkxC6zLuGU4ESQxIJINwml93q4552/A940WMVr0Ua
	 9RhSOzCdYXVhB6BsXHse/9iIn+F+zv5D90inTnwr3P0zDoI+L3j6+KU9Cxr5hEkuiU
	 McVLp+om9OydlrHV5ZWLaHQxb4PeGML8ELSPc7uHVBwE1WI3PLBnTJenK2NnFwRA8u
	 0SZ+1cfYQ467w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92447C369DC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174615539357.2138.2630599653835817592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c061a7b91cc43b379b7e48518a3c351a5ae567ad3d54365ba8ad17875282e7e2
Date: Fri, 02 May 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746155393
