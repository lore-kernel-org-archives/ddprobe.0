Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235F3DF71
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754078994; cv=none; b=cOLsjf/88rXxIwBZdA7+DkR+ZOJjrcTdJGjO0Gp2PItI4yFv1YSxPW0fAxousVzANGQB2HMrlwA4bekUdb4yCf3xmVmqhOzpyvEwtGGk0OSNF5we+PnNS/3VF5lwWyHDVGZzTVO8usTkOGF5cGZLUtRXO86sEzDvTtZScvutz6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754078994; c=relaxed/simple;
	bh=67qoZ0p7MHbl5cf23a4rc6OTGiBGzDxuT0xburnMJUM=;
	h=To:Subject:From:Message-Id:Date; b=g9Z14PaUQGrsNVQ2h+OkmCbBtA9N1AILLBHeh0id11EMQxM20gURf6KW6xCui1BmDlzRxxyF/tKrboL2RzZ31iaERICiBB02n5uk+oU6UDr+jiJ0JMJxMKKPsukEPBdLGTUWyZvCbm2u0VMrIQCDnT8GvRt3LfYspsJlbF4dv8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nzc3FeL0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nzc3FeL0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E2AC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754078993;
	bh=67qoZ0p7MHbl5cf23a4rc6OTGiBGzDxuT0xburnMJUM=;
	h=To:Subject:From:Date:From;
	b=Nzc3FeL0tDFPt394sOzjqjNTmgtHnZOVe28/8vfVCzGAYONlz+ezJhdeZSpkZy238
	 +9Gy7QiPioAS5mHLWFiqqrvxo4mv6TbxB9XX2vDqb70PXsGKisJEGMixIBp76AkEFK
	 4H/vXsABjqO/U5Bcm3qSkYfdNkI/Gj0exb7BvC6IeY7XOApoCzaBpK/LtPnTXHBKc7
	 xrHtjbL32tf5yeq2K4U4NvQLCsoYfUIXEdNRnmjMGyM+xtbnplxuw/2sQNKx/KvE6W
	 HiV2x+BOE+9ZB19nqhOsb6Rea9k6iaK99CO5wHgjHC9x2sJLlkxkc1fg4oelaMiTF7
	 3YqzZ5ur4DksA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953FEC87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175407899357.31659.6777628401358486001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5244e645caf17f1d5e831112e584008f10065a44912b525b7af9d17f634b4491
Date: Fri, 01 Aug 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754078993
