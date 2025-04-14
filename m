Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1A94689
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744606794; cv=none; b=o3QUcKgBJ0VjajkPB3oalv1Ur8t25b/Ey3KYW9fMLqPYHg7Lqty869xWorIypfzol9YWATBipR1deoFjfviXmscPZKQMVZ2g2zPxhJhwWeDPNYKh2RT2k0/Rtp6jwYF8YGyjJsO6Pqgx8+ihjEwn1BTYiJrRj2nyrZLf0KW9RmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744606794; c=relaxed/simple;
	bh=elC8HLdsolGV5bJPcHhaDc2+Wr0yRMHH7UZE6kKntJI=;
	h=To:Subject:From:Message-Id:Date; b=B531pyuv1ASWuh6jjOUSZeXyHM7DiT84wbpSkYbV0qHJPGNMjyiZ59v2eYyPt/zPKg1VbltQ1XswYhe3w1Eh46O4+8dCIFjiBJJxMGaC6ngk6TOLEdqUs9KgDN4MMWwQybBYIxUqg2BAEOj1Gq8J6919604f4rpNpb/DD+HNiCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n7mbzlvC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n7mbzlvC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B749DC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744606793;
	bh=elC8HLdsolGV5bJPcHhaDc2+Wr0yRMHH7UZE6kKntJI=;
	h=To:Subject:From:Date:From;
	b=n7mbzlvCYxzxz2C3lqxEYU8SfCir7xHk/bQ4hwHiWfl4HuSojOEdAoEjdfVsLA+H3
	 IlSkiQJ/dbhp82CucKSW+KKtVXa4QfObHo0lzO/vvcuvsk4MhC5/EgQhLXeXHIQOLt
	 0IHMIr3ca1t1adQ3iOUaROzatKpOXq19sdVK6xZdmOYyRafOlhvmdHAcMimRLwJItH
	 E9NPJqNmkTx9XvaVFWXsbi7A8Kemcd1xCOXthsg5icqe6TuPc/25QAW5C/JlML4Crj
	 QB6r+wTvVAS42hIXFRB4BM2D2MnjTSU9N63A3NC8ooUD8yaSTPpdTxez7yTV7T0SL4
	 ludzRfxBSHBOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A30B2C3601E
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174460679364.7582.15084645090793163329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95cd010a5d1c2a2b95fdfcd7ccfaf765cc498a5c16c07a3749cc7665023c1262
Date: Mon, 14 Apr 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744606793
