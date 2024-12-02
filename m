Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6E61DED48
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733178354; cv=none; b=AZfE/D1Y7xoiGnNKiktD79vLvnmHV1ExAf314r0b+zlAlKGwEdpvBXMFSaWSZly7h8efZY9GbEVQjUoIL+DVISdpzHXK6+o/mjFNg8HTqxxDKZos9sz0nokUsYQ6UYi6JA+Mx616q/wcdw6PB+wO7e8kDW7P2xGqHU1cVOknn6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733178354; c=relaxed/simple;
	bh=EmpINq0h2fjzpa5iFDXeQJj/9UdrWXjvF7AJ0Mugxqo=;
	h=To:Subject:From:Message-Id:Date; b=VE87/Tnbv4F1zUIZM/BtkjlrF1NZ/TFefPWJGubARIu9VhlVOTctwmmgT/uY16phnRZIrkaKQWJcRTuv0Cxvn18cxClihwTY60aNbSZHsP/ewMc0/sFfYHc/BnVCHgFln7hALJSgwzcWtG9rRfoWdYBIfk3AqAk4RBVvCi7lszY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DlNvondo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DlNvondo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7EAAC4CED1
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733178353;
	bh=EmpINq0h2fjzpa5iFDXeQJj/9UdrWXjvF7AJ0Mugxqo=;
	h=To:Subject:From:Date:From;
	b=DlNvondoamJHfwqxnhg8uCjD8no7DxXHdtmYLcoUkQNyhcVc/EKtOwoATpdrhG3St
	 g7Krjxo1WOXIChdDpccxTA2Xip6ER8hOb2uKFEE90n620V5rel6LSx8mYs/XppgLWD
	 tXm3gA6Xa2n1Z/Qqe5HkG0+WBbsW/VLmoiJ6VNcmPJvMPVnqOOFW9aQVbRiiddPbmK
	 2ibsqJAN768uNL+Fl812zlg555fkRRS0alhMGyWjakUZlzwTUaFPohPW+oQPYVmZEc
	 Soy5RO2wKOS4nrceEMDBykr0cpYGbpSnen9VCjEfEHHkgiGSLn8SephV2jB3oTZoM2
	 rl+OjPnkKDFJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A04BEE69E99
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173317835364.25209.5199347037358626942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68589257aa10fc8a35a1c1334dd120351e8a56821e3389188ae1f8670a90fac9
Date: Mon, 02 Dec 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733178353
