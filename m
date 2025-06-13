Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A75920010A
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749799194; cv=none; b=U0J+Rj1bLtqj5neA1voZSUQjfvXysp3Z69NBwH4ykWrU+J0R8VCnpScYftXbBAyMOnfocbZpWBB+chXVggOnWeRcTa2oNBwZE7PWHMd0vbq+nDaflyBJ7f3SgCojHLEEHlqKboou3u3TLqPaYuukQlWgrkUhFe19SlxQ1TsAi2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749799194; c=relaxed/simple;
	bh=7MtKCKQpv6n3KRt1IB6gQD9he5urS2vPpLBBSF7Pstw=;
	h=To:Subject:From:Message-Id:Date; b=t2toU4MjvOsv/Eq/GXrx49CrtN5RSQ4hWH07YE1JQi5/uI81lEDWfZicKnXjIihdLz88UCY5PbHObX5ZZrxCTS7PBagVLnjys6UrSiU+SYFbO1iJRtbJnThSDcy3tGmXkFqzARPhWVFYhI3w2obLXnGa/iq/942jQFymy0BTheI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IBWUajHq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IBWUajHq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8A7C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749799193;
	bh=7MtKCKQpv6n3KRt1IB6gQD9he5urS2vPpLBBSF7Pstw=;
	h=To:Subject:From:Date:From;
	b=IBWUajHqgByF4bwFXt2DE0yKb12S9oEKLwMrldO9Ixq05wfKfUbg/75+h/EzQShdm
	 xtM6AQh6U926ZPyOn90mp1FjKnxoPgGjc5kqjqR/8f31DFq9yqIRTfTp60ErlNoIJp
	 zuDrHOUk8KsujHY/yO2nGxED4o/hjVvZrowNkDcvY3kwOUTrwa32GGB5HE+/DWSriz
	 j5Aw/Z30KZAjtvtCyVk1orYw8MYv6L4JCI0+tlPz4aTEFhSXRn379ewRjX1dbnZa4M
	 +ZKxeI45FkLy87Xx8WYMzt85GPRUr3r2osLlM/Q7ex9WQk/RuK37vqJD0ylUL4pr8+
	 n7UbLxlUJC57A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4ACC61DB2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174979919357.28020.504654828000992698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11b1388ab178160bda8f1d52150ecc26de314e85d26a62e541cf6bc117db694a
Date: Fri, 13 Jun 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749799193
