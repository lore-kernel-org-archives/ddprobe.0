Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B9F517C9
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705624697; cv=none; b=tpywF5crR0qNnnsurDo6JX+xjpUbggcuhLVRPVC+HKZfpLMZ90uRProtfCMD07ApQfHnT8oxhMU6QiWADf9ZzryCHwILZbHlt19bxlEnXCZ6O2nCDvpN6oUl1RgFJHhRAUikfa6VfGQ/2C0htPFGON8XL0L+XnPKIbeR5CqAnB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705624697; c=relaxed/simple;
	bh=/T7lhKN6fSgWR4QeHMicTPjnWCK+Sd+4m060D5WXgqc=;
	h=To:Subject:From:Message-Id:Date; b=sP3utRvMC049nFrEmVoIYSmhAiIbluI253bASNS3I7SqnzAmdiQsN9ctgwnHY1P9BfApyHIro1oofMh+Jv+KpUHKu1Ijsqvi5Xiv1fFJfTFJF/H6lXmzxWXoVPyQD2a9t5F6Q1LSiOuDRNimh05JXYQ9/KNQv1B+YI/EfVyRzAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oqDXCWko; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oqDXCWko"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A5F3C433F1
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705624696;
	bh=/T7lhKN6fSgWR4QeHMicTPjnWCK+Sd+4m060D5WXgqc=;
	h=To:Subject:From:Date:From;
	b=oqDXCWkoJ5V+mt6lHI5Ws0gVEyIUjwFnoyBX3daonmkYVeFCei/uztPLJfl+G/JQj
	 KNSFYVKiMbndv0vy+MBP41hfHx7Z2ju/euZFemq4m4v3bOAcjYLJXiDZg03J4cnT9V
	 o4Ul8+szzVe5Ll9idXtkriXO0zw52+Z+PDaMFaU2EIP0pvDUMfmo6iE1sSBgheqWv/
	 +MUoTk/7KovDH37YjOHlLPVd4YaUQQ4IAVlj5eOHL8oZ/wi6zePszSEfqz7ITTa5Br
	 KhyYxxVMts3SP46h/7TL/BenjGkV/duE3/KZ6GzE0xGkZZywnyq6cza/vNQeQjXudX
	 sfZkFu+TH8zyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 600CEC47DAF
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170562469638.3971.12017177551429754260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caef1942853b71fda8f7481e6d1138fadeba9f3550186c56b3a9f16e62d6e1eb
Date: Fri, 19 Jan 2024 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705624696
