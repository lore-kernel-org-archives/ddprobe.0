Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7FA272E54
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752160194; cv=none; b=IIumDErabkdm/13sy9317hn98OWI727Ow69Eu0CkQD/+k/56QWaWeCQVI3nzrLQ35I++ouhjK72UdWEvP4+Nqsk2HgdOgGiSla048HMRbomZ86fXSKctOVvMToNxmqcmuDOo4fMcK7c4CnJv3eENF7vcRld3yDLb48hdSrXTB9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752160194; c=relaxed/simple;
	bh=wMHX2JvltU2KPZzA+DpIlmellRHJVVj5R7lQ2fJjs9s=;
	h=To:Subject:From:Message-Id:Date; b=jb3y7kkHU+LH69bko/YAmpHZ2jYVLwnbx0UNQNQ4ZoB7ahawYaxI5Yk96XnJ6ZhQEqjdOFwTLkhJTC0rRKusCGSG7xmHI2hapDhRE2zsWGA2qqQZLoJpV2c7j1njFljUh0Pp1nAVfYysAySCp3K6V3ZbcxlfRvvO0X1X4krjSR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PvZhZoAK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PvZhZoAK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE66C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752160193;
	bh=wMHX2JvltU2KPZzA+DpIlmellRHJVVj5R7lQ2fJjs9s=;
	h=To:Subject:From:Date:From;
	b=PvZhZoAKGrJrfiI6+ywSKVyz6s1mMnYd9s3jxSaMOUDMx7N4mFu2PA963hiHI8KTP
	 gAdCvdsm9qnkGWqSnLvu9hu6nm+l1jJLsbuVCQo0YYnknABQS4a2OSYnSIxgU0tYgp
	 T1ubxVbnls72V6GAfrXahfSfsIVby2/eLCeNl6HHgWyYUULdqclR9ZGg2BtoDsamA7
	 RKtdxCPypFjUQ9fZGwebeARfI2wAxnRGBiew2xECuO26ThZrdIFK45xoiYT2eLfjAW
	 V/rZJ8bQv3XUgyh/yc7crGDLQ37vwsH6g7lqvJuXrl0xPBmHHCIPiCuAW6E1bfHVxn
	 qnZ/jKU8L5faw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C72DC83F1B
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175216019362.32723.3954686038511687713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eeaf7773f93d94b9b9ba27e83fd9827ec0a0717873351b7ad4e930ecf64f8bd
Date: Thu, 10 Jul 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752160193
