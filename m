Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE6B01C0DF3
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711727297; cv=none; b=nACbDd9hiVKriIr2yrPLf0b6ufWAkXmuG1OXU/5pmCAxfPWvXaa4OB/fF/x5039csMWxD3gGJqQDJcN0P4s9kqHHfApdXmozSGCkIqAzqqixWsSwuoKfxkeHGGJFrrCJrAwufukhdD1NBSNRByjcN8Fv0d4gnnkNQsirate5UyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711727297; c=relaxed/simple;
	bh=fz9Z+azyIq3dAdhACV2455ktGg9NCzRjmoIAgmoXfVg=;
	h=To:Subject:From:Message-Id:Date; b=Fd4Uc8greD5+IPe5pzqamf37VfZMWVVwZ3rvj7zr6s9pQpOGZXSZVrSu3l05bJOHH4NRIisaIWokomxAGuDkdoU1mdXqLWLnu1hKYxYhts71fkO5xg06vo6kahfKVRHEtHwW6OZGnlvzgVdpL0jiE0KhXDj2J8rfMXouEZIKBuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PPg7W8ax; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PPg7W8ax"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EA62C433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711727296;
	bh=fz9Z+azyIq3dAdhACV2455ktGg9NCzRjmoIAgmoXfVg=;
	h=To:Subject:From:Date:From;
	b=PPg7W8axq1+XXuwTHA/Mc8aT0XbSYs8P+vR+htH1mWFyBu4c7AiwhzALJuunL58IO
	 57Pi7I8zoNA3ioWz0QNBYBIue4HcVMVh/+KQccHBwW7B7QRxWF7Ebftqyd5J88PMhz
	 exDps3+XsE2+BsRpJW+0dc8CwHbSNnTBiDKvRFgcVMt4z7h55axwoDqKucYURQbr8g
	 LC42Vf0Xz49q0668Wt2A2qaV9iuMhk3VR4guHTiTqZNsoQffN/ymLAFAfF9Mg6K1RW
	 NFmpV+D9olGbPg7DoI7W+eJ/hnPhyUeOp8pgPoJw9E6JJPH3OVa0Xv9DMCAA9FW0FQ
	 QLbyCes6wZUNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F4D0CD11DD
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171172729638.23207.4773456702659361633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b1ccde99e0bef933b6aaf64d678f540927d99c4b5b952f0694dde80da1ea3b0
Date: Fri, 29 Mar 2024 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711727296
