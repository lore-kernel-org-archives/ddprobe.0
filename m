Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2491581E5
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724406954; cv=none; b=bv7tex4q/k6Jo9fNYQa3ikV5LDHS/66FQSf39MR5jI+OVZTinQN2EB1hDAB638SmnXw1pYoTrzZBhKkxTU711kBx3eWZSE83hmYfzpBIc6LfSos1AL+WWHBaYsKU2UL3TATBfOka65WoF9kCWnCTTqGaFWj5AJr8QI6edd3zWls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724406954; c=relaxed/simple;
	bh=he8/09u7t3yb9UfgxkjSC9FospKnYTP76FpmN75NNSU=;
	h=To:Subject:From:Message-Id:Date; b=ONd1fzwzX12OCai1XDI9I+PQbdMOe5KXK64SAQ7Rx+6Ib8aooKiIFCRueMMMs4BFnPtax7k/dHnjURYA58OroHKYeBA2r/LuICE/CGEUvGEhikOp5lTaLOnricpTD3pdW/axKRHB/x9DtdaIDo5b05EI1Cy9uqoEs0dhIDoDLKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RP46IJqT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RP46IJqT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1220C32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724406953;
	bh=he8/09u7t3yb9UfgxkjSC9FospKnYTP76FpmN75NNSU=;
	h=To:Subject:From:Date:From;
	b=RP46IJqT5oMgMBFJD6K1ZDQy622Bx1TTpgsZDr2iipgerQIgO4xlB3XBi2cyPV49z
	 ti648Wf7lhzZvBDfz1s1V8eHqCXalLS8o3314xAmO93/NSh1HnekxZtuo7Z8+7o/Y1
	 XDzMk8kV2bZOij3z2UDKxV1GrrelbMrVw995eByKNP6hkULnBA0/rVp9b8C8Fvbsz0
	 rt1Rmwk1S6/Tc/Lz8vc4eA1KIM1XQUhKkQnByaM9zWFpOjBp8xhlZoZKELQjKjr3AD
	 jq3vu73gcIMKkh0X5bC2IrqYGWGCdGjW4UfRBm1OWpfFhiD2qDSdkkwd2ERTLmTAet
	 vc2BElLCVlQiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EF0DC531DC
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172440695363.22165.16899233548465378234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec1ae6a8faf5c5ba0cea0055a9d95ea5364d876aa5e40e4781cffc02e1274a4e
Date: Fri, 23 Aug 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724406953
