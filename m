Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B5A17C69
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768869234; cv=none; b=dfr7udQCZxX7Vu8LxFWxCwqiVhGJYmmt25e7zxAx384M+6/8f59GGVPde3nEHRSXplyt24SJApOL2bH72rHgqqKBSfdPzqRdCAI75SD7WFSmHA1S37LazGnO7s3khbnuuSIIg313D2G7qMm7dduongizsBsVgjfLn8ulD54Yjg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768869234; c=relaxed/simple;
	bh=XKUUyqr3fUHbQ+1R/5MhwsI2Y50e6FST05dw04Qp2l4=;
	h=To:Subject:From:Message-Id:Date; b=c2H8yTR4PXt3nYtxUkGJSTxDcknNp2/tkb0A2kXCmxNg/BoZLISr5ctEPCpiHvrJE7kfAuY3T35Qsf4UN81H7Z+2Oz19n0BXixoV/PkIGU/QVFu2WF9Ss/be3aNeBlyEQFSnPGsQpF0qyDXNMDPS2Ye8tr7HkJBqC3zZ+tKrJTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ut/3vs88; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ut/3vs88"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19E9C116C6
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768869233;
	bh=XKUUyqr3fUHbQ+1R/5MhwsI2Y50e6FST05dw04Qp2l4=;
	h=To:Subject:From:Date:From;
	b=ut/3vs881YTTYidY6l/X9ti0xwwua2y4FW7cMDvki0JVyLNBSl8XZrFFRz5JF3rs/
	 Bc4h9XkcfGs/oQ3pUyiwYudihmfnbm1ZhBSmRZoiCr00olQVTYn2hkefyG+ppu7zLj
	 OH1yL/IfWnulQ3raUe2t4FgtaeXKbDixo8p+d4nXdj+tV2AQlC3M9J0If9sEtdrV7P
	 XYXLIUOx+ulFfXerl4Zb1P14PpPJlxdWb21gxIazH9P0soWYWrA9cSPW7r72dhqtN7
	 0T7OO0O2OqdHsu4T85Di/213hcFNbCisrlpX7k64zwBtkizriNOiy05PZcGwa51DqS
	 7SrJXOVSpRseQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBFAD2ECF8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176886923358.15011.17177047517375391464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84573327441da7d3c37bcd7068f532474e7f647b7fba65ea559472f63c7b0e3b
Date: Tue, 20 Jan 2026 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768869233
