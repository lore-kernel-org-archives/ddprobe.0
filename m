Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412731C84A5
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750981195; cv=none; b=CD09iEPLP22Y08FuMJBmJyG/U+3cjMBYRL4xpp+B5yw30VkcFFSschyjwhGtrgdlZ7Lyp/xvoWX9Tuwt9k4mGuhXHe8cPWLt7gDbbDhLXXjblO2miugwkgocpkCzAf8Jflbx+bUsjQos8o6yUcg5IRsKlHae+wONvx4eLlEwjyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750981195; c=relaxed/simple;
	bh=tPO745Pw61oI0tJI46sgxvv4fEIMViIhQ8eu1vh19Yw=;
	h=To:Subject:From:Message-Id:Date; b=XCW30mlFYHlqMM9haALcp16PxeKV6n9D24wFCMppzd5DmRyG4XGoEnZkLQXIuXVrpYa2gaoHZ06GluWetvGpbGkKINKAHDfQSOPI46EL5jEdX0ee6/i6Ktvyn+i5b+OTDP69RSqYlJ8Ln2t4lbuTWNABK7bYoBTV6W3zyQsExPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FW9DiCX3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FW9DiCX3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B81C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750981193;
	bh=tPO745Pw61oI0tJI46sgxvv4fEIMViIhQ8eu1vh19Yw=;
	h=To:Subject:From:Date:From;
	b=FW9DiCX3Hz1rS+/GISpucDBtnUBtxGXHBSRxmwJhMOStvsazyjYOYtu5VnDG65KZw
	 thc7uRrMJrAzCvrBpuCOlZK/dncsE/hYVR5BlstwkL3q94IShiQ1S/HFFiIhwxlnqk
	 xDwhj5J0fRR5kGkwt0vFtTIleadmglo3NyX/qhxpzqsvIauTOfTzNkCvOuJpP7U4N0
	 DC2jXCbCve7heLjsoxkK9cnwjoKImqM5W1p4SPZvDQkzclnUbbcJOPmhrYAiz4OGG7
	 8t0CQ/WGjCrxmQWKyDhk1nYe74sFuhyoNQq0ITEoCzbA1AE9B/v7AvwZToZB134wud
	 FV9BXZ/QWalbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A2E0C7EE32
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175098119362.11800.13036140757095279931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 018c7505df1934cc773bd181a7e3d1a35cd0ce058ea582d14cb414aa80d93c18
Date: Thu, 26 Jun 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750981193
