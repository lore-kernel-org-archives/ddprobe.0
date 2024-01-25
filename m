Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 087E7111A2
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 23:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706224097; cv=none; b=Eh844CdysCZ3hNhLCx+P/XENrqeU44Jir/KHAvPFtdC4IBqTcJmRVpw4SmZIBN376/dthHnMZlWrE3xJFBtlQ1rsbRb1CxO4XYkPdPirmUBve2OwLkQYc12cuS1L/150PCgko+c6aA5Ris8nSXTIc6SPIntb/nssTl2ADDS4ePA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706224097; c=relaxed/simple;
	bh=spqfN1eQr6UL+fnSugZyRBMfz2Ie5Pui4J+se7eOL/M=;
	h=To:Subject:From:Message-Id:Date; b=F1bCCr6y1SDPXlKpPSQA/S0cYUILjolAJw0s+wjgVxfrKAw5XryTKuGZfnjFScdzLcCfqFAlhPNjbaxgGlTHsQDZaNri2tHk+RLZyZ2GLdrs+xfUd1IZu0LYQrMU858KBLZXxG6UposUhhxTUSsgStF/S/f7VD08IeXVLSIO4Dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PHwOpSuc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PHwOpSuc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CBA0C433C7
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 23:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706224096;
	bh=spqfN1eQr6UL+fnSugZyRBMfz2Ie5Pui4J+se7eOL/M=;
	h=To:Subject:From:Date:From;
	b=PHwOpSucm+yLE/NryPyPIn2QcmVE+SeiucB7Zep9hwBlLDwsm74iKDCOG70y1yow/
	 Ms7bw80RvzUP3kW/DuHmPsxyeOLp65l4veDhwJwJ+g8gyeh57uwVlh/sVJTqsI0SOQ
	 GTf+qzo4StuxPkrJdEPR3DKYV6F3OdRK1JZDq/mOlvLWR+EYLHZodu/oRnNV3C7NGb
	 iHwnXwFsayjdj7MlidPYUKeJrEMddN5/CqjR6750Zm4qweRiaB5q+nIX8KbjmRp6vf
	 kHOxmmZYuNTlOh1YXWUZBw6RmuF35wCRy0DLYeik1xOl6MBuSpoJu7m0RU4eKDaSU/
	 DjQsQTcYl33Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FA95C47258
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 23:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170622409637.15826.3457684506343612997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41d5c882bed24038391acf65c9f7c500dc28e17b3140578fe5219bcc842152d4
Date: Thu, 25 Jan 2024 23:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706224096
