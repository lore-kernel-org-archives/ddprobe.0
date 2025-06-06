Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4834B7FD
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749195594; cv=none; b=BJ0l97nsuM8/U7vGbwz3keXJt2m36qlqta6Esl3J8wLiQ//RJb9HIpiZhMZtom4pC61P5dx9KG+U8SPmxXWT0bJ+mbYhQ+wS+y9XffZ02qYmWZo+eChkLOP2H6DGKYv4bZ9OSu/R3+5avyK7sZGv5czyQo3qTI43lwm6a6WV9n8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749195594; c=relaxed/simple;
	bh=p/Jes9yuZ9rpEY4ZEy/2eEJ843rlDCfLmocpuDvSWj4=;
	h=To:Subject:From:Message-Id:Date; b=nvxLVecXa925t/gj7ZHaaKHUfC8uxGdMv4gMUaCV3pNiFcdhsQsoGn7152G6gDNclZnLkcymrmo2ujZJyA9BXH80RlIoKNwNXWMNQqQrjDjWP/+eQ9Xl3Qv9rTKKr/b+cYh5SUYs/WlqhqKV+GjIwkVhPid08QgCCxPBjzBb02I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uu6LlOTn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uu6LlOTn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BE0C4CEF0
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749195593;
	bh=p/Jes9yuZ9rpEY4ZEy/2eEJ843rlDCfLmocpuDvSWj4=;
	h=To:Subject:From:Date:From;
	b=Uu6LlOTnwWSHmFtQa+ONA4FlahVDaY2Cjx/CzDIg46Vhy7+CcQJObYxWfK+Mi2I0E
	 cpqdNqylwC8IHk1Lbkfww7p5W5l2UzXCfa75azetgUGVJHkoHRRenE/Qv/TXjIlBjm
	 9VCQKABHbMltOY5oXwGvCKvdBXQT6B5paFxMYBp6B7tummdt9P1l+aAIKtsiBwksVF
	 AmsBkMxYcK9JL3nbPvwFfkH0mdbIzaLwhagprpSvP5r/BdG7FgEdIOEidStnahFuYk
	 mWWOOV45MT7UsQAkfLn0OQSojI+sZJmVCLm8V6UzYQaabNIepjHVcdyJ8cwicnQ8eS
	 4G3eqa9VdtIfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946BFC5B549
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174919559360.24603.17901622680715180443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57d0234016ea8bb4b1957249834c8ccba52ba64ed36c3ca8d4bb24a5e889ffa6
Date: Fri, 06 Jun 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749195593
