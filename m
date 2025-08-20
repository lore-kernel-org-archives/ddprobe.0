Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2034C3C17
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755650394; cv=none; b=pkT9j5Lk8XtZilPdeJWmXP23yeLvn9jN5SBGTtOwJhWeEvd5e4PzCRicpGe0dm0NJjsOilUWD9b0CJle0ZPvlb+FY8cT4smKghSHMw0sAtpfcYjMxVPW3i0qqASRjwNlJYPALshwMMvd1Ewg2fRSzAPlQ1LqOdO0Rwc6dtbEAZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755650394; c=relaxed/simple;
	bh=f9U2kch1hJqXFJShHe9mYtjnu3FfUl9PwHjkcZmMjC0=;
	h=To:Subject:From:Message-Id:Date; b=JcovjIPHWGka9+Bsi+Scbn5eYxqptyyrP5MV8ZPi1gegFeN7BPcocbGYdR5Zfke975DqBAllHAeDuJHQ3jHswn8/1MRoJRJnaX6ud2LuPahd43zc5uqq2IQAFyJRTJtJSBlpnmnXhxebAlTgSx9FKMIfBZTEnKfYCqow0kxWfBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ul7kphGH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ul7kphGH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A473EC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755650393;
	bh=f9U2kch1hJqXFJShHe9mYtjnu3FfUl9PwHjkcZmMjC0=;
	h=To:Subject:From:Date:From;
	b=Ul7kphGHuf1ZzqvPoXUlKwWVyJjbxsY1YHufmudoALt9wUmRDXCP770mQ+wzz5aGS
	 ZDvhQpeVEloTa4hsqZ8uFi/U/4Ceb6BaSG5FjoZeiN66o6y2IFSJWIQHOZYv0WIrG3
	 yUSCS9byaUpa9CDlsyesuJiD/OCe1Kut5skSpWGgsYSVpKpOPObia//vyIn7aIPreZ
	 M6LVmkjAnvtHYdIhbkfzgA0LKshgSzVQZxhLGCIOkqA0qhoR2OKbNo3vQknZFh4TRd
	 x32GuNONWrpis334ek0nMO0AfeqWbEh/0062OdBrop7A99K/YZ2HHGcRBE1w+ZGdgX
	 dFIoilMFnQgag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9259CCA0EE6
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175565039359.5891.12718145110902281712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b120c80241918765df3503ded71c8f83615168427aa2bc3d34b67da69d0b57ac
Date: Wed, 20 Aug 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755650393
