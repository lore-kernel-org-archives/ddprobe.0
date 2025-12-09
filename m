Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A7D928B4FE
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 15:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765293174; cv=none; b=QmG/1HtabtfS9Ti8HyZDHX5q5PL/Axq7qq1qSuuhMUYjGiLVxvz//wgdd8QAAIzAMGuS1Y6bTtz6U7yI4GObzb0lW9xalX0c1p9iiG+q7FnLniIQX0CSjL68SWElFnZodVa2JmdbLiN9rc/nurDHFaNUMrCgyTbp4VC4KD6XwKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765293174; c=relaxed/simple;
	bh=eMpBIA5eHpeaE6u+5OW2Hc4tosdgcqBcM6H5DPjevhk=;
	h=To:Subject:From:Message-Id:Date; b=IMskpOnyQdD7JF7rPcmeEA93L0N6usrIefa+ig03XVrNPTd1WiSHEOyIMe88+Ns6ysw71M0gs8PxvRG83rb6N8XQQAEbs/E1CRmcVbXXOMvo9H+/WcCR7MfvqssuYSyX8jzzSfOPKzbQ0E7iR9+gJ0kbfWnI21NzvYVyue0sFmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OSP9jwPy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OSP9jwPy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E726C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 15:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765293173;
	bh=eMpBIA5eHpeaE6u+5OW2Hc4tosdgcqBcM6H5DPjevhk=;
	h=To:Subject:From:Date:From;
	b=OSP9jwPy9Zp7sysax+L+DUPiLhfK48gjMd2EW5KcvxTTNXZzkdu0E9prUJ6zM+jhq
	 os9hUZmDkV3pfDYyrim/toPxaOfMUWCCEbrnn3saLKd5wl1PCvlwGRX0wugGDrTQa6
	 HzLGuTG+CkGUTE2ny8DUr3Bjp7MwN9rG4qERYZRGJKM7q9S/cC3hLP8ZvPqoU2UqXT
	 w8pHW1SSfdR971DcoWzYb9FCjlbNfq+b8gLiUHG287EslK2dv0UeShJLQ0tu1TDrpu
	 JwyFjC3gpyzrZWFgezWHnh1L8ABPSlOX5nLdS7Gb4WcS1ejVpX/10qEYC3PBBTRuy2
	 ZNg8N6IGbPooQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9069AD1CDC6
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 15:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176529317358.8205.9387574838104255890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8d90715a44f614b86a9bcd8ee030722ed551f232efa1e0770bbfb681c0cf5cc
Date: Tue, 09 Dec 2025 15:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765293173
