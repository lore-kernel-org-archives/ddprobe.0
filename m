Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F07EBAD31
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710901097; cv=none; b=cDepV6IrWzf/NW6JoamuklK0nzmBKLpD1KwsDKML/wvP2WFlRp8IseIhyaeEQTKvgQZQjTlYrDckxss46bfkTxVNApxiIxwJc36UjlIb9TsVWsDiYEptsfmZ63QEHO4/LMSLTVOooXLfiVHnoOABcu6LPNgRmVyeSvTUswSQyRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710901097; c=relaxed/simple;
	bh=Ahiu2xjW1zDWIAf0w9XCPeI1jSKNi0PqAQOPP2yLL2k=;
	h=To:Subject:From:Message-Id:Date; b=J3BgJ2oD6khC9aG1R/zp5wzjBk3ChZbOzTmYXhdd1ZiDRwcTCQEbQstUx1Z/YNed3M3dq9X5AJGR3CEmzOBlRrq5WaKMeI4sE5zqF01MmC09a9xQLiy9IP/Fp9y3ahIca7dEvaJNhQcUOvLqvwYYigcOaemHrdje9lft/VOaA2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V6TLWxW6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V6TLWxW6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ED47C433C7
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710901096;
	bh=Ahiu2xjW1zDWIAf0w9XCPeI1jSKNi0PqAQOPP2yLL2k=;
	h=To:Subject:From:Date:From;
	b=V6TLWxW6GuvnI6LLF6V30xML9QxZUL3ulWllPBAky3WLHelfaGGy7oGpmNvsTpgxA
	 jjlDytgS7/38Ja1WT3h6ycoh5xe1kO26/4JGbPFKTNXfPQ0FUkUGkl8HuC+hTxE/w2
	 QY16oxd6xe5eXM1QVSeaYKlHIGV4R9eFHJVv4mRxHnl2RQMhgt829sbp13oR2rLYE3
	 bs4zsQN4GrkCEFj7g5NtvJgGlXWbZAK/K2zpN/um/E3WI3lE7oOXwqQTwSl0Hf7eUk
	 xkRqF++uLpyT1/8vgFMDD0usJlPT+6d564j0wcGy8AyxdN+URHREqfLl6rk8GafIOr
	 txpvaQvWNPX6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C753C54E68
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171090109637.11228.604942841791621905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 268c1387be4a514e6277a705d153ad2f1da68f5c2e3ffc9b45ecc23091e7acb7
Date: Wed, 20 Mar 2024 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710901096
