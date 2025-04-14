Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410F41624E9
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744654194; cv=none; b=gX36oaoLdQAGmMEs/hEiev1u1rzvoNe1NbP4j/tuwpT1SNg0iC9fQa/TqrSljRTAf9eX+7zLDZsNtBBUZTd/vYCV8mBGfY0kaxHjv82D4cOvqcpN3oO6p3+0pZZhf8MdgCiFA0c6b2jQ4SHWkwxST5/YJ3OSKvxfSdi88zdwHfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744654194; c=relaxed/simple;
	bh=MBv5IyxlMlCpuKrc7DiJQn/5NxIVgMMNqBA6DhoJxFQ=;
	h=To:Subject:From:Message-Id:Date; b=ikelsfNos7NSnYQYbNg5rhMQteB3gTp4VsPD7C3ub/zy52Bmp1xWVpPtt5ChgQveEMrq2q7SFzVkDdDFWhFwzAJFbIKhcxGYMtFUSE3QP4R2ZUAQlWhctf9QLAhEnGJN5zEjF3QJY+438W5kt88HX3aqQp3IiGZ7qcIo6S4RFwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EnBCmNAP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EnBCmNAP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB3DDC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744654193;
	bh=MBv5IyxlMlCpuKrc7DiJQn/5NxIVgMMNqBA6DhoJxFQ=;
	h=To:Subject:From:Date:From;
	b=EnBCmNAP6fOtL86vOEGOjNJNp2aomHFo2MGWoaV772830uvON8Y8M/3jvc7e6T9Hm
	 wH7on7MlKf4LsGPDFtOZpjvGsb1AbsUFST8A3sUJXsYH48OVTo5JVWqwIAdq6kgH1+
	 6zqIv6ibWUcajyptSmK8xieheh+JR2KUFvQayj6yk+/LOJH8PZMKOrMmXCNjgKD0g9
	 31lJTr6AAxX9xaBNjWbAPJ75gByEJER1heXtYUfHjETEXVK7aP2SIJAOV48Y67sTow
	 QJKu+1eAf+av9zBSWoxbPdSXMJVua98kbP6OvbCMgaffXcqcIWmhEVv3jZbDB9UxxA
	 FmYOJBbAbTpfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E16C369A2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174465419359.14965.7748625550601450744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00ffc9aa32ba62f1355a3ff20a08575f04c0eb8ba37edb7bf3b1696b8ebd2e48
Date: Mon, 14 Apr 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744654193
