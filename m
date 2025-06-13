Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CEE12727E8
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749817194; cv=none; b=EUoVEoC4iEfMqZ6QmZgCamrq3n+LRxXhx90MOKX/zZaEa7Q77jbtVkgWWpx5qhjqVIRItQ7+FuFEv0p+692kwneiGcZ52BfI3kOKH8Mmj/+QOuQaLLndz4r0BaNa2VjMNdenXZw+E226s/Gyg1Ef5zROYX/aF49gSTnR7/uisJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749817194; c=relaxed/simple;
	bh=vIkWz8S33BTzXD6NTFm5lQ3fVOe2Ib2YlBcl679+C1M=;
	h=To:Subject:From:Message-Id:Date; b=NBfTIEjuuP+fO207MZzr3NqA9yVyziWh184y1cxGRONiwfKfR+Dxi4dC8lUnJhWgX4zJ7UErHrbn6x/zMZIkDmMzOEpWE9tfbfzflej3b/+doeFl3fPywBjrSc56eUd/33mtHfyOBV0dZe9M6KLIzf7ug6rNPSYuvrVrPbpoqio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BfFlDZAm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BfFlDZAm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CD5C4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749817193;
	bh=vIkWz8S33BTzXD6NTFm5lQ3fVOe2Ib2YlBcl679+C1M=;
	h=To:Subject:From:Date:From;
	b=BfFlDZAm8BJLw/Rq/Er9ZtlN3WYagqc4+MPnRF5A+qrBhLBZQaYuXzB907DS+hhUq
	 kslj8mZLtL/58efzXZKI32d45xmgp6TgGmInhauqNGO9yzcHqaE/JlDcZ2V4XhJ5A4
	 onuKufc3ubyNu77OIoR5JMSOnp/tc6L+z1Jo4CiMyXw71lhPsqwdbNid85vpBgCdvV
	 nI+T0LyzW4sajy1Ag54hvDxir6tbU85NFzjUDqdsj00DDR9m0U729dfzXHEiAdM/+Q
	 xkOs7tkaEgJ6xb2paf9C3yRA/vyLTN/fBoUgdN2TTbMwakDG/hL/Gw5oZQ+v671LcN
	 Y5jBaw9oghevQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916D5C61DB2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174981719358.27047.8861203498981930739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 796298f00afd3008aca8f03946bb75e52a26ceac367a6dd261bc32746b5c5aea
Date: Fri, 13 Jun 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749817193
