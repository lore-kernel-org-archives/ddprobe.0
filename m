Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C853311C31
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768965234; cv=none; b=hBS/G+h3YB4iSGeKjmFV6rLuObkg3PU/ckR4c0sj567UB9BSn8uc1gOl9kxSX+zwG7CZZG5M3MzopCdqzxLQI7yG+/GLRKD46WgvRdkKk77zvEVfq3FvXBQr6nzvot6bw6ShrAdvS2uGSZYOPmrNQoJM/yQ0fyzNeCIuQMLxlnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768965234; c=relaxed/simple;
	bh=l9M1IQN92tokfjkPLxkjdh7aaPc+LnGKS3KqkAsSOrM=;
	h=To:Subject:From:Message-Id:Date; b=F7rVRCvg4byLq8s7+ydlh3+clnTnvfs+k32dmdAaG6DML3MQ/88+w0fYcfQGs9S+J1A+wPrZpBYpvaIdPlqlWIHQCKl0zsn4OVMbhsBPiamL0KMdyoXPECxobejEvUrQOlLmxhcU6C2ziiRQvvWtXQWU3abP6zddbf8UiNx7cvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p8j3j/9e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8j3j/9e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B3EC16AAE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768965233;
	bh=l9M1IQN92tokfjkPLxkjdh7aaPc+LnGKS3KqkAsSOrM=;
	h=To:Subject:From:Date:From;
	b=p8j3j/9e6xqWNKX+Z/b4phpeZI5N3ahGGVlqE3xnIY4jEcQd44kUaak4HepTrJamu
	 HTtCvlzpdeuatYkaDxYrYd7jdKyVrd8/2TMr7q0lI2QvIQRmkDHR8G54ihC4qJC1HM
	 zwubJyLZfEBjQ/o8ngDERzcTcQBaAze8jQLhdDRStyE4riDJg5KErnL/ukGV13JwVa
	 fQ7Xz/a4oI7eFtt7YDWrjDzVGgEFlveV+O6bDZepsadTjQfyi/qZzuY5rfC6beo9Pq
	 4ujz7bmUpgxHW0Xz6NoMgTeK/SZO6WItrKA0cc5N9drlyXSoaX/FRm89qI00aClJbx
	 wLKLy5PL/qjOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B3DD262B7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176896523358.24782.11182317201468931851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1618bdaf14a487ea7296f2872211786da205cea40d153a3ec58491255b2b04ef
Date: Wed, 21 Jan 2026 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768965233
