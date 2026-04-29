Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB775474F
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 21:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777498054; cv=none; b=dwryolYRtk3Ef1CVFvyI8nYeOCXENZSF44x97dCcSG9xv1g71Bgp/e7/+DU+tu7mO1x6UkeQx8q/8eTROPjvRBlkr++TJSmXuLXyg9mhNsti+RDY4sVvv93oboBXh/rbEMCvTwJPSUyLzIqT8+3es0ADamvqID3+6N/V92mq7lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777498054; c=relaxed/simple;
	bh=72ylGxMkV8o6gST7rOz3MIZoOX68ZKgrtG75Vkstf/Q=;
	h=To:Subject:From:Message-Id:Date; b=ClTF275cjcPayJy1fIrQ/HEacGjBV+dLlkzm7KTqcAY+l9TcSx31ihL36QrNeCu+bB5b2+krqg6mapVcZeqY8rYRMHdkScxfMELVHWLwVobxadpx/MaAQXHnhmzJoEgkJiwgODzpIt026bzHAX+Axr3aLIHJRgNQoxwSg0Inauc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jvnxt6Vk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jvnxt6Vk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0125C19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 21:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777498053;
	bh=72ylGxMkV8o6gST7rOz3MIZoOX68ZKgrtG75Vkstf/Q=;
	h=To:Subject:From:Date:From;
	b=jvnxt6VkiSdFjh7vOj/9frx6oPUd8fCZXExsZwnhtpniTa1DYNrxYKAMmXx1w8bBs
	 ygyAggsTkwPpz2LWNxBdWSJZ6/9+R4PpIyMvRMdnh4Cxe+gk3YjKykuCU+U9TOUNex
	 IsWW1BkIJOaYjiBn0/mE/yJqaDQxMHnE6xkeA0hZ2CivEKWW0nrEdsqI9KnVIrNhmv
	 79SMUxR8xgU8EANHeGNze08qpRVcaTRHizeWwz8UrS+GuFXE+gqtbbQ3zVtWr4Ank9
	 5WmaY9u0PS+YHTWT2tjXuAmLcaWpRNwkb5kYqtyHcLRUOH/IEBTQEKTQyLce9hrpdM
	 n1Vpg+ME9eFUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9BFFF8873
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 21:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177749805368.23790.10558563124629234374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a27111971fcd074ab522aa331868fffd0360266e4d5e39b0cad83170242e8d06
Date: Wed, 29 Apr 2026 21:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777498053
