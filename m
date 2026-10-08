Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68E90547065
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791433834; cv=none; b=nVdEPFgXNZigWytmbVwXsT+9zuKrNPbREZyQ2lmf/0SFsVNtR6aCsRKeMPZZqHsNCUdXD5xntW382qq18aXQAdLF6iCJp4f9yQ69aBAQepO8NxkHXCpPI9w9b19aXmEq+kASsVFAdqhxZjq2D6CBdersmRv8PERE31Ydqj4sSz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791433834; c=relaxed/simple;
	bh=ph16bVZXgg5UoqsS3ClPLCsMPdbevFwAOOkVuKXs/68=;
	h=To:Subject:From:Message-Id:Date; b=hjCFQqkxcc0FWIlJgfDnpn8ml3eFtMeN0cmDwL7IkMy8P3G8vG1OV/ii429Pr7wD5yQldyVFp+mOrUr5SdBVW2voC8KbM0QEW5FFzaxxV4HsJJpAcQQpwCm9/v2PgLZ5UFiqOh1hxAHpjGSiCqy0UQS0u7TLSwIa0EFWe6CrBMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4eG2iEE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4eG2iEE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5ED5C2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791433833;
	bh=ph16bVZXgg5UoqsS3ClPLCsMPdbevFwAOOkVuKXs/68=;
	h=To:Subject:From:Date:From;
	b=I4eG2iEEgciW1y+Q6TIbqT0G3ug0XRdk88FdMyoK8p7WMubaxPkx/WmCzD/yvKkbC
	 TVAW9ERcpv2Q5eWuVFEghkfhr+g8tf/QY7VjFx7X4n/tpIS9lsC+M691VGhEvxe+se
	 j8JUPx1uXapvuiRNpV4cTSodnmpjb6Yek7YG2niHwI6BboNoUBaPjbeH+BsQrKzCHf
	 RUQnGeqvywd8PfFGS94VWQwPqW0Rzex9vyzsimP6XbUoD7Dv49q1PO330VGPgXqR50
	 SdLMKSbL1VpRWSDMHtgtc3qBGoGDLtQQjGdNHtv7+lpyTJW/bqRnsCcYtTTz0zFw51
	 JCWb0nWmhOp+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBBBECA6002
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179143383375.9847.12583887718220241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 412d6e5b33ffc4ae9ca80c8c14564f1481c481c01799bc34f23d3e9621441614
Date: Thu, 08 Oct 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791433833
