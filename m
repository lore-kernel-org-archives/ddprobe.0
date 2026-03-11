Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BBBE2DECBF
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773206094; cv=none; b=kcjSODEivaKWiewz5JMvYQi/FLBMc2xSg9ChvfPFg8Rdgj31r/cfUsRfQ8Ki4PF/R/OV7lpJ3GGjMolY5dtn7lIQLfD8gTarEsoF6OYgvE6Di1t+705c/YlzhSA0dUQaHbrEvuiMFAJANol24+H1BeGcXEGl5uhcOsQG9MdO4QI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773206094; c=relaxed/simple;
	bh=gJnIvyD0kGBNruVth8M/L9RUVYXpraAq5QMz5ujhqac=;
	h=To:Subject:From:Message-Id:Date; b=ucyUPWpKOFLNgwSvfrl4jfNhUgY6rSe5LNVXCFAErJGLy5t+opOt2cHxMPcuRUgc0UcuUJw5jZcp8IU4epbgX4EQXGsTGaWRmrOozLIoZSL+WhoQbxD1mojg9Oj0pejZh3x3KcDWoVFd3dFgC6X8DHqmIBUChClMmy23FsJ9vL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C7+daPws; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C7+daPws"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D464C2BC9E
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773206093;
	bh=gJnIvyD0kGBNruVth8M/L9RUVYXpraAq5QMz5ujhqac=;
	h=To:Subject:From:Date:From;
	b=C7+daPwsqFGUODx1arw5eKXPU8O8JAezjip+4FRV8dhmaTIbGge0MbIGn1yfQZpGs
	 F5e6RwzHLrxJWCLV+2Ct7PYws+v8d4+4QazE7Bq2A69aVkKDHV6mVs8QtruuKfQJ+C
	 dtNpGe8BwaRm207M3TkZcd+QlWaLuBLlWiVRC9xpHgdnWsu/YamIS+6/HF/NaWiQbZ
	 38iakWRb537JbRUD5IZbi7BNZHPwCfFCs7W9SKSkEGEsMa6cTk1XFl8WK60UEpV5Sx
	 XT76Tuh4AYl+aby0wfmkFepZzJnQXzuWpFbJuC/GZ1U3OjUrG1HW3zLPwKeP3s2a8G
	 RTbROVhk2i1ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F52FFCA19A
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177320609357.22538.9094113258948069743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf9f488b84beebac71ec61f26ee6f417e6040fd9971cc4c0abe434f069901490
Date: Wed, 11 Mar 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773206093
