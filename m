Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E712459F1
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752491394; cv=none; b=E/fHdlrkrIFsrKdRQnS4fEVefaHfwcV24T7R+PpUpMd4saRrjW3fDwW6WAowN8SA4SjMs0VibE/WUPz5svtqc5odX/vvY0X0WxTEFEmBnJ6ouQZC87jq2c9FJhroPJm4eBklOkwGT4pJ3Ev/1+h5Vo1IkE7wHT0SyUFZvshHghs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752491394; c=relaxed/simple;
	bh=gZ5sZKyVX/YM5jHfBskUXVSmTYk84+XLOwWxMQryiOA=;
	h=To:Subject:From:Message-Id:Date; b=Fgg0DSFDNb3Vgol5aj/OF6w60zGvRPfSq/Y+G7htPEX2ykQkTDGDJAPehKR0MLCPxWmcrEijj6rOTk7lZRoS359+XuPBC9Edsupggra5vOpkJQcZMJc2G35jmIzcpg2LQFGo8WEDJrHvRBbIGyDlv+qldcnOfrrytDHc7+jOh4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JqProVPa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JqProVPa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3458C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752491393;
	bh=gZ5sZKyVX/YM5jHfBskUXVSmTYk84+XLOwWxMQryiOA=;
	h=To:Subject:From:Date:From;
	b=JqProVPaTfLNtF8PNCA5u6iEGHOAfsXOV2nYBzcV0ndnNvr0JJXVKRGZRHdH5E1qU
	 LdBs5N8xXYt3TTfouqsaeYgvY4pEk44iS00B18+4+KogCy0BcGyWVMQzqPdRxOwbmq
	 kx1UwZoKCPvCL/xxdvlIL19z7ENiTs9B5rbXj7TBwrZH6mNUT55KaKXOUjbi0d31lI
	 Z1HE57P6vI4RNvOyayTjrwh/8CZZF/JcQnjPVwftFv7dh68nRpsB/3Rs4V9Ylr12QV
	 um5qyiDNTKgw6pQDqyuZmdL5tjezyRDW+jOBIxxzFj5arf3hvp+VHrtE2ugLn6VfwL
	 BgHnqBSkTlK5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94607C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175249139359.1811.7030848184084511746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bd3995340c1b21fe14e60517d007d07cbd427f7e12d2f14a7f7100450b3bba7
Date: Mon, 14 Jul 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752491393
