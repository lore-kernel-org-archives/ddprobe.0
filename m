Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B191519B4
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753243794; cv=none; b=DmAQrzX4/pwbuGqIAazrz/BO/SOyBqLaRzwyNG4hnmhLJ9frcE8rpc2VyD+ym2RZqOwYyhl9mxXllTxIclqEa76D04bWDO2kvWctvA3djXQbyHPwdvx4pIJMiCBITYpDpzGbpvZr9ZrVMKF6Z0OHITQS+vf7b8y5ztjr9/HfBGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753243794; c=relaxed/simple;
	bh=w6twNXtgEKR7RJhFFf0GidtCmQJAG1XY4fVFYONumEE=;
	h=To:Subject:From:Message-Id:Date; b=EC2veeTTtayLV0uO0bsxAFLU5kKITXynVy73zG+kwCTkP0SZ+3iHxG/iylTmD1o1dsWZMJm6lzKFhnO8AG+XmsF19uHkrm+0qPUgveX9e6JFFOD7CS/E4ICLAx8nCF0Qzb9La1nCLVbqmx8pThBIwQsDmQlq/Lo26hj6O9NSTZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mcZXxSLB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mcZXxSLB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A16C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753243793;
	bh=w6twNXtgEKR7RJhFFf0GidtCmQJAG1XY4fVFYONumEE=;
	h=To:Subject:From:Date:From;
	b=mcZXxSLBPZwzEzf0ZqUTdytXPVcawhpdw/Dt+QT6C82a6D3U9k7bi6GgnpFIblh5N
	 eBSg7DrNdDsXZjL/tM7UV//pJHrXfw9Aty8gVNgzoPvZ/45PmWLojfsRXBkE6t92rb
	 ShmSxV3h9K7Eejzo/ccsW0mjSThNMmiDv5bkiZon6P2477f7r05zlbCQcumjhhvXH8
	 Gq1hUV++l0dk22Vk4sv+G+h01fVmGNMlLwdCWfw6wtUSjP3dclHEZX10qR6jtdA3G0
	 SUnaSpJMK2LKrpLqUW+HkiYZWSw7C2UPoyuMFhrBfZuDLJyjOFVHZm/YM1G/7wKzab
	 Nri6ETpGZsYwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E914C83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175324379357.14470.9356286413763237867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fede6203ccfc8ecd52c2ad0f0a71133f2c1915f6ff159fe1f8c453c9bbca9bb2
Date: Wed, 23 Jul 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753243793
