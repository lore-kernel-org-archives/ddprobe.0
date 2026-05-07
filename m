Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBE183EE1C4
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 17:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778176654; cv=none; b=Df3muYtZwdkKhEk84kxeZLhXKigIibDIde2+4GYPscgLlGbsNKu3t5FOAow5yR2LVxJoBs0YPKqYs5KdYfEkjznTd1K/3RENEM1swUTCyVQ581B6uMZmQb/0OScuHAOvEKzu0vywfaMUjSnuOCkzGNLL8YNTz1IijUPqcckoFgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778176654; c=relaxed/simple;
	bh=xu8M0Qn1sBO2FropGOURBRjeOmIMQ7woeWfnA1NWnSU=;
	h=To:Subject:From:Message-Id:Date; b=iKab+0Z1kCF6+lZ5icOLUJC2xae51UDYNg2+LLnKs39DH1md3qAtbhDypHHbNZlb/XoaAWncdPHa4r7YHVB6BV3G2pZVrnxPRMQabtVngHfwN86qy9EOPi4SbTj/AvMa3SWBLkqH+6XookisMA84hoy0d+oGm/m7G0RWN/ITgGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iZsPXnq7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iZsPXnq7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF177C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 17:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778176653;
	bh=xu8M0Qn1sBO2FropGOURBRjeOmIMQ7woeWfnA1NWnSU=;
	h=To:Subject:From:Date:From;
	b=iZsPXnq7W+GWucE9Z9lOluSbQcN46fD5rY9VxUScUgHeMND/7F2av3JMYXwXOAB7g
	 OklV/721CgEIBIjhwQzMDfa9iDuZitiDH/MslT1iaaOqtg7FUK4hBAiZYVBRLrnWMz
	 MpbWSGqnEXG/EgXwg4Ks3yLNUQxzcEFSZUmPCehwy1uwUifTWWJgtZeZ6QHFDQrgg7
	 HWw51eFuxXR7F26jo7c8ytazu93SJEzcoLDRUjHOGK0tahO6Fe2r+RU2SRCkDcDCPY
	 eJnVhFB/t77Q0hpWblMSnr02shioUqFhumbAcl4ajSp5sVhwrvz4sJIc6DVA18AVJq
	 NIHAtJhy2B00A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD63CD343F
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 17:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177817665369.2071.2301191574577181404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dda23e7ffd18d8afc867fb9a598a0394ba1b5011489bf93eab7f7705ba0d454
Date: Thu, 07 May 2026 17:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778176653
