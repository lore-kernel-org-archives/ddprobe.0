Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFAC87428A
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 05:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707196697; cv=none; b=dMZ/qR+CDWcEvD+fsU8QG9jMUVmM/TdTnK3v2b7OiI0GFvp4zD9gXDsWl8jGbz8PPwyovXjyntyS4riDIMqCiZqz1Gmyzqo0rxDUid6sg8GpQNV+uU4ku1HE49BBkNKzWok2pVBLuhnwxA7++JmU7RZ03P1RG6YqTPhyPfNOM2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707196697; c=relaxed/simple;
	bh=3/HCcgnqnCh4f6NTZzU868KHX+yZkfWw1ls1b0JkCRc=;
	h=To:Subject:From:Message-Id:Date; b=UizyaItRj0EEq/anV7Ok5zFAOyxYE+nIjPS+qugIPDpqPtnPuTxjTkRcWKbmfaIkWny8FZxGdVngOxwyDJvMY69sZiMc0fB5aPageuszMX81dHcK8eSeaeYX1t+j2yOOtiDWzAfzZulf3ViTva3h96mmxyLx7GPbI306fPPZhxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LGJgKOfJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LGJgKOfJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8342DC433F1
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 05:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707196696;
	bh=3/HCcgnqnCh4f6NTZzU868KHX+yZkfWw1ls1b0JkCRc=;
	h=To:Subject:From:Date:From;
	b=LGJgKOfJJA9DTUnbpa7qLaXKJJY6qWd7zxBlbfdUZU2G/UJqPPX3CNK45l3n0ar7F
	 zFuq6mubnm3Fa2Sz6UFMoctvurBeWTRooRYVFH330fxIWBoUguEmGi9XBSo7qeyAdH
	 wBYLv+jR70TmyLB0kHLgqzZ8lEF+cHQlN451+hFIwo0iEMLhiNMBdGx2dMv9P6Wr5f
	 agnQOrLIsYONXwl0UfrcWnFfKgt4dOsNL9XNWQrViS3ws0Ul1F5a3cMw8/vO8ariAS
	 EoFH+eS1fOfOO4ZZvTlZzHSWOIvaUKO2/estKikT1w+qcVFhiRzI/Pf9pQ63ad4IZU
	 PkHZzHEQ7UqQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66303C48286
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 05:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170719669637.11555.8775668318577135564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c27be913bb40f12db70bf94fd31e627006979c3ee9a310dadc5b6e2117e021d
Date: Tue, 06 Feb 2024 05:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707196696
